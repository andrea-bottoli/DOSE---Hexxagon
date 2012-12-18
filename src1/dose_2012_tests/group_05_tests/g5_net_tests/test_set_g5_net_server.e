note
	description: "Summary description for {TEST_SET_G5_NET_SERVER}."
	author: "Team Rio Cuarto 4"
	date: "$20/11/2012$"
	revision: "$Revision: 2 $"

class
	TEST_SET_G5_NET_SERVER

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

	a_net_server: G5_NET_SERVER

	socket_message: G5_MESSAGE_TEXTUAL

feature -- Tests negative routines for feature make

	test_make_0
		note
			testing: "G5_NET_SERVER/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for make with port_number < 1024
		do
			if not rescued then
				create a_net_server.make (1000, 3)
			end
			assert (" make raised problem with port_number < 1024", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_1
		note
			testing: "G5_NET_SERVER/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for make with port_number > 5000
		do
			if not rescued then
				create a_net_server.make (5010, 3)
			end
			assert (" make raised problem with port_number > 5000", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_2
		note
			testing: "G5_NET_SERVER/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for make with number_clients < 2
		do
			if not rescued then
				create a_net_server.make (1025, 1)
			end
			assert (" make raised problem with number_clients < 2", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_3
		note
			testing: "G5_NET_SERVER/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for make with number_clients > 4
		do
			if not rescued then
				create a_net_server.make (1025, 5)
			end
			assert (" make raised problem with number_clients > 4", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature make

	test_make_4
		note
			testing: "G5_NET_SERVER/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test make attributes_equal_to_arguments
		do
			create a_net_server.make (1025, 5)
			rescued := a_net_server.max_connections = 5
			assert ("correct make ", rescued)
		end

feature -- Tests negative routines for feature send_message_to

	test_send_message_to_0
		note
			testing: "G5_NET_SERVER/send_message_to"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to with socket_message = Void
		do
			create a_net_server.make (1025, 4)
			if not rescued then
					a_net_server.send_message_to (socket_message)
			end
			assert (" send_message_to raised problem with socket_message = Void", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_send_message_to_1
		note
			testing: "G5_NET_SERVER/send_message_to"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to consistent_source
		do
			create a_net_server.make (1025, 4)
			create socket_message.make ("", <<"player2", "player3", "player4">>, "display", "show display")
			if not rescued then
					a_net_server.send_message_to (socket_message)
			end
			assert (" send_message_to raised problem with socket_message.source /= 'SERVER'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_send_message_to_2
		note
			testing: "G5_NET_SERVER/send_message_to"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to for inconsistent targets
		do
			create a_net_server.make (1025, 4)
			create socket_message.make ("player1", <<"SERVER", "player3", "player4">>, "display", "show display")
			if not rescued then
					a_net_server.send_message_to (socket_message)
			end
			assert (" send_message_to raised problem for inconsistent targets'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_send_message_to_3
		note
			testing: "G5_NET_SERVER/send_message_to"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to for inconsistent targets
		do
			create a_net_server.make (1025, 4)
			create socket_message.make ("player1", <<"", "player3", "player4">>, "display", "show display")
			if not rescued then
					a_net_server.send_message_to (socket_message)
			end
			assert (" send_message_to raised problem for inconsistent targets'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature send_message_to

--feature -- Tests negative routines for feature require_message_from

--	test_require_message_from_0
--		note
--			testing: "G5_NET_SERVER/require_message_from"
--			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
--			-- test negative for require_message_from for invalid sources

--		local
--			source_names: ARRAY [STRING]
--		do
--			create a_net_server.make (1025, 4)
--			if not rescued then
--					a_net_server.require_message_from (source_names)
--			end
--			assert (" require_message_from raised problem for invalid sources", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

--	test_require_message_from_1
--		note
--			testing: "G5_NET_SERVER/require_message_from"
--			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
--			-- test negative for require_message_from for invalid sources
--		local
--			source_names: ARRAY [STRING]
--		do
--			create a_net_server.make (1025, 4)
--				source_names := <<"SERVER", "player3", "player4">>
--			if not rescued then
--					a_net_server.require_message_from (source_names)
--			end
--			assert (" require_message_from raised problem for invalid sources'", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

--	test_require_message_from_2
--		note
--			testing: "G5_NET_SERVER/require_message_from"
--			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
--			-- test negative for require_message_from for invalid sources
--		local
--			source_names: ARRAY [STRING]
--		do
--			create a_net_server.make (1025, 4)
--				source_names := <<"", "player3", "player4">>
--			if not rescued then
--					a_net_server.require_message_from (source_names)
--			end
--			assert (" require_message_from raised problem for invalid sources'", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

--feature -- Tests routines for feature require_message_from

end
