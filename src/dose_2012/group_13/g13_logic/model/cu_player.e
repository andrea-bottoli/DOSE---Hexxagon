note
	description: "Represents a player in the game"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_PLAYER

create
	make

feature  -- Access

	hand: LINKED_LIST [CU_CARD]
			-- the player's cards
		attribute
		ensure
			hand_not_void: Result /= void
		end
	position: CU_COORDINATE
			-- the square on which the player's pawn is

	name: STRING
		--name of the player
		attribute
		ensure
			Result_not_void: Result /= void
		end

	pawn: INTEGER
		--returns player's pawn, refers to one of the constants in CU_ENUM_SUSPECTS
		attribute
		ensure
			valid_range: pawn>=0 and pawn<=5
		end

	available_moves: INTEGER
		--returns the remaining number of moves a player can make in this turn
		attribute
		ensure
			Result_not_negative: Result >= 0
		end

feature {CU_GAME} --Constructor
	make(a_name: STRING; a_pawn: INTEGER)
		require
			valid_name: a_name/=void and a_name/=""
			valid_pawn: a_pawn>=0 and a_pawn<=5
		do
			name:=a_name
			pawn:=a_pawn
			create hand.make
			position:=void
		ensure
			valid_hand: hand/= void
		end

feature {CU_GAME, EQA_TEST_SET}--Access
	is_in_hand(a_id: INTEGER; a_type: INTEGER):BOOLEAN
		do
			result:=false
			from
				hand.start
			until
				hand.off or result
			loop
				inspect
					a_type
				when 1 then
					if attached {CU_ROOM_CARD} hand.item as l_room then
						if l_room.room=a_id then
							result:=true
						end
					end
				when 2 then
					if attached {CU_SUSPECT_CARD} hand.item as l_sus then
						if l_sus.suspect=a_id then
							result:=true
						end
					end
				when 3 then
					if attached {CU_WEAPON_CARD} hand.item as l_wea then
						if l_wea.weapon=a_id then
							result:=true
						end
					end
				end
				hand.forth
			end
		end

feature {CU_GAME, CU_LOGIC, EQA_TEST_SET} --Operations
	add_card_to_hand(a_card: CU_CARD)
		--Adds a card to the hand of the player
		require
			card_not_void: a_card /= void
		do
			hand.extend (a_card)
		ensure
			hand_one_more: hand.count = old hand.count +1
		end

	move_to_position(a_x, a_y: INTEGER)
		--Moves the player to the given square
		require
			valid_square: a_x>0 and a_y>0
		do
			create position.make(a_x,a_y)
		end

	move_to_coordinate(a_coord: CU_COORDINATE)
		--Same of move_to_position, with different arguments
		require
			valid_coord: a_coord /= void
		do
			position:= a_coord.twin
		end

	set_available_moves(a_moves: INTEGER)
		--sets the available moves attribute
		require
			valid_moves: a_moves>0
		do
			available_moves:=a_moves
		ensure
			added_moves: available_moves= a_moves
		end

	decrease_moves
		--does -1 on the available_moves attribute
		require
			is_available: available_moves>0
		do
			available_moves:=available_moves-1
		ensure
			one_less: available_moves= old available_moves - 1
		end

	wipe_moves
		--Sets available moves to 0
		do
			available_moves:=0
		ensure
			zero_moves: available_moves = 0
		end
end
