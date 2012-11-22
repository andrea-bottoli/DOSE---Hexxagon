note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_MATCH_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_initiateANewMatch		--tests the function
		note
			testing: "Testing initiateANewMatch"

		local
			test_Match : RI_MATCH
		do
			create test_Match.make
			test_Match.initiateANewMatch
			assert("Match not void", test_Match /= void)
			assert("Match not initiated",test_Match.matchID >0)
			assert("WorldModel not void", test_Match.model /= void)
		end


	test_loadSavedMatch
		note
			testing : "Testing loadSavedMatch"
		local
			test_match : RI_MATCH
		do
			create test_Match.make
			test_Match.loadASavedMAtch
			assert("Match not void", test_Match /= void)
			assert("Match not loaded",test_Match.matchID >0)
			assert("WorldModel not void", test_Match.model /= void)


		end

end


