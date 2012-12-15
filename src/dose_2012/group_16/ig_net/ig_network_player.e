note
	description: "An object that represents a player across the network."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_NETWORK_PLAYER

inherit
	IG_PLAYER
	INET_ADDRESS_FACTORY
	THREAD

create
	my_make

feature

	my_make
		do
			make
			create messages_waiting.make
			create tiles.make
		end

feature {NONE}

	connect_to_host_adress
		local
			host: detachable INET_ADDRESS
		do

			host := create_from_name (host_adress)
			if host = Void then
				io.put_string ("Unknown host " + host_adress + ".%N")
				--TODO: Raise exception
			else
					-- Create the socket connection to the Echo Server.
				create socket.make_client_by_address_and_port (host, port)
				socket.set_timeout (10)
				socket.connect

				if not socket.is_connected then
					io.put_string ("Unable to connect to host " + host_adress + ":" + port.out + "%N")
					--TODO: Raise exception
				else
					--Connection established, now ask for game info
					create ps.make_read_only
					create readcomm.make_with_logic (socket, logic, Current)
					ps.put_read_command (readcomm)

					io.put_string ("Connection established (Client)!%N")
					listen_serve_loop
				end

			end
		end

	wait_for_connection
		do

			io.put_string ("Network player waiting for connection.%N")
			socket := port_listener.get

			create ps.make_read_only
			create readcomm.make_with_logic (socket, logic, Current)
			ps.put_read_command (readcomm)

			io.put_string ("Connection established (Server)!%N")
			listen_serve_loop
		rescue
			io.put_string ("Could not wait for connection, retrying%N")
			sleep(1000000000)	--1 Second
			retry
		end

	listen_serve_loop
		do
			--Listen on the connection, but make frequent brakes to check whether this thread should terminate
			from
				abort := False
--				messages_waiting.wipe_out
			until
				abort
			loop
--				io.put_string ("Listening on peer port " + socket.peer_address.port.out + "...%N")
				ps.execute (10, 1000)				--1 Sec
				from
					messages_waiting.start
				until
					0 = messages_waiting.count
				loop
					internal_send_message(messages_waiting.first)
					messages_waiting.remove
				end
			end

			--We must abort
			Current.exit

		end

	execute
		require else
			logic_set: logic /= Void
		do
			if host_adress = Void or else host_adress.is_empty then
				wait_for_connection
			else
				connect_to_host_adress
			end
		end


	internal_send_message(a_message: STRING)
		require
			a_message /= Void
		do
			io.put_string ("Sending message: " + a_message + ". Size: " + a_message.count.out + ". To port " + socket.peer_address.port.out + ".%N")

			socket.put_string (a_message + "%N")

			if a_message.is_equal ("send_abort") or a_message.starts_with ("send_game_over") then
				abort := True
			end
		end

feature {ANY}

	set_host_adress (a_host_adress: STRING)
		require
			host_valid: a_host_adress /= Void and not a_host_adress.is_empty
			host_not_yet_set: host_adress = Void
		do
			host_adress := a_host_adress

			port := 49567	--Our standard port
		end

	set_logic (a_logic: IG_LOGIC)
		require
			a_logic /= Void
		do
			logic := a_logic
		end

	set_port_listener (a_port_listener: IG_PORT_LISTENER)
		require
			a_port_listener /= Void
		do
			port_listener := a_port_listener
		end

	set_abort
		do
			abort := true
		end

feature {IG_LOGIC}	--During game, or in preparation

--	request_move
--		do
--			send_message("request_move")
--		end

	send_all_names
		local
			i: INTEGER
			s: STRING
		do
			i := logic.players.index

			s := "send_all_names"
			from
				logic.players.start
			until
				logic.players.after
			loop
				s.append (";" + logic.players.item.name)
				logic.players.forth
			end

			logic.players.go_i_th (i)

			send_message(s)
		end

	send_move (a_move: IG_MOVE)
		require
			move_not_void: a_move /= Void
		do
			send_message("send_move;" + a_move.x_position.out + ";" + a_move.y_position.out + ";" + a_move.rotation.out + ";" + a_move.tile.first_hex.color + ";" + a_move.tile.second_hex.color)
		end

	send_tile (a_tile: IG_TILE)
		require
			a_tile /= Void
		do
			send_message("send_tile;" + a_tile.first_hex.color + ";" + a_tile.second_hex.color)
		end


	request_starting_game_state (a_name: STRING)
		require
			not logic.is_master
		do
			send_message("request_starting_game_state;" + a_name)
		end

	send_starting_game_state
		require
			logic.is_master
		local
			s: STRING
		do
			s := "send_starting_game_state;"

			s.append (logic.players.count.out + ";")	--# of Players (For size of gameboard)

			--Player tiles
			from
				tiles.start
			until
				tiles.after
			loop
				s.append (tiles.item.first_hex.color + ";")
				if tiles.islast then
					s.append (tiles.item.second_hex.color)
				else
					s.append (tiles.item.second_hex.color + ";")
				end
				tiles.forth
			end

			send_message(s)
		end

	send_game_over(a_player: IG_PLAYER)
		require
			a_player /= Void and then a_player.name /= Void
		local
			s: STRING
		do
			s := "send_game_over;" + a_player.name

			send_message(s)
		end

	send_abort
		do
			send_message("send_abort")
		end

	is_connected: BOOLEAN
		do
			Result := socket /= Void
		end

feature {NONE}

	send_message(a_message: STRING)
		do
			io.put_string ("Queueing message " + a_message + ".%N")
			messages_waiting.extend (a_message)
		end


feature {NONE}

	host_adress: STRING
		-- The host address of the player.

	port: INTEGER

	socket: NETWORK_STREAM_SOCKET
	ps: MEDIUM_POLLER
	readcomm: IG_DATAGRAM_READER
	--writecomm: IG_DATAGRAM_WRITER

	logic: IG_LOGIC

	port_listener: IG_PORT_LISTENER

	packet_number: INTEGER

	abort: BOOLEAN
		--Should this Thread terminate

	messages_waiting: LINKED_LIST[STRING]

end
