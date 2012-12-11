note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_PLAYER class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_PLAYER

inherit
	EQA_TEST_SET

feature
	player: CU_PLAYER

feature -- Test routines

	test_add_card_to_hand
			-- Test which add a card to the hand of the player
		note
			testing: "covers/{CU_PLAYER}.add_card_to_hand"
			testing: "user/CU"
		local
			card: CU_CARD
			--connection: SOCKET
			count_cards: INTEGER
		do
			--connection.make_socket
			--create player.make ("Player", 2, connection)
			create player.make ("Player", 2)
			count_cards := player.hand.count
			player.add_card_to_hand (card)
			assert ("Added a card to the hand of player:", player.hand.count = count_cards + 1)
		end

	test_move_to_position
			-- Test which moves the player to the given square
		note
			testing: "covers/{CU_PLAYER}.move_to_position"
			testing: "user/CU"
		local
			a_position: CU_COORDINATE
			current_position: CU_COORDINATE
		do
			create player.make ("Player1", 1)
			current_position := player.position
			player.move_to_position (12, 15)
			assert ("The position of player was changed:", player.position /= current_position)
		end

	test_add_available_moves
			-- Test which sets the available moves of player
		note
			testing: "covers/{CU_PLAYER}.add_available_moves"
			testing: "user/CU"
		local
			moves: INTEGER
			current_available_moves: INTEGER
			--connection: SOCKET
		do
			--connection.make_socket
			--create player.make ("Player", 0, connection)
			create player.make ("Player", 0)
			current_available_moves := player.available_moves
			player.set_available_moves (moves)
			assert ("The available moves of player was changed:", player.available_moves = current_available_moves + 1)
		end

	test_decrease_moves_0
			-- Test which decrease the available moves of player
		note
			testing: "covers/{CU_PLAYER}.decrease_moves"
			testing: "user/CU"
		local
			moves: INTEGER
			current_available_moves: INTEGER
			--connection: SOCKET
		do
			--connection.make_socket
			--create player.make ("Player", 0, connection)
			create player.make ("Player1", 0)
			current_available_moves := player.available_moves
			player.decrease_moves
			assert ("The available moves of player was decreased:", player.available_moves = current_available_moves - 1)
		end

	test_decrease_moves_1
			-- Test which decrease the available moves of player to 0
		note
			testing: "covers/{CU_PLAYER}.decrease_moves"
			testing: "user/CU"
		local
			moves: INTEGER
			--connection: SOCKET
		do
			--connection.make_socket
			--create player.make ("Player", 0, connection)
			create player.make ("Player1", 0)
			if (player.available_moves > 0) then
				player.decrease_moves
			end
			assert ("The available moves of player is 0:", player.available_moves = 0)
		end

	test_wipe_moves
			-- Test which sets the available moves of player to 0
		note
			testing: "covers/{CU_PLAYER}.decrease_moves"
			testing: "user/CU"
		local
			moves: INTEGER
			--connection: SOCKET
		do
			--connection.make_socket
			--create player.make ("Player", 0, connection)
			create player.make ("Player1", 0)
			player.wipe_moves
			assert ("The available moves of player was seted to 0:", player.available_moves = 0)
		end

end


