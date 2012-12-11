note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HX_AI_GAME

inherit
	EQA_TEST_SET

feature -- Test routines

	game: HX_L_LOGIC
	gui: HX_G_AI_DUMMYMANAGER

	test_hx_ai_game
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "covers/{HX_A_AI}"
			testing: "user/HX"
		local
			l_path: STRING
		do
			-- Initialize system.
			create gui.make ()
			game := gui.game

			across game.templates as l_template
			loop
				if l_template.item.item(1).out.is_equal ("testing") then
					l_path := l_template.item.item(2).out
				end
			end
			-- Try to play.
			game.start_single_player ("DAIManager", 1, l_path)

			-- Check status.
			assert("Game is finished.", gui.finished = TRUE)
			assert("Game was not stopped.", gui.stopped = TRUE)
		end

end


