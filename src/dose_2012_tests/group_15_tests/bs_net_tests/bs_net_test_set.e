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
		select
			default_create
		end

	EXECUTION_ENVIRONMENT
		rename
			default_create as nothing
		end

inherit {NONE}

	BS_CONSTANTS
		rename
			default_create as even_more_nothing_than_before
		end

feature -- Test routines

	net_start_server_and_connect_client_test
			-- New test routine
		note
			testing: "user/BS"
		local
			server: BS_NET_SERVER
				--	client: BS_NET_CLIENT_MANAGER
			game: BS_GAME
			string_aux: STRING
			users_connected: LIST [BS_NET_REMOTE_MACHINE]
			ip_address: INET4_ADDRESS
			an_address: ARRAY [NATURAL_8]
			game_connection: BS_NET_GAME_CONNECTION
			dummythread: BS_NET_SOCKET_ACCEPTER
		do
				--initialize server
			create game.make
			create server.make (game, 3333, 4, create {BS_NET_AGENT_SET}.make (void, void, void, void, void, void), 0)
			string_aux := server.start_listening ()
			create dummythread.make (void, void)
			dummythread.yield
			sleep (1000000000)
			io.put_string (string_aux)

				--initialize one client
				--create client.make
				--connect client to server
			create an_address.make_filled (0, 1, 4)
			an_address.put (127, 1)
			an_address.put (1, 4)
			create ip_address.make_from_host_and_address ("localhost", an_address)
				--client.connect_server (ip_address, 3333)
				--verify number of connected players

			create game_connection.make ("127.0.0.1", 3333, -1)
			dummythread.yield
			sleep (10000000000)
			users_connected := server.get_machines
			io.put_integer (users_connected.count)
			assert ("A user should be connected", users_connected.count = 1)

				--close server
			server.stop_listening
		end

	net_ask_move_test
			-- New test routine
		note
			testing: "user/BS"
		local
			server: BS_NET_SERVER
				--client: BS_NET_CLIENT_MANAGER
			game: BS_GAME
			string_aux: STRING
			users_connected: LIST [BS_NET_REMOTE_MACHINE]
			machine: BS_NET_REMOTE_MACHINE
			ip_address: INET4_ADDRESS
			an_address: ARRAY [NATURAL_8]
			move: BS_MOVE
		do
				--initialize server
			create game.make
			create server.make (game, 3333, 4, create {BS_NET_AGENT_SET}.make (void, void, void, void, void, void), 0)
			string_aux := server.start_listening ()

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
				move := machine.get_move (1)
				assert ("Valid move should be got", move /= Void)
			end

				--close server
			server.stop_listening
		end

	net_serialization_test
			-- New test routine
		note
			testing: "user/BS"
		local
			current_tile: BS_TILE
			deserialized_any: ANY
			new_state: ARRAY2 [INTEGER]
			serializer: BS_NET_SERIALIZER
			downcast_ok: BOOLEAN
		do
			downcast_ok := false;
			create serializer

				--19
			create new_state.make_filled (1, 3, 3)
			new_state.item (1, 1) := 0
			new_state.item (3, 1) := 0
			new_state.item (2, 3) := 0
			new_state.item (3, 3) := 0
			current_tile := create {BS_TILE}.make (new_state, color_red)
			deserialized_any := serializer.deserialize (serializer.serialize (current_tile))
			if attached {BS_TILE} deserialized_any as deserialized_tile then
				downcast_ok := true
				assert ("Tile [de]serialized correctly", current_tile ~ deserialized_tile)
			end
			assert ("Downcast succeeded", downcast_ok)
			downcast_ok := false

				--20
			create new_state.make_filled (1, 3, 3)
			new_state.item (1, 1) := 0
			new_state.item (3, 1) := 0
			new_state.item (1, 3) := 0
			new_state.item (3, 3) := 0
			current_tile := create {BS_TILE}.make (new_state, color_blue)
			deserialized_any := serializer.deserialize (serializer.serialize (current_tile))
			if attached {BS_TILE} deserialized_any as deserialized_tile then
				downcast_ok := true
				assert ("Tile [de]serialized correctly", current_tile ~ deserialized_tile)
			end
			assert ("Downcast succeeded", downcast_ok)
			downcast_ok := false

				--21
			create new_state.make_filled (1, 2, 4)
			new_state.item (1, 1) := 0
			new_state.item (1, 3) := 0
			new_state.item (1, 4) := 0
			current_tile := create {BS_TILE}.make (new_state, color_green)
			deserialized_any := serializer.deserialize (serializer.serialize (current_tile))
			if attached {BS_TILE} deserialized_any as deserialized_tile then
				downcast_ok := true
				assert ("Tile [de]serialized correctly", current_tile ~ (deserialized_tile))
			end
			assert ("Downcast succeeded", downcast_ok)
			downcast_ok := false
		end

end
