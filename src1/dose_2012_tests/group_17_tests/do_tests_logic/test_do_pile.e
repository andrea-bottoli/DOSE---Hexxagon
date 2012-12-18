note
	description: "Summary description for {TEST_DO_PILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DO_PILE

inherit
	EQA_TEST_SET

feature -- Test routines

	test
			-- New test routine
		local
			l_pile: DO_PILE


		do
			create l_pile.make

			assert ("checking pile:", False)
		end
end
