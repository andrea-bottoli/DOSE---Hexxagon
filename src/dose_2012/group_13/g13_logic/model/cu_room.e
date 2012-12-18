note
	description: "Represents a room on the board"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ROOM

inherit
	CU_SQUARE undefine is_equal end
	ANY redefine is_equal end

create
	make

feature --Access
	room_id: INTEGER --refers to one of the constants in CU_ENUM_ROOMS

	pawns: ARRAYED_SET[INTEGER]
		--the set of pawns NOT present in this room
		attribute
			ensure
				not_negative: pawns.count>=0
				upper_limit: pawns.count<=6
		end

	player_on: ARRAYED_SET[CU_PLAYER]
		--the set of players in this room
		attribute
			ensure
				not_void: player_on /= void
				upper_limit: player_on.count<=6
		end

	weapons: ARRAYED_SET[INTEGER]
		--the set of weapons in this room
		attribute
			ensure
				not_void: weapons /= void
				upper_limit: weapons.count<=6
		end

	doors: ARRAY[CU_COORDINATE]
		--The corridor squares to exit this room

	secret_passage: CU_ROOM
		--the room to which the secret passage leads to

feature {CU_BOARD} --constructor
	make(a_id: INTEGER; a_doors:ARRAY[CU_COORDINATE]; a_passage:CU_ROOM)
		require
			valid_id: a_id>=0 and a_id<=8
			valid_doors: a_doors/= void
		do
			room_id:=a_id
			doors:=a_doors
			if a_passage /= void then
				secret_passage:=a_passage
			end
			create weapons.make (0)
			create player_on.make (0)
			create pawns.make (0)
		ensure
			valid_doors: doors/=void
			valid_weapons: weapons/=void
			valid_players: player_on/= void
		end

	set_secret_passage(a_passage: CU_ROOM)
		--Secret passage can't be set during make() we need to set it separately
		require
			a_passage/=void
		do
			secret_passage:=a_passage
		end

feature --Insertion
	player_enters(a_player: CU_PLAYER)
		--Make a player enter the room
		require
			pl_not_void: a_player /= void
			pl_not_duplicate: not player_on.has(a_player)
			players_limit: player_on.count < 6
		do
			player_on.extend (a_player)
			insert_pawns(a_player.pawn)
		ensure
			one_more_player: player_on.count = old player_on.count +1
			weapons_not_change: weapons.count = old weapons.count
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage = old secret_passage
			doors_not_change: doors.is_equal(old doors)
		end

	weapon_in(a_weapon: INTEGER)
		--put a weapon in the room
		require
			valid_weapon: a_weapon>=0 and a_weapon<=5
			weapon_no_duplicate: not weapons.has(a_weapon)
			weapons_limit: weapons.count < 6
		do
			weapons.extend (a_weapon)
		ensure
			one_more_weapon: weapons.count = old weapons.count +1
			players_not_change: player_on.count = old player_on.count
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage = old secret_passage
			pawn_not_change: pawns.count = old pawns.count
			doors_not_change: doors.is_equal(old doors)
		end

	insert_pawns(a_pawn: INTEGER)
		--put a pawn in this room
		require
			valid_pawn: a_pawn>=0 and a_pawn<6
		do
			pawns.extend (a_pawn)
		ensure
			pawn_in: pawns.has(a_pawn)
			players_not_change: player_on.count = old player_on.count
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage = old secret_passage
			doors_not_change: doors.is_equal(old doors)
		end

feature --Removal
	player_exits(a_player: CU_PLAYER)
		--make a player exit the room
		require
			player_is_in: player_on.has(a_player)
			pl_not_void: a_player /= void
		do
			player_on.prune (a_player)
			remove_pawns (a_player.pawn)
		ensure
			player_is_out: not player_on.has(a_player)
			one_less_player: player_on.count = old player_on.count -1
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage = old secret_passage
			doors_not_change: doors.is_equal(old doors)
		end

	weapon_out(a_weapon:INTEGER)
		--set the weapon as out of this room
		require
			valid_weapon: a_weapon>=0 and a_weapon<=5
			weapon_is_in: weapons.has(a_weapon)
		do
			weapons.prune (a_weapon)
		ensure
			weapon_is_out: not weapons.has(a_weapon)
			one_less_weapon: weapons.count = old weapons.count -1
			room_not_change: room_id = old room_id
			s_pass_not_change: secret_passage = old secret_passage
			pawn_not_change: pawns.count = old pawns.count
			doors_not_change: doors.is_equal(old doors)
		end

	remove_pawns(a_pawn: INTEGER)
		--put a pawn in this room
		require
			valid_pawn: a_pawn>=0 and a_pawn<6
			pawn_in: pawns.has (a_pawn)
		do
			pawns.prune (a_pawn)
		ensure
			pawn_not_in: not pawns.has (a_pawn)
			players_not_change: player_on.count = old player_on.count
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage = old secret_passage
			doors_not_change: doors.is_equal(old doors)
		end

feature --Comparison
	is_equal(other: like Current):BOOLEAN
		do
			result:=current.room_id=other.room_id
		end
end
