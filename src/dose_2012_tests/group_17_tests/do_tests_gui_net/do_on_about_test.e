note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_ON_ABOUT_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	Do_on_about_test
			-- New test routine
		note
			testing:  "covers/{DO_ON_ABOUT}"
		local
			my_about : DO_ON_ABOUT
		do
			create my_about.default_create
			



			--assert ("not_implemented", False)
		end

end


