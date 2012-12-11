note
	description: "Summary description for {G20_NET_TESTS}."
	author: "diakost of crete4"
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NET_TESTS



inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end



feature {NONE} -- Events

	on_prepare
		do
		end

	on_clean
		do
		end

feature -- Test routines

	core : G20_NET_CORE


	test_peer_discovery0

		note
			testing: "G20_NET_CORE.discover_peers"
		local
			no_players : INTEGER
		do

			--do nothing
			no_players := core.discover_peers()

			assert("Number of players",no_players=0)
			assert("Player Count",core.peers.count=0)
		end


	test_peer_discovery1

		note
			testing: "G20_NET_CORE.discover_peers"

		local
			no_players : INTEGER
		do

			--create client 1 in implementation

			no_players := core.discover_peers()

			assert("Number of players",no_players=1)
			assert("Player Count",core.peers.count=1)
		end

	test_peer_discovery2

		note
			testing: "G20_NET_CORE.discover_peers"

		local
			no_players : INTEGER
		do

			--create client 1 in implementation
			--create client 2 in implementation

			no_players := core.discover_peers()

			assert("Number of players",no_players=2)
			assert("Player Count",core.peers.count=2)
		end
	test_peer_discovery3

		note
			testing: "G20_NET_CORE.discover_peers"

		local
			no_players : INTEGER
		do

			--create client 1 in implementation
			--create client 2 in implementation
			--create client 3 in implementation


			no_players := core.discover_peers()

			assert("Number of players",no_players=3)
			assert("Player Count",core.peers.count=3)
		end


	test_peer_discovery4

		note
			testing: "G20_NET_CORE.discover_peers"

		local
			no_players : INTEGER
		do

			--create client 1 in implementation
			--create client 2 in implementation
			--create client 3 in implementation
			--create client 4 in implementation

			no_players := core.discover_peers()

			assert("Number of players",no_players=4)
			assert("Player Count",core.peers.count=4)
		end

end
