note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Eleytherios S. Benisis"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G10_TILE_LOGIC_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	test_rotate -- cannot test with current class' methods.
	note
		testing:  "user/G10"
	do
		assert ("not_implemented", False)
	end

end


