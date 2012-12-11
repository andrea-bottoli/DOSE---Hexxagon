    note
	description: "Group 1 net server class test."
	author: "Group 1 - Rio Cuarto 7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_NET_SERVER

--inherit

--	EQA_TEST_SET

--feature -- Test routines

--	TEST_G1_NET
--			-- New test routine
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}"
--		do
--			assert ("not_implemented", False)
--		end

--feature --Operations

--	test_send_message_broadcast_1
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.send_message_broadcast"
--		local
--			server: G1_NET_SERVER_SINGLE
--			id_match: STRING
--			msg: G1_MESSAGE
--		do
--			create server.make
--				--id_match := "One message"
--			server.send_message_broadcast (id_match, msg)
--		end

--	test_send_message_to_1
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.send_message_to"
--		local
--			server: G1_NET_SERVER_SINGLE
--			player: G1_PLAYER
--			message: G1_MESSAGE
--			test_result: BOOLEAN
--		do
--			create server.make
--			create player.make (1) --Player with id = 1
--				-- create message.make
--			server.send_message_to (player, message)
--			test_result := player.get_id_player = 1
--				-- test_result := player.get_id_player = 1 AND msg /= Void
--			assert ("Correct player", test_result)
--		end

--	test_send_message_to_2
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.send_message_to"
--		local
--			server: G1_NET_SERVER_SINGLE
--			player: G1_PLAYER
--			message: G1_MESSAGE
--			test_result: BOOLEAN
--			rescued: BOOLEAN
--		do
--			if (not rescued) then
--				create server.make
--				create player.make (1)
--				create player.make (2)
--					--create msg.make
--			end
--			assert ("Is throw exception ", rescued)
--		rescue
--			if (not rescued) then
--				rescued := True
--				retry
--			end
--		end

--feature -- Server settings

--	test_set_port_1
--			-- Testing set the port
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.set_port"
--		local
--			server: G1_NET_SERVER_SINGLE
--			test_result: BOOLEAN
--		do
--			create server.make
--			server.set_port (2222)
--			test_result := server.get_port = 2222
--			assert ("correct set_port", test_result)
--		end

--	test_set_port_2
--			-- Testing set the port
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.set_port"
--		local
--			server: G1_NET_SERVER_SINGLE
--			rescued: BOOLEAN
--		do
--			if (not rescued) then
--				create server.make
--				server.set_port (2222)
--				server.set_port (2223)
--			end
--			assert ("is throw exception ", rescued)
--		rescue
--			if (not rescued) then
--				rescued := True
--				retry
--			end
--		end

--	test_get_port
--			-- Testing get the port
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.get_port"
--		local
--			server: G1_NET_SERVER_SINGLE
--			test_result: BOOLEAN
--		do
--			create server.make
--			test_result := server.get_port > 1023 and server.get_port < 65535
--			assert ("correct set_port", test_result)
--		end

--	test_get_ip
--			-- Testing get the ip
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.get_ip"
--		local
--			server: G1_NET_SERVER_SINGLE
--			test_result: BOOLEAN
--		do
--			create server.make
--			test_result := server.get_ip /= Void
--			assert ("correct set_port", test_result)
--		end

--	test_start_server_1
--			-- Testing start the server
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.start_server"
--		local
--			server: G1_NET_SERVER_SINGLE
--			test_result: BOOLEAN
--		do
--			create server.make
--			server.start_server
--				--test_result := server.is_started = True
--			assert ("correct set_port", test_result)
--		end

--	test_start_server_2
--			-- Testing start the server
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.start_server"
--		local
--			server: G1_NET_SERVER_SINGLE
--			rescued: BOOLEAN
--		do
--			if (not rescued) then
--				create server.make
--				server.start_server
--				server.start_server
--			end
--			assert ("is throw exception ", rescued)
--		rescue
--			if (not rescued) then
--				rescued := True
--				retry
--			end
--		end

--	test_stop_server_0
--			-- Checks if the server is not running after the call to stop_server
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.stop_server"
--			testing: "user/G1"
--		local
--			net_server_t: G1_NET_SERVER_SINGLE
--		do
--			create net_server_t.make
--			net_server_t.stop_server
--			assert ("Server stopped: ", net_server_t.is_started = false)
--		end

--	test_set_time_out_0
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.set_time_out"
--			testing: "user/G1"
--		local
--			net_server_t: G1_NET_SERVER_SINGLE
--		do
--			create net_server_t.make
--			net_server_t.set_time_out (60)
--			assert ("Feature without contracts: ", false)
--		end

--	test_set_time_out_1
--			-- Negative test, that checks an time out.
--		note
--			testing: "covers/{G1_NET_SERVER_SINGLE}.set_time_out"
--			testing: "user/G1"
--		local
--			net_server_t: G1_NET_SERVER_SINGLE
--			rescued: BOOLEAN
--		do
--			if (not rescued) then
--				create net_server_t.make
--				net_server_t.set_time_out (-5)
--			end
--			assert ("Invalid Time Out ", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

end
