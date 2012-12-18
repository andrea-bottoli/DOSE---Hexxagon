note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_ROOMMANAGER_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_joinToMatch
		note
			testing: "Testing joinToMatch"
		local
			aMatch: RI_MATCH
			test_RoomManager: RI_ROOMMANAGER
			-- New test routine
		do
			create aMatch.make
			create test_RoomManager.make
			assert("aMatch not void",aMatch /= void)
			assert("test_roommanager not void",test_roommanager /= void)
			test_roommanager.joinToMatch(aMatch)
			assert("Test ready_players",test_roommanager.ready_players.count = 1)
			assert("No open matches",test_roommanager.open_matches.count = 0)
		end

	test_listeningServer
		note
			testing: "Testing listeningServer"
		local
			test_RoomManager: RI_ROOMMANAGER
			-- New test routine
		do
			create test_RoomManager.make
			assert("No games listed",test_RoomManager.open_matches.count=0)
			test_RoomManager.listeningServer()
			assert("Games Found",test_RoomManager.open_matches.count=1)

		end

	test_createMatch
		note
			testing: "Testing createMatch"
		local
			test_RoomManager: RI_ROOMMANAGER
			-- New test routine
		do
			create test_RoomManager.make
			assert("test_roommanager not void",test_roommanager /= void)
			test_roommanager.createMatch()
			assert("Test ready_players",test_roommanager.ready_players.count = 0)
			assert("No open matches",test_roommanager.open_matches.count = 1)

		end


end


