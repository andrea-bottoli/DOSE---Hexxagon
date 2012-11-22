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
			hand_not_empty: Result.count > 0
		end
	position: CU_SQUARE
			-- the square on which tha player's pawn is
		attribute
		ensure
			player_is_in_the_board: Result /= void
		end

	name: STRING
		--name of the player
		attribute
		ensure
			Result_not_void: Result /= void
		end

	connection: SOCKET
		--socket connection...we don't know if it is needed
		do
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
		do
		ensure
			Result_not_negative: Result >= 0
		end

feature {CU_GAME} --Constructor
	make(a_name: STRING; a_pawn: INTEGER)--; a_connection: SOCKET)
		require
			valid_name: a_name/=void and a_name/=""
			valid_pawn: a_pawn>=0 and a_pawn<=5
			--valid_conn: a_connection/=void --Don't know if this is useful, depends on the NET component
		do
		ensure
			valid_hand: hand/= void
		end

feature {CU_GAME, CU_LOGIC, EQA_TEST_SET} --Operations
	add_card_to_hand(a_card: CU_CARD)
		--Adds a card to the hand of the player
		require
			card_not_void: a_card /= void
		do
		ensure
			hand_one_more: hand.count = old hand.count +1
		end

	move_to_position(a_position: CU_SQUARE)
		--Moves the player to the given square
		require
			valid_square: a_position /= void
		do
		ensure
			player_moved: position=a_position
		end

	add_available_moves(a_moves: INTEGER)
		--sets the available moves attribute
		require
			valid_moves: a_moves>0
		do
		ensure
			added_moves: available_moves= old available_moves + a_moves
		end

	decrease_moves
		--does -1 on the available_moves attribute
		require
			is_available: available_moves>0
		do
		ensure
			one_less: available_moves= old available_moves - 1
		end

	wipe_moves
		--Sets available moves to 0
		do
		ensure
			zero_moves: available_moves = 0
		end
end
