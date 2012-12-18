note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_HELP_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	Do_help_test
			-- New test routine
		note
			testing:  "covers/{DO_HELP}"
		local
			my_help : DO_HELP
		do
			create my_help.default_create
			my_help.set_message ("HELP")

			assert("CORRECT",my_help.message.is_equal ("HELP"))
			assert("CORRECT",not(my_help.message.is_equal ("SOMETHING ELSE")))
			--assert ("not_implemented", False)
		end

end


