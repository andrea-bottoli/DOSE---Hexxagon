note
	description: "Summary description for {BS_NET_TEST_CLASS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_TEST_CLASS

inherit {NONE}

	EXECUTION_ENVIRONMENT
		rename
			launch as launchbis
		end

feature

	main_method ()
		local
		do
			create constants
			create command_list
				-- game_connection_test()
				-- net_start_server_and_connect_client_test ()
			commands_test ()
		end

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
				-- dummythread.yield
			sleep (1000000000)
			io.put_string (string_aux + "%N")

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
				-- dummythread.yield
			sleep (1000000000)
			users_connected := server.get_machines
			io.put_integer (users_connected.count)
			assert ("A user should be connected", users_connected.count = 1)

				--close server
			server.stop_listening
			io.put_string ("DONE%N")
		end

	assert (text: STRING; condition: BOOLEAN)
		do
			if not condition then
				io.put_string ("ASSERTION FAILED:%N" + text)
				(create {DEVELOPER_EXCEPTION}).raise ()
			end
		end

	commands_test ()
			-- New test routine
		note
			testing: "user/BS"
		local
			server: BS_NET_SERVER
				--	client: BS_NET_CLIENT_MANAGER
			game: BS_GAME
			string_aux: STRING
			users_connected: LIST [BS_NET_REMOTE_MACHINE]
			the_machine: BS_NET_REMOTE_MACHINE
			game_connection: BS_NET_GAME_CONNECTION
			my_random: BETTER_RANDOM
			master_key: INTEGER
		do
			create command_list
			create my_random.make()

				--initialize server
			create game.make


			master_key := my_random.next_random (my_random.seed)

			create server.make (game, 3333, 4, create {BS_NET_AGENT_SET}.make (void, void, agent add_player_handler, agent remove_player_handler, void, void), master_key)
			string_aux := server.start_listening ()
			sleep (200000000)

				--				io.put_string (string_aux + "%N")

			create game_connection.make ("127.0.0.1", 3333, master_key)
			sleep (200000000)
			users_connected := server.get_machines
			io.put_string ("Connected users: " + users_connected.count.out + "%N")
			assert ("A user should be connected", users_connected.count = 1)
			the_machine := users_connected.at (1)
			game_connection.send_add_player ("Goofy", 0)
			game_connection.send_remove_player (3)

			single_command_test (the_machine, game_connection, command_list.command_updateplayerlist, agent (mach: BS_NET_MACHINE)
				local
					player_list: ARRAY [TUPLE [id: INTEGER; name: STRING; type: INTEGER]]
				do
					create player_list.make_filled ([1, "Goofy", 0], 1, 1)
					mach.update_player_list (player_list)
				end)

			single_command_test (the_machine, game_connection, command_list.command_startgame, agent (mach: BS_NET_MACHINE)
				do
					mach.start_game ()
				end)

			single_command_test (the_machine, game_connection, command_list.command_getmove, agent (mach: BS_NET_MACHINE)
				local
					received_move: BS_MOVE
				do
					received_move := mach.get_move (2)
					assert("Correct code", received_move.get_action = received_move.action_surrender)
				end)

			single_command_test (the_machine, game_connection, command_list.command_playermakesmove, agent (mach: BS_NET_MACHINE)
				do
					mach.player_makes_move (1, 1, create {BS_MOVE}.make_with_action (3, void, void))
				end)

			single_command_test (the_machine, game_connection, command_list.command_removetilefromplayer, agent (mach: BS_NET_MACHINE)
				local
					tile: BS_TILE
					new_state: ARRAY2[INTEGER]
				do
					create new_state.make_filled (1, 1, 2)
					create tile.make (new_state, constants.color_blue)
					mach.remove_tile_from_player (1, 1, tile)
				end)

			single_command_test (the_machine, game_connection, command_list.command_badmove, agent  (mach: BS_NET_MACHINE)
				do
					mach.warn_bad_move (1, constants.color_red)
				end)

			single_command_test (the_machine, game_connection, command_list.command_updatescores, agent  (mach: BS_NET_MACHINE)
				do
					mach.update_scores (create {ARRAY[TUPLE[INTEGER, STRING, INTEGER]]}.make_filled ([1, "Goofy", 129], 1, 1))
				end)

			single_command_test (the_machine, game_connection, command_list.command_printlogmessage, agent  (mach: BS_NET_MACHINE)
				do
					mach.print_log_message ("My log message!")
				end)

			single_command_test (the_machine, game_connection, command_list.command_setturn, agent  (mach: BS_NET_MACHINE)
				do
					mach.set_turn (1, constants.color_yellow)
				end)

			single_command_test (the_machine, game_connection, command_list.command_announcevictory, agent  (mach: BS_NET_MACHINE)
				do
					mach.announce_victory (1, create {ARRAY[TUPLE[INTEGER, STRING, INTEGER]]}.make_filled ([1, "Goofy", 129], 1, 1))
				end)

			single_command_test (the_machine, game_connection, command_list.command_closing, agent  (mach: BS_NET_MACHINE)
				do
					mach.disconnect ()
				end)
			the_machine.disconnect()
			server.stop_listening ()
			io.put_string ("DONE%N")
		end

	single_command_test (the_machine: BS_NET_MACHINE; game_connection: BS_NET_GAME_CONNECTION; command: INTEGER; command_agent: PROCEDURE [ANY, TUPLE [BS_NET_MACHINE]])
		local
			read_command_async: WORKER_THREAD
			command_wrapper: TUPLE [BS_NET_COMMAND]
			received_command: BS_NET_COMMAND
		do
			create command_wrapper
			if command = command_list.command_getmove then
				create read_command_async.make (agent read_command_from_game_connection_and_send_move(game_connection, command_wrapper))
			else
				create read_command_async.make (agent read_command_from_game_connection(game_connection, command_wrapper))
			end
			read_command_async.launch ()
			command_agent.call ([the_machine])
			read_command_async.join ()
			if attached {BS_NET_COMMAND} command_wrapper.at (1) as unwrapped_command then
				received_command := unwrapped_command
			end
			assert ("Right command received", received_command.command = command)
			io.put_string ("Right command received!%N")
		end

