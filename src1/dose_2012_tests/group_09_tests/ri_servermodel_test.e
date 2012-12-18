note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_SERVERMODEL_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	testUpdatePlayers
		note
			testing: "Testing add players"
		local
			test_Server : RI_SERVERMODEL
			s : STRING
			-- New test routine
		do
			s.make_from_string ("N:George;ID:0001")
			create test_Server.make
			assert("Non void test_Server",test_Server /= void)
			test_Server.updateByReceivedData(s)
			assert("Player added!",test_Server.players.count = 1)
			s.fill ("N:John;ID:0002")
			test_Server.updateByReceivedData(s)
			assert("Player added!",test_Server.players.count = 2)
		end

		testUpdateTerritories
			note
				testing: "Testing update Territories"
			local
				test_Server : RI_SERVERMODEL
				s: STRING
				-- New test routine
			do
				s.make_from_string ("T:0001:ID:0123")
				create test_Server.make
				assert("Non void test_Server",test_Server /= void)
				test_Server.updateByReceivedData(s)
				assert("Territory Modified",test_Server.territories = 1)
			end

end


