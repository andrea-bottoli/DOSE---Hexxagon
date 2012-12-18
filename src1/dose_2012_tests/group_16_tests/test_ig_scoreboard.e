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
			a_player     : IG_AI_PLAYER
		do
			create a_scoreboard.make
			a_player.set_scoreboard (a_scoreboard)
			a_scoreboard.add_color_score ("r", 2)
			a_scoreboard.add_color_score ("r", 3)
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
		do
			--create a_logic
			create a_player.make_ai_player (a_logic, 2)
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
			a_color := "r"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "g"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "b"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "o"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "i"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "p"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )
			a_color := "w"
			assert("Color is valid:", a_scoreboard.is_color_valid (a_color) = TRUE )

		end

end


