note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_OUR_MESSAGE_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	DO_OUR_MESSAGE_TESTS
			-- New test routine
		local
			message : DO_OUR_MESSAGE
		do
			create message.make

			message.set_id (25)
			assert("set_id",message.id=25)

			message.append ("makis")
			assert("append",message.contents.is_empty=False)

			message.set_update
			assert("set_update",message.update=TRUE)

			message.unset_update
			assert("unset_update",message.update=FALSE)
		end

end


