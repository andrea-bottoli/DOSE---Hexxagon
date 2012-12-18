note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_MAIN_WINDOW_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	Do_main_window_test
			-- New test routine
		note
			testing:  "covers/{DO_MAIN_WINDOW}"
		local
			my_window : DO_MAIN_WINDOW
		do
			create my_window
			my_window.initialize
			assert("IS IN DEFAULT SIZE",my_window.is_in_default_state = TRUE);

			my_window.build_standard_menu_bar
			assert("IS CORRECT BAR",my_window.standard_menu_bar.is_empty())
			my_window.build_file_menu
			assert("IS CORRECT FILE MENU",my_window.file_menu.is_empty)
			my_window.build_help_menu
			assert("IS CORRECT HELP MENU",my_window.file_menu.is_empty)
			my_window.build_setting_menu
			assert("IS CORRECT SET MENU",my_window.setting_menu.is_empty())

			my_window.build_standard_toolbar
			assert("IS CORRECT STANDARD TOOL BAR",my_window.standard_menu_bar.is_empty())
			my_window.build_standard_status_bar
			assert("IS CORRECT STANDARD STATUS BAR",my_window.standard_status_bar.is_empty())

			my_window.request_close_window


			--assert ("not_implemented", False)
		end

end


