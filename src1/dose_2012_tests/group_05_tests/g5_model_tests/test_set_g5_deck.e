note
	description: "Summary description for {TEST_SET_G5_DECK}."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_SET_G5_DECK

inherit
	EQA_TEST_SET


feature -- Test routines

	test_shuffle
			-- this test checks the feature shuffle
		note
			testing: "covers/{G5_DECK}.shuffle"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			-- deck: G5_DECK[G5_CARD]
		do
			-- This feature can't be tested yet because the class doesn't still have a constructor
			-- and it requires more complex features to manage the generic class [G5_CARD]

		end


end