feature {NONE} -- Functions for worker thread and agents

	read_command_from_game_connection (game_connection: BS_NET_GAME_CONNECTION; returned_command: TUPLE [BS_NET_COMMAND])
		do
			returned_command.at (1) := game_connection.read_command ()
		end

	read_command_from_game_connection_and_send_move (game_connection: BS_NET_GAME_CONNECTION; returned_command: TUPLE [BS_NET_COMMAND])
		local
			move: BS_MOVE
		do
			returned_command.at (1) := game_connection.read_command ()
			create move.make_with_action (3, void, void)
			game_connection.send_move (move)
		end

	add_player_handler (machine: BS_NET_MACHINE; name: STRING; type: INTEGER)
		require
			constants.is_valid_player_type (type)
		do
			io.put_string ("Add player handler! " + name + "%N")
		end

	remove_player_handler (machine: BS_NET_MACHINE; player_id: INTEGER)
		do
			io.put_string ("Remove player handler!%N")
		end

feature {NONE} -- Tests and stuff

	listening_test ()
		local
			netserv: BS_NET_SERVER
			fake_game: BS_GAME
			returned_string: STRING
		do
			create fake_game.make ()
			create netserv.make (fake_game, 8765, 4, create {BS_NET_AGENT_SET}.make (void, void, void, void, void, void), 0)
			returned_string := netserv.start_listening ()
			io.put_string ("Returned: " + netserv.start_listening () + "%N")
			if not (returned_string ~ "OK") then
					-- Do nothing
			else
				sleep (8000000000)
				netserv.stop_listening ()
				io.put_string ("All terminated!%N")
			end
		end

	machine_test ()
		local
			netserv: BS_NET_SERVER
			fake_game: BS_GAME
			returned_string: STRING
			agent_set: BS_NET_AGENT_SET
		do
			create fake_game.make ()
			create agent_set.make (agent machine_connected_handler, agent machine_disconnected_handler, void, void, void, void)
			create netserv.make (fake_game, 8765, 4, agent_set, 0)
			returned_string := netserv.start_listening ()
			if not (returned_string ~ "OK") then
					-- Do nothing
			else
				sleep (100000000000)
				netserv.stop_listening ()
				io.put_string ("All terminated!%N")
			end
		end

	machine_connected_handler (machine: BS_NET_MACHINE)
		do
			io.put_string ("Connected! Sending start.%N")
			machine.start_game
			io.put_string ("Sending a log message.%N")
			machine.print_log_message ("Please print this log message. Thank you!")
			machine.warn_bad_move (2, 4)
			machine.disconnect
		end

	machine_disconnected_handler (machine: BS_NET_MACHINE)
		do
			io.put_string ("Ok, he disconnected.%N")
		end

	game_connection_test ()
		local
			game_connection: BS_NET_GAME_CONNECTION
		do
			create game_connection.make ("127.0.0.1", 3333, -1)
		end

	constants: BS_CONSTANTS

	command_list: BS_NET_COMMAND_LIST

end
