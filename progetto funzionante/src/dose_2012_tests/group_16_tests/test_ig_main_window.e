note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the IG_MAIN_WINDOW class of the Ingenious game.
	]"
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_MAIN_WINDOW

inherit
	EQA_TEST_SET

feature -- Test Routines

	test_ig_main_window
			-- Test if the main window appears right
		note
			testing:  "covers/{IG_MAIN_WINDOW}.show"
		local
			l_main_window: MAIN_WINDOW
			l_ig_main_window: IG_MAIN_WINDOW
				-- a local variable for the window
		do
			create l_main_window.make_and_launch
			create l_ig_main_window.make (l_main_window)
			l_ig_main_window.show()
			assert ("the Main Window seems to be right ", l_ig_main_window.is_displayed=True)
			l_ig_main_window.destroy
		end
end


