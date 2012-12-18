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
			create game.make_with_controller (controller,"192.10.1.674")
			print(game.get_ip_local)
			assert ("The IP /= Void:", game.get_ip_local /= Void)
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
			create game.make_with_controller (controller,"192.10.1.674")
			create token_t.make ("Horse")
			create player_t.make (5, "Player")
			game.select_tokens (player_t, token_t)
			assert ("The token assigned to player 5 is Horse: ", player_t.token.l_name.is_equal("Horse"))
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
			create game.make_with_controller (controller,"192.10.1.674")
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
			create game.make_with_controller (controller,"192.10.1.674")
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
			create game.make_with_controller (controller,"192.10.1.674")
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
			create game.make_with_controller (controller,"192.10.1.674")
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
			create game.make_with_controller (controller,"191.190.54.89")
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
			create game.make_with_controller (controller,"192.10.1.674")
			create player_t.make (005, "Player")
			cell := game.roll_dice (player_t)
			assert("cell is invalid",cell /= Void)
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
			bank: G1_BANK
		do
			create controller.make
			create game.make_with_controller (controller,"192.10.1.674")
			create player_t.make (5, "Player")
			create bank.make
			bank.withdraw_money (1500)
			create deed_t.make_deed (10, 1, "cell 1")
			game.buy (player_t, deed_t)
			assert("Player 5 has bought deed", player_t.properties.has(deed_t))
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
			create game.make_with_controller (controller,"192.10.1.674")
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
			create game.make_with_controller (controller,"192.10.1.674")
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
			create game.make_with_controller (controller,"192.10.1.674")
			create player_t.make (005, "Player")
			create deed_t.make_deed (10, 1, "cell 1")
			game.mortgage (player_t, deed_t)
				--assert("Player 5 has bought deed")
		end

	test_trade
		note
			testing: "covers/{G1_LOGIC_CLIENT}.trade"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			controller: G1_UI_CONTROLLER
			l_player1, l_player2: G1_PLAYER
			l_p1_deed, l_p2_deed: G1_DEED
			l_p1_card, l_p2_card: G1_CARD
		do
			create controller.make
			create game.make_with_controller (controller,"192.10.1.674")
			create l_player1.make (1, "Player 1")
			create l_p1_deed.make_deed (100, 1, "Deed 1")
			--create l_p1_card.make_card (16, "Get out of jail", 1)
			l_player1.add_property (l_p1_deed)
			--l_player1.increment_jail_cards
			create l_player2.make (2, "Player 2")
			--create l_p2_deed.make_deed (100, 2, "Deed 2")
			create l_p2_card.make_card (17, "Get out of jail", 1)
			--l_player2.add_property (l_p2_deed)
			l_player2.increment_jail_cards
			game.trade (l_player1, l_p1_deed, Void, l_player2, Void, l_p2_card)
			assert("Valid items in player 1", l_player1.jail_cards.is_equal (1))
			assert("Valid items in player 2", l_player2.properties.has (l_p1_deed))
		end

	test_build
		note
			testing: "covers/{G1_LOGIC_CLIENT}.build"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player: G1_PLAYER
			street: G1_STREET
			controller: G1_UI_CONTROLLER
			rent_values: ARRAY [INTEGER]
			i, j: INTEGER
		do
			create controller.make
			create player.make (1, "Player 1")
			create game.make_with_controller (controller,"192.10.1.674")
			create rent_values.make_filled (0, 1, 6)
			rent_values.item (2) := 10
			create street.make_street (1, "street 1", 100, rent_values, 50)
			street.set_owner (player)
			game.build (player, street)
			assert("House built", street.l_number_of_houses.is_equal (1))
		end

	test_finish_turn
		note
			testing: "covers/{G1_LOGIC_CLIENT}.finish_turn"
			testing: "user/G1"
		local
			game: G1_LOGIC_CLIENT
			player_t: G1_PLAYER
			controller: G1_UI_CONTROLLER
			l_finish_turn: G1_MESSAGE_FINISH
		do
			create controller.make
			create game.make_with_controller (controller,"192.10.1.674")
			create player_t.make (1, "Player 1")
			create l_finish_turn.make_finish (player_t.id_player)
			game.finish_turn(player_t)
			assert("Player has finished his turn", l_finish_turn.player_id.is_equal (1))
		end
end
