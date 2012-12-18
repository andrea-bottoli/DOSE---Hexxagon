note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"

	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_AI_PLAYER

inherit
	EQA_TEST_SET

feature {NONE} -- Events

feature -- Test routines

	test_ai_player_move
			-- Test the validity of an AI player's next move
		note
			testing:  "covers/{IG_AI_PLAYER}"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER
			l_logic: IG_LOGIC
			l_move: IG_MOVE
			l_game_settings: IG_GAME_SETTINGS
		do
			create l_game_settings
			l_game_settings.set_computer_level (1)
			l_game_settings.set_total_players (2)
			l_game_settings.set_computer_players (1)
			l_game_settings.set_user_name ("Host")

			create l_logic.make_with_host_settings(l_game_settings, agent do end, agent do  end, agent do_nothing_with_player)
			across l_logic.players as l_cursor loop
				if attached {IG_AI_PLAYER} l_cursor.item as ai_player then
					l_player := ai_player
				end
			end
			check l_player /= Void end

		l_move := l_player.next_move
			assert ("User Player Created", l_logic.user_player.name.is_equal ("Host"))
		end

	test_ai_player_moves_all
			-- Test the validity of an AI player's next move
		note
			testing:  "covers/{IG_AI_PLAYER}"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER
			l_logic: IG_LOGIC
			l_move: IG_MOVE
			i: INTEGER
			l_settings: IG_GAME_SETTINGS
		do
			create l_settings
			l_settings.set_computer_level (2)
			l_settings.set_total_players (2)
			l_settings.set_computer_players (1)
			l_settings.set_host_address ("127.0.0.1")
			l_settings.set_user_name ("Eve")
			create l_logic.make_with_host_settings (l_settings, agent do  end, agent do  end, agent do_nothing_with_player)
			across l_logic.players as l_cursor loop
				if attached {IG_AI_PLAYER} l_cursor.item as ai_player then
					l_player := ai_player
				end
			end
			check l_player /= Void end

			from
				i := 0
			until
				i = 10
			loop
				i := i + 1
				l_move := l_player.next_move
				assert ("AI move is valid", l_logic.gameboard.is_move_valid (l_move))
			end
		end

	test_ai_player_name
			-- Test the name of the AI player
		note
			testing:  "covers/{IG_AI_PLAYER}"
			testing:  "user/IG"
		local
			l_player: IG_AI_PLAYER
			l_logic: IG_LOGIC
			l_settings: IG_GAME_SETTINGS
		do
			create l_settings
			l_settings.set_host_address ("127.0.0.1")
			l_settings.set_user_name ("Eve")
			l_settings.set_total_players (2)
			l_settings.set_computer_players (1)
			l_settings.set_computer_level (1)
			create l_logic.make_with_host_settings (l_settings, agent do  end, agent do  end, agent do_nothing_with_player)
			create l_player.make_ai_player (l_logic, 2)
			assert ("AI name not set yet", l_player.name = Void)
			l_player.set_name ("Wall-e")
			assert ("AI name player set", l_player.name.is_equal ("Wall-e"))
		end

	do_nothing_with_player (a_player : IG_PLAYER)
		do

		end
end





