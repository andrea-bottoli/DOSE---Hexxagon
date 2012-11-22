note
	description: "Summary description for {TEST_SET_G5_NET_CLIENT}."
	author: "Team RioCuarto4"
	date: "$20/11/2012$"
	revision: "$Revision: 1 $"

class
	TEST_SET_G5_NET_CLIENT
inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

	a_net_client: G5_NET_CLIENT

	associated_GUI: G5_IGUI_TO_NET

	socket_message: G5_MESSAGE_TEXTUAL

feature -- Test negative for feature make


	test_make_0
		note
			testing: "G5_NET_CLIENT/make"
			-- test negative for make with port_number < 1024
		do
			if not rescued then
				create a_net_client.make (associated_GUI)
			end
			assert (" make raised problem with port_number < 1024", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature make

	test_make_1
		note
			testing: "G5_NET_CLIENT/make"
			-- test make attributes_equal_to_arguments
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			rescued := a_net_client.client_gui = associated_GUI
			assert ("correct make ", rescued)
		end

feature -- Test negative for feature send_message_to_server

	test_send_message_to_server_0
		note
			testing: "G5_NET_SERVER/send_message_to_server"
			-- test negative for send_message_to_server with socket_message = Void
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			if not rescued then
					a_net_client.send_message_to_server (socket_message)
			end
			assert (" send_message_to_server raised problem with socket_message = Void", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_send_message_to_server_1
		note
			testing: "G5_NET_SERVER/send_message_to_server"
			-- test negative for send_message_to_server incorrect source
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create socket_message.make ("", <<"SERVER">>, "display", "show display")
			if not rescued then
					a_net_client.send_message_to_server (socket_message)
			end
			assert (" send_message_to_server raised problem with socket_message.source /= 'SERVER'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_send_message_to_server_2
		note
			testing: "G5_NET_SERVER/send_message_to_server"
			-- test negative for send_message_to_server for inconsistent targets
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create socket_message.make ("player1", <<"">>, "display", "show display")
			if not rescued then
					a_net_client.send_message_to_server (socket_message)
			end
			assert (" send_message_to_server raised problem for inconsistent targets'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_send_message_to_server_3
		note
			testing: "G5_NET_SERVER/send_message_to_server"
			-- test negative for send_message_to_server for inconsistent targets
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create socket_message.make ("player1", <<"player2">>, "display", "show display")
			if not rescued then
					a_net_client.send_message_to_server (socket_message)
			end
			assert (" send_message_to_server raised problem for inconsistent targets'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

		test_send_message_to_server_4
			note
				testing: "G5_NET_SERVER/send_message_to_server"
				-- test negative for send_message_to_server for inconsistent targets
			do
				--create associated_GUI.make()
				create a_net_client.make (associated_GUI)
				create socket_message.make ("player1", <<"SERVER","player2">>, "display", "show display")
				if not rescued then
						a_net_client.send_message_to_server (socket_message)
				end
				assert (" send_message_to_server raised problem for inconsistent targets'", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
			end
			
feature -- Test for feature test_send_message_to_server

feature -- Test negative for feature wait_for_messages

feature -- Test for feature wait_for_messages

end
