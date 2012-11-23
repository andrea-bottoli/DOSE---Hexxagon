note
	description: "Represents a room on the board"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ROOM

inherit
	CU_SQUARE
create
	make

feature --Access
	room_id: INTEGER --refers to one of the constants in CU_ENUM_ROOMS

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

	doors: ARRAY[CU_CORRIDOR]
		--The corridor squares to exit this room

	secret_passage: CU_ROOM
		--the room to which the secret passage leads to

feature {CU_BOARD} --constructor
	make(a_id: INTEGER; a_doors:ARRAY[CU_CORRIDOR]; a_passage:CU_ROOM)
		require
			valid_id: a_id>=0 and a_id<=8
			valid_doors: a_doors/= void
		do
		ensure
			valid_doors: doors/=void
			valid_weapons: weapons/=void
			vaild_players: player_on/= void
		end

	set_secret_passage(a_passage: CU_ROOM)
		--Secret passage can't be set during make() we need to set it separately
		require
			a_passage/=void
		do

		end

feature --Insertion
	player_enters(a_player: CU_PLAYER)
		--Make a player enter the room
		require
			pl_not_void: a_player /= void
			pl_not_duplicate: not player_on.has(a_player)
			players_limit: player_on.count < 6
		do
		ensure
			one_more_player: player_on.count = old player_on.count +1
			weapons_not_change: weapons.count = old weapons.count
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage.room_id = old secret_passage.room_id
			doors_not_change: doors.is_equal(old doors)
		end

	weapon_in(a_weapon: INTEGER)
		--put a weapon in the room
		require
			valid_weapon: a_weapon>=0 and a_weapon<=5
			weapon_no_duplicate: not weapons.has(a_weapon)
			weapons_limit: weapons.count < 6
		do
		ensure
			one_more_weapon: weapons.count = old weapons.count +1
			players_not_change: player_on.count = old player_on.count
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage.room_id = old secret_passage.room_id
			doors_not_change: doors.is_equal(old doors)
		end

feature --Removal
	player_exits(a_player: CU_PLAYER)
		--make a player exit the room
		require
			player_is_in: player_on.has(a_player)
			pl_not_void: a_player /= void
		do
		ensure
			player_is_out: not player_on.has(a_player)
			one_less_player: player_on.count = old player_on.count -1
			room_not_change: room_id =old room_id
			s_pass_not_change: secret_passage.room_id = old secret_passage.room_id
			doors_not_change: doors.is_equal(old doors)
		end

	weapon_out(a_weapon:INTEGER)
		--set the weapon as out of this room
		require
			valid_weapon: a_weapon>=0 and a_weapon<=5
			weapon_is_in: weapons.has(a_weapon)
		do
		ensure
			weapon_is_out: not weapons.has(a_weapon)
			one_less_weapon: weapons.count = old weapons.count -1
			room_not_change: room_id = old room_id
			s_pass_not_change: secret_passage.room_id = old secret_passage.room_id
			doors_not_change: doors.is_equal(old doors)
		end
end