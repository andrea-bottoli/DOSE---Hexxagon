note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_RULES_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	DO_RULES_TEST
			-- New test routine
		local
			rules : DO_RULES
		do
			create rules
			rules.set_message ("gerolumatos")
			assert("set_message",rules.message.is_equal ("gerolumatos"))
		end

end


