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
			assert("is in default size : ",my_window.is_in_default_state = TRUE);
			my_window.request_close_window
			

			--assert ("not_implemented", False)
		end

end


