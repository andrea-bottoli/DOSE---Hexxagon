note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_BOARD_TEST

inherit
	EQA_TEST_SET

feature -- Test routines


	test_menu
		note
			testing:  "covers/{DO_BOARD}"
		local
			board : DO_BOARD
			settings : DO_SETTINGS
		do
			create board
			board.build_board
			assert("built_board",board.is_empty=FALSE)

			board.build_rules_menu_bar
			assert("built_stadard_toolbar",board.standard_toolbar.is_empty=FALSE)

			board.build_standard_toolbar
			assert("built_rules_bar",board.rules_menu_bar.is_empty=FALSE)

			board.build_main_container (settings)
			assert("built_main_container",board.main_container.is_empty=FALSE)


		end


end


