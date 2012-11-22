note
	description: "Summary description for TEST_SET_G5_POP_UP_MESSAGE."
	author: "Team Rio Cuarto 4"
	date: "$18/11/2012$"
	revision: "$Revision: 1 $"

class
	TEST_SET_G5_POP_UP_MESSAGE

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

	pop_up_mesage: G5_POP_UP_MESSAGE

	string_entry: STRING = "message to display"

feature -- Test routines

	test_make_0
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make
		do
			if not rescued then
				pop_up_mesage.make ("")
			end
			assert (" make raised problem whit entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_1
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test make
		do
			pop_up_mesage.make (string_entry)
			rescued := string_entry.is_equal (pop_up_mesage.message)
			assert ("correct make", rescued)
		end

end
