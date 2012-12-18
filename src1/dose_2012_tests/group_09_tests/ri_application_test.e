note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_APPLICATION_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_creation		-- New test routine
		note
			testing : "Testing non-void object"
		local
			test_application : RI_APPLICATION

		do
			create test_application.make
			assert("Non-void application",test_application /=void)
		end

end


