note
	description: "Summary description for {TEST_G1_LOGIC_CLIENT}."
	author: "Jiang Wu - MILANO7"
	date: "21/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_G1_LOGIC_CLIENT

inherit

	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
		do
		end

	on_clean
		do
		end

feature -- Test routines

	test_get_ip -- Test the function get_ip_local,
		note
			testing: "covers/{G1_LOGIC_CLIENT}.get_ip_local"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			print(game.get_ip_local)
			assert ("The IP is equal 1.2.3.4:", game.get_ip_local.is_equal ("1.2.3.4"))
		end

	test_select_tokens
		note
			testing: "covers/{G1_LOGIC_CLIENT}.select_tokens"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			token_t: G1_TOKEN
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create token_t.make ("Horse")
			create player_t.make (005, "Player")
			game.select_tokens (player_t, token_t)
			assert ("The token assigned to player 5 is Horse: ", token_t.l_player.get_id_player.is_equal (player_t.get_id_player))
		end

	test_join_game
		note
			testing: "covers/{G1_LOGIC_CLIENT}.join_game"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			--game.join_game (player_t)
				-- assert ("Player 5 joined the game") -- How I check if he/she is joined?
		end

	test_new_game
		note
			testing: "covers/{G1_LOGIC_CLIENT}.new_game"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			--game.new_game (player_t)
				-- assert("Player 5 has created a new game") -- How I check if he/she is joined/created?
		end

	test_game_rules
		note
			testing: "covers/{G1_LOGIC_CLIENT}.game_rules"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
			rules : STRING
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			rules := game.game_rules ()
				-- assert("") -- How I check this function?
		end

	test_exit
		note
			testing: "covers/{G1_LOGIC_CLIENT}.exit"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			--  game.exit (player_t)
				-- assert("") -- How I check if the player is out?
		end

	test_select_game
		note
			testing: "covers/{G1_LOGIC_CLIENT}.select_game"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			--game.select_game (player_t)
				-- assert("") -- How I check it?
		end

	test_roll_dice
		note
			testing: "covers/{G1_LOGIC_CLIENT}.new_game"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			cell : G1_CELL
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			cell := game.roll_dice (player_t)
				-- assert("") -- ???
		end

	test_buy
		note
			testing: "covers/{G1_LOGIC_CLIENT}.buy"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			deed_t: G1_DEED
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (5, "Player")
			create deed_t.make_deed (10, 1, "cell 1")
			game.buy (player_t, deed_t)
				--assert("Player 5 has bought deed")
		end

	test_auction
		note
			testing: "covers/{G1_LOGIC_CLIENT}.auction"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			deed_t: G1_DEED
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			create deed_t.make_deed (10, 1, "cell 1")
			game.auction (player_t, deed_t, 10)
				--assert("Player 5 has bought deed")
		end

	test_mortgage
		note
			testing: "covers/{G1_LOGIC_CLIENT}.mortgage"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			deed_t: G1_DEED
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			create deed_t.make_deed (10, 1, "cell 1")
			game.mortgage (player_t, deed_t)
				--assert("Player 5 has bought deed")
		end

	test_unmortgage
		note
			testing: "covers/{G1_LOGIC_CLIENT}.unmortgage"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			deed_t: G1_DEED
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			create deed_t.make_deed (10, 1, "cell 1")
			game.mortgage (player_t, deed_t)
				--assert("Player 5 has bought deed")
		end

	test_finish_turn
		note
			testing: "covers/{G1_LOGIC_CLIENT}.finish_turn"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			game.finish_turn (player_t)
		end

	test_lock_player
		note
			testing: "covers/{G1_LOGIC_CLIENT}.lock_player"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			game.lock_player (player_t)
		end

	test_unlock_player
		note
			testing: "covers/{G1_LOGIC_CLIENT}.unlock_player"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
		do
			create controller.make
			create game.make_with_controller ("1.2.3.4", controller)
			create player_t.make (005, "Player")
			game.unlock_player (player_t)
		end

end
