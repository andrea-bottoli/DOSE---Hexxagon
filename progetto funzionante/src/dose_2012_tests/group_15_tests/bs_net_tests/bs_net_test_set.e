note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_NET_TEST_SET

inherit
	EQA_TEST_SET

feature -- Test routines

	net_start_server_and_connect_client_test
			-- New test routine
		note
			testing:  "user/BS"
		local
			server: BS_NET_SERVER
		--	client: BS_NET_CLIENT_MANAGER
			game: BS_GAME
			string_aux: STRING
			users_connected: LIST [BS_NET_REMOTE_MACHINE]
			ip_address : INET4_ADDRESS
			an_address: ARRAY [NATURAL_8]
		do
			--initialize server
			create game.make
			create server.make(game, Void, Void) -- is Void allowed? don't know what procedures to pass

			string_aux := server.start_listening (3333) --don't know what are the possible values for this string response

			--initialize one client
			--create client.make
			--connect client to server
			create an_address.make_filled (0, 1, 4)
			an_address.put (127, 1)
			an_address.put (1, 4)
			create ip_address.make_from_host_and_address ("localhost", an_address)
			--client.connect_server (ip_address, 3333)
			--verify number of connected players
			users_connected := server.get_machines

			assert ("A user should be connected", users_connected.count = 1)

			--close server
			server.stop_listening
		end

	net_ask_move_test
			-- New test routine
		note
			testing:  "user/BS"
		local
			server: BS_NET_SERVER
			--client: BS_NET_CLIENT_MANAGER
			game: BS_GAME
			string_aux: STRING
			users_connected: LIST [BS_NET_REMOTE_MACHINE]
			machine: BS_NET_REMOTE_MACHINE
			ip_address : INET4_ADDRESS
			an_address: ARRAY [NATURAL_8]
			move: BS_MOVE
		do
			--initialize server
			create game.make
			create server.make(game, Void, Void) -- is Void allowed? don't know what procedures to pass

			string_aux := server.start_listening (3333) --don't know what are the possible values for this string response

			--initialize one client
			--create client.make
			--connect client to server
			create an_address.make_filled (0, 1, 4)
			an_address.put (127, 1)
			an_address.put (1, 4)
			create ip_address.make_from_host_and_address ("localhost", an_address)


		--	client.connect_server (ip_address, 3333)
			--verify number of connected players

			users_connected := server.get_machines
			machine := users_connected.item
			if machine /= Void then
				move := machine.get_move(0,1)

				assert ("Valid move should be got", move /= Void)
			end

			--close server
			server.stop_listening
		end
end


