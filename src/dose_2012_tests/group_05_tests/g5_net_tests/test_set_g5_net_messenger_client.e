note
	description: "This is the test class for the class G5_NET_MESSENGER_CLIENT"
	author: "Team Rio Cuarto4 / Luca Falsina"
	date: "29.11.2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_SET_G5_NET_MESSENGER_CLIENT

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end


feature {NONE}

	rescued: BOOLEAN

	a_net_client: G5_NET_CONTROLLER_CLIENT

	associated_GUI: G5_IGUI_TO_NET

	a_net_messenger: G5_NET_MESSENGER_CLIENT

	socket_message: G5_MESSAGE_TEXTUAL

	player_name: STRING

	ip_address: STRING

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			player_name := "Test_Player"
			ip_address := "192.168.2.1"
		end

feature -- Test with negative result: invalid make procedure

	make_void_controller_0
			-- This test will fail since no G5_NET_CONTROLLER_CLIENT instance has not been created yet
			-- when the G5_NET_MESSENGER_CLIENT is istantiated.
		note
			testing: "covers/{G5_NET_MESSENGER_CLIENT}.make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		do
			if not rescued then
				create a_net_messenger.make (a_net_client, player_name, ip_address, 2000)
			end
			assert ("A G5_RECEIVER_COMMAND_CARD object with a void controller generates a rescue process.", rescued)
		rescue
			if not rescued then
				rescued := true
				retry
			end
		end

feature -- Test negative for feature send_message_to_server

	test_enque_message_to_server_0
		note
			testing: "covers/{G5_NET_MESSENGER_CLIENT}.enque_message_to_server"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to_server with socket_message = Void
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create a_net_messenger.make (a_net_client, player_name, ip_address, 2000)
			if not rescued then
					a_net_messenger.enque_message_to_server (socket_message)
			end
			assert (" enque_message_to_server raised problem with socket_message = Void", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_enque_message_to_server_1
		note
			testing: "covers/{G5_NET_MESSENGER_CLIENT}.enque_message_to_server"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to_server incorrect source
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create a_net_messenger.make (a_net_client, player_name, ip_address, 2000)
			create socket_message.make ("", <<"SERVER">>, "display", "show display")
			if not rescued then
					a_net_messenger.enque_message_to_server (socket_message)
			end
			assert (" enque_message_to_server raised problem with socket_message.source /= 'SERVER'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_enque_message_to_server_2
		note
			testing: "covers/{G5_NET_MESSENGER_CLIENT}.enque_message_to_server"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to_server for inconsistent targets
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create a_net_messenger.make (a_net_client, player_name, ip_address, 2000)
			create socket_message.make ("player1", <<"">>, "display", "show display")
			if not rescued then
					a_net_messenger.enque_message_to_server (socket_message)
			end
			assert (" enque_message_to_server raised problem for inconsistent targets'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_enque_message_to_server_3
		note
			testing: "covers/{G5_NET_MESSENGER_CLIENT}.enque_message_to_server"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for send_message_to_server for inconsistent targets
		do
			--create associated_GUI.make()
			create a_net_client.make (associated_GUI)
			create a_net_messenger.make (a_net_client, player_name, ip_address, 2000)
			create socket_message.make ("player1", <<"player2">>, "display", "show display")
			if not rescued then
					a_net_messenger.enque_message_to_server (socket_message)
			end
			assert (" enque_message_to_server raised problem for inconsistent targets'", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

		test_enque_message_to_server_4
			note
				testing: "covers/{G5_NET_MESSENGER_CLIENT}.enque_message_to_server"
				testing: "user/G5" -- this is the tag based on the group-prefix for our tests
				-- test negative for send_message_to_server for inconsistent targets
			do
				--create associated_GUI.make()
				create a_net_client.make (associated_GUI)
				create a_net_messenger.make (a_net_client, player_name, ip_address, 2000)
				create socket_message.make ("player1", <<"SERVER","player2">>, "display", "show display")
				if not rescued then
						a_net_messenger.enque_message_to_server (socket_message)
				end
				assert (" send_message_to_server raised problem for inconsistent targets'", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
			end

feature -- Test for feature test_enque_message_to_server

feature -- Test negative for feature wait_for_messages

feature -- Test for feature wait_for_messages

end


