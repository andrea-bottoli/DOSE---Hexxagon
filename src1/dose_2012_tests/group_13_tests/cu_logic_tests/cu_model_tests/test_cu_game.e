note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_GAME class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_GAME

inherit
	EQA_TEST_SET

feature
	game: CU_GAME

feature -- Test routines

	test_next_turn
			-- Test used to pass the turn to the next player
		note
			testing: "covers/{CU_GAME}.next_turn"
			testing: "user/CU"
		local
			player1: CU_PLAYER
			player2: CU_PLAYER
			current_player_pass_turn: CU_PLAYER
		do
			create game.make
			create player1.make ("Player1", 2)
			create player2.make ("Player2", 0)
			current_player_pass_turn := game.current_player
			if (game.current_status = game.constants.game_states.suggesting) then
				game.next_turn
			end
			assert ("The turn pass to the next player:", current_player_pass_turn /= game.current_player)
		end

	test_generate_solution
			-- Test used to generate the solution of the match
		note
			testing: "covers/{CU_GAME}.generate_solution"
			testing: "user/CU"
		do
			create game.make

			if (game.current_status = game.constants.game_states.starting) then
				game.generate_solution
			end
			assert ("The current game generates a solution:", (game.solution.count = 3))
		end

	test_remove_player
			-- Test used to remove a specific player from the game
		note
			testing: "covers/{CU_GAME}.remove_player"
			testing: "user/CU"
		local
			player: CU_PLAYER
		do
			create game.make
			if (game.active_players.has (player)) then
				game.remove_player (player)
			end
			assert ("The player was removed from the game:", not game.active_players.has (player))
		end

	test_throw_dices
			-- Test used to throw the dices on the game
		note
			testing: "covers/{CU_GAME}.throw_dices"
			testing: "user/CU"
		local
			index: INTEGER
			p_cards: BOOLEAN
		do
			create game.make
			if (game.current_status = game.constants.game_states.dices) then
				game.current_player.set_available_moves (game.throw_dices)
			end
			assert ("The available moves to the player was seted:", game.current_status = game.constants.game_states.moving)
		end

	-- FIX METHOD IN THE CLASS --> player_teleport(suspect,weapon,room)
	test_player_transport
			-- Test used to moves a player to the room, effect of a suggestion
		note
			testing: "covers/{CU_GAME}.player_transport"
			testing: "user/CU"
		local
			suspect_sugg: INTEGER
			--weapon_sugg: INTEGER
			room_sugg: INTEGER
			p_moved: BOOLEAN
		do
			create game.make
			if (game.current_status = game.constants.game_states.suggesting) then
				game.player_teleport (suspect_sugg, room_sugg)
				--game.player_teleport (suspect_sugg, weapon_sugg, room_sugg)
				p_moved := True
			end
			assert ("The player was moved to the room:", p_moved)
		end

end


