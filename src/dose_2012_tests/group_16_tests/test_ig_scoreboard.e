note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_SCOREBOARD

inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_SCOREBOARD_add_color_score
			-- New test routine
		note
			testing:  "covers/{IG_SCOREBOARD}.add_color_score"
			testing:  "user/IG"
		local
			a_scoreboard : IG_SCOREBOARD
			a_player     : IG_NETWORK_PLAYER
		do
			create a_scoreboard.make
			create a_player.my_make
			a_player.set_name ("ABC")
			a_scoreboard.add_color_score ("r", 2)
			a_scoreboard.add_color_score ("r", 3)
			a_player.set_scoreboard (a_scoreboard)
			-- Here I suppose color r is at index 1 in the player_score
			assert("Score increased: ", a_scoreboard.points_for_color ("r")=5)
		end

	test_IG_SCOREBOARD_make
			-- New test routine
		note
			testing:  "covers/{IG_SCOREBOARD}.make"
			testing:  "user/IG"
		local
			a_player: IG_AI_PLAYER
			a_scoreboard: IG_SCOREBOARD
			a_logic: IG_LOGIC
			a_game_settings: IG_GAME_SETTINGS
		do
			create a_game_settings
			a_game_settings.set_user_name ("A user")
			a_game_settings.set_computer_level (2)
			a_game_settings.set_total_players (2)
			a_game_settings.set_computer_players (1)
			create a_logic.make_with_host_settings (a_game_settings, agent do end, agent do end, agent do_nothing_with_scoreboard)
			across a_logic.players as l_cursor loop
				if attached {IG_AI_PLAYER} l_cursor.item as ai_player then
					a_player := ai_player
				end
			end
			check a_player /= Void end
			create a_scoreboard.make
			a_player.set_scoreboard (a_scoreboard)
			assert("Make is correct: ", a_player.scoreboard = a_scoreboard)
		end

	test_IG_SCOREBOARD_is_color_valid
			-- New test routine
		note
			testing:   "covers/{IG_SCOREBOARD}.is_color_valid"
			testing:   "user/IG"
		local
			a_scoreboard : IG_SCOREBOARD
			a_color      : STRING
		do
			create a_scoreboard.make
			a_color := "r"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "g"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "b"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "o"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "y"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "p"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
				-- A color that does not exist
			a_color := "w"
			assert("Color is valid:", not a_scoreboard.is_color_valid (a_color))

		end

	do_nothing_with_scoreboard(a_player : IG_PLAYER)
		do

		end

end


