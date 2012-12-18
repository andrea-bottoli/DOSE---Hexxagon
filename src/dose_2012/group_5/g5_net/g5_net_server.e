note
	description: "[
					This class is responsable of the communication with all 
					clients through sockets and with the LOGIC component of 
					the Server through APIs and forwarding of G5_MESSAGES.
					]"
	author: "Luca Falsina"
	date: "17.11.2012"
	revision: "1.2"

class
	G5_NET_SERVER

inherit
	G5_INET_TO_LOGIC
	SOCKET_RESOURCES
	STORABLE

create
	make

feature -- Status report

	reception_socket: detachable NETWORK_STREAM_SOCKET
			-- This socket is the one who will wait for clients request of connection.

	max_connections: INTEGER
	 		-- This integer represents the maximum number of simultaneous connections to this server.

	connection_attempts: HASH_TABLE[BOOLEAN, STRING]
			-- This table will keep a sort of register of all names used by clients to attempt a connection.
			-- In particular it will store if a client succeded or not to connect by using a certain name.

	clean_up_condition: BOOLEAN
			-- When this boolean is set to true it means that a match is over and a rematch choice
			-- was not taken, so the all system should be shutted down and the sockets must be close.

	no_rematch_taken: BOOLEAN
			-- This boolean is set on true when a game is ended and the players don't take the rematch.
			-- It makes the server terminate its execution.

	critical_disconnection: BOOLEAN
			-- This boolean is set on true when a player leaves the current game and (s)he is the host
			-- or the remaining number of players becomes 1.
			-- It makes the server terminate its execution.

	is_ready_to_start: BOOLEAN
			-- When this boolean is true, server can start to accept clients.

	rematch_choice_was_called: BOOLEAN
			-- When this boolean is set on true the result of the rematch evaluation by the LOGIC
			-- has just been obtained.

	host_thread_as_client: G5_CLIENT_THREAD
			-- The host_thread is used to make the host connect as a client to its own game.

	client_sockets: detachable HASH_TABLE[NETWORK_STREAM_SOCKET, STRING]
			-- This is the table of the sockets connected to this server. Every socket will be linked
			-- with a playing client and it will be identified with the validated player name, that
			-- the client used to identify itself during the previous connection process with the server.

	message_containers_to_clients: detachable HASH_TABLE[G5_MESSAGES_CONTAINER, STRING]
			-- This object associates every G5_MESSAGES_CONTAINER to the proper name of the related client.
			-- This user will receive the messages contained into his/her message container through his/her Socket.

	incoming_messages: LINKED_LIST[G5_MESSAGE]
			-- This list contains all the messages received by the server from the different clients,
			-- that needs to be forwarded to the LOGIC component.

feature {ANY} -- Initialization performed by G5_LAUNCHER

	make (port_number, number_max_clients: INTEGER)
			-- This constructor intializes the Server class and makes it reserve the port,
			-- specified as a parameter, for accepting clients connections in the future.
			-- The number_of_clients will specify the maximum number of managed socket connections.
		require
			valid_port_number: port_number > 1024 and port_number < 5000
			valid_clients_number: number_max_clients >= 2 and number_max_clients <= 4
		do
			create reception_socket.make_server_by_port (port_number)
			max_connections := number_max_clients
			host_thread_as_client := void
			create incoming_messages.make

			create message_containers_to_clients.make(4)

			create connection_attempts.make (10)
			create client_sockets.make (4)

		ensure
			-- server is correctly initialized.
			correct_initialization:
				max_connections = number_max_clients and
				clean_up_condition = false and
				no_rematch_taken = false and
				critical_disconnection = false and
				is_ready_to_start = false and
				rematch_choice_was_called = false and
				host_thread_as_client = void and
				reception_socket /= void and
				incoming_messages.is_empty and
				message_containers_to_clients.is_empty and
				connection_attempts.is_empty and
				client_sockets.is_empty

		rescue
            if reception_socket /= void then
            	reception_socket.cleanup
            end
		end

	start_accepting_clients
			-- This method will be invoked after that all the initialization procedure on Server Side
			-- is completed. The Server starts listening on its port for new incoming clients until
			-- the correct number of player is connected.
		require
			start_conditions_valid:
				is_ready_to_start = true and host_thread_as_client /= void
		do
				from
	                reception_socket.listen (max_connections)
	            until
	                client_sockets.count = max_connections
	            loop
	                accept_client
	            end

		ensure
			reached_max_connections:
				client_sockets.count = max_connections
		end

feature {G5_LAUNCHER,EQA_TEST_SET} -- Game Start: Inherited methods from G5_INET_TO_LOGIC

	start_game (players: ARRAY[STRING])
		local
			start_message: G5_MESSAGE_TEXTUAL
		do
			-- Create a new textual message with "start" as an action and send it to all players.
			create start_message.make ("SERVER", players, "start", void)

			-- The start message will be put in all outgoing lists to the clients.
			enque_message_into_containers (start_message)

			-- The start message is sent to all clients.
			send_messages_to_clients

			-- After that all clients has notified the reception message,
			-- this section of code create a message for the LOGIC component to inform it
			-- than new messages (initial cards, new turn and new phase.. ) should be sent
		 	-- to the clients.

		 	create start_message.make ("NET_SERVER", <<"SERVER">>, "start_logic", void)
			incoming_messages.force (start_message)

			-- After all the initializaion steps are ended, the game can actually start.
			-- In the rematch case the manage_game_phase is already active and so it
			-- must not be called.
			if not(rematch_choice_was_called) then
				manage_game_phase
			end
		end

feature {G5_ITABLE,EQA_TEST_SET} -- Server Logic Management: Inherited methods from G5_INET_TO_LOGIC

	add_server_logic (added_server_logic: G5_ITABLE)
		do
			server_logic := added_server_logic
			is_ready_to_start := true
		ensure then
			is_ready_to_start = true
		end

	remove_server_logic (removed_server_logic: G5_ITABLE)
		do
			server_logic := void
			is_ready_to_start := false
		ensure then
			is_ready_to_start = false
		end

	end_game (scores: HASH_TABLE[INTEGER, STRING])
			-- When this feature is invoked scores must be sent through
			-- the NET. Then the game phase must be ended.
		require else
			scores_players_are_in_the_game:
				scores.current_keys.for_all (agent (player_in_scores: STRING): BOOLEAN
			do Result := (client_sockets.has (player_in_scores) and message_containers_to_clients.has (player_in_scores)) end )
		local
			keys: ARRAY [STRING]
			end_message: G5_MESSAGE_END_GAME
		do

			-- Send scores through the Sockets to the clients
			-- A call in order to obtain all the sockets of the different connected clients.
			keys := message_containers_to_clients.current_keys

			-- Create a new end message and enque it in all players message containers.
			create end_message.make ("SERVER", keys, "end", scores)
			enque_message_into_containers (end_message)

		end

	is_valid_name_player(a_player_name: STRING; valid_connection: BOOLEAN)
			-- This feature will insert into connection_attempts table the two
			-- accepted parameters. This information will be used to create the
			-- response message to a connection event of one client.
		do
			-- If an old value related to "a_player_name" is found, it is
			-- removed before adding the new one.
			if (connection_attempts.has_key (a_player_name)) then
				connection_attempts.remove (a_player_name)
			end
			connection_attempts.put (valid_connection, a_player_name)

		ensure then
			valid_addition_to_the_table:
				connection_attempts.has_key (a_player_name) and
				connection_attempts.item (a_player_name) = valid_connection
			valid_overwriting:
				(old connection_attempts.has_key (a_player_name) implies
					connection_attempts.count = old connection_attempts.count)
				and
				(not(old connection_attempts.has_key (a_player_name)) implies
					connection_attempts.count = old connection_attempts.count + 1)

		end

	rematch_choice(do_a_rematch: BOOLEAN)
		do
			no_rematch_taken := not(do_a_rematch)

			-- Here it is set that the evaluation process for the rematch will be taken
			rematch_choice_was_called := true
		ensure then
			rematch_condition:
				no_rematch_taken = not(do_a_rematch) and rematch_choice_was_called = true
		end

	update (received_messages: LINKED_LIST[G5_MESSAGE])
			-- Incoming messages coming from the LOGIC component are
			-- enqued into the appropriate message containers.
		do
			from
				received_messages.start
			until
				received_messages.off
			loop
				-- Every single message is saved in the appropriate G5_MESSAGE
				-- container thanks to the target attribute of the message.
				enque_message_into_containers (received_messages.item)

				received_messages.forth
			end
		end


feature {G5_NET_SERVER} -- Server Internal Operations

	accept_client
			-- When this feature is invoked a new client will be waited on the receiving_socket.
			-- An incoming client will be redirected on an other socket. If the server validates the name of the
			-- new client then it is saved into the hash table of the client sockets.
		local

			connection_result_container: G5_MESSAGES_CONTAINER
				-- This message container will be sent to the incoming client to inform it about the result of the procedure

			connection_on_logic: BOOLEAN
				-- This boolean tells if the attempt of connection to the server logic by this client was successful or not
		do
			-- In this extract the client thread of the host is launched to make it connect to its own game..
			if client_sockets.is_empty then
				host_thread_as_client.lock_mutex
				-- This feature doesn't work properly since the Eiffel Garbage Collector
				-- terminates this thread at run time..
--				host_thread_as_client.launch
				host_thread_as_client.unlock_mutex
			end

			reception_socket.accept

			if attached reception_socket.accepted as accepted_socket then
				if attached {G5_MESSAGE_TEXTUAL} retrieved (accepted_socket) as connect_message then
					if connect_message.action.is_equal ("connect") then
						create connection_result_container.make
						connection_on_logic := server_logic.connection (connect_message.source)
						if connection_on_logic then
							if connection_attempts.item (connect_message.source) then
								-- This is a valid connection so this socket must be stored into client sockets table and an
								-- associated message container for this client will be prepared..
								client_sockets.put (accepted_socket, connect_message.source)

								-- A message of valid connection must be sent to the client
								connection_result_container.force (create {G5_MESSAGE_TEXTUAL}.make ("SERVER", <<connect_message.source>>,
								 "connect_result", "accepted"))

								message_containers_to_clients.put (connection_result_container, connect_message.source)

								-- A message with the names of all connected players plus the new one is sent to all the clients
								enque_message_into_containers (create {G5_MESSAGE_TEXTUAL}.make ("SERVER", client_sockets.current_keys ,
								 "accepted_client", void))

								-- The result message container is sent through the socket
								send_messages_to_clients

							else
								-- This is an invalid connection since the name used by the player
								-- has been already taken by another player.
								connection_result_container.force (create {G5_MESSAGE_TEXTUAL}.make ("SERVER", <<connect_message.source>>,
								 "connect_result", "refused:invalid_name"))

								-- In both cases of refused connection, a message container with a negative
								-- result is also sent back before closing the socket.
								connection_result_container.independent_store (accepted_socket)

								-- In every case the Server waits for an ack response from the incoming client
								if attached {G5_MESSAGES_CONTAINER} retrieved (accepted_socket) as ack_response_list then
									if ack_response_list.last.action.is_equal ("response") then
										-- Everything works right: Server can continue its execution..
									else
										-- Something goes wrong: a rescue process should be thrown since this part of code
										-- should never be reached..
										raise ("EXCEPTION")
									end
								end

								accepted_socket.close
							end
						else
							if connection_attempts.item (connect_message.source) then
								-- This is an invalid connection since the maximum number of players
								-- have been already reached.
								connection_result_container.force (create {G5_MESSAGE_TEXTUAL}.make ("SERVER", <<connect_message.source>>,
								 "connect_result", "refused:max_player"))

								-- In both cases of refused connection, a message container with a negative
								-- result is also sent back before closing the socket.
								connection_result_container.independent_store (accepted_socket)

								-- In every case the Server waits for an ack response from the incoming client
								if attached {G5_MESSAGES_CONTAINER} retrieved (accepted_socket) as ack_response_list then
									if ack_response_list.last.action.is_equal ("response") then
										-- Everything works right: Server can continue its execution..
									else
										-- Something goes wrong: a rescue process should be thrown since this part of code
										-- should never be reached..
										raise ("EXCEPTION")
									end
								end

								accepted_socket.close
							end
						end

					else
						-- If the message was invalid the server simply closes the connection
						accepted_socket.close
					end
				else
					accepted_socket.close
				end
			end
		end

	manage_game_phase
			-- During the game phase the server will continue to switch between a phase
			-- in which messages are sent to the LOGIC component and one in which
			-- G5_MESSEGES_CONTAINER objects are sent to the clients.
			-- This cyclic procedure will continue until the game is ended and
			-- players don't accept to play a rematch.
		do
			from
			until
				-- When after the end of a game the choice of not taking a rematch is
				-- performed this condition is verified. It may be also verified if a
				-- player decides to leave the game and the match can't continue.
				no_rematch_taken or critical_disconnection
			loop
				if rematch_choice_was_called and not(no_rematch_taken) then
					-- In this case a new game is started because the rematch result
					-- was true.
					start_game (server_logic.get_player_names)
					rematch_choice_was_called := false
				end

				send_messages_to_logic
				send_messages_to_clients
			end

				-- In this feature the server sends the last messages to the clients
				-- before closing them.
				inform_clients_on_termination

				-- Here all sockets are closed so that server can terminate..
				cleaning_procedure

		end

	send_messages_to_logic
			-- This feature simply checks that one or more message has been sent by the clients.
			-- If this event is verified, all the received messages are forwarded to the LOGIC
			-- component, which will use their information.
		do
			if(not(incoming_messages.is_empty)) then
				server_logic.set_respose (incoming_messages)
				incoming_messages.wipe_out
			end
		ensure
			all_messages_are_redirected: incoming_messages.is_empty
		end

	enque_message_into_containers(socket_message: G5_MESSAGE)
			-- This feature receives a G5_MESSAGE and by looking at its attribute "targets",
			-- it puts a copy of this message into the G5_MESSAGES_CONTAINERS of
			-- every involved player.
		require
			valid_message: socket_message /= void
			consistent_source: socket_message.source /= void and not(socket_message.source.is_empty)
			consistent_targets:
				socket_message.targets.for_all (agent (name: STRING): BOOLEAN
					do Result := (not(name.is_equal ("SERVER")) and not(name.is_equal (" ")) and not(name.is_empty)) end)
		local
			index: INTEGER
			current_player: STRING
		do
			from
				index := 1
			until
				-- If a critical disconnection is performed, then we can avoid send the other messages to the clients.
				index > socket_message.targets.count or critical_disconnection
			loop
				-- For all the sockets associated to a name in the array "targets"
				-- an instance of socket_message is enqued into its container.
				current_player := socket_message.targets.item (index)

				client_sockets.search (current_player)

				if client_sockets.found then
					message_containers_to_clients.search (current_player)

					if message_containers_to_clients.found then
						message_containers_to_clients.found_item.force (socket_message)
					end

				end

				index := index + 1
			end
		end

	send_messages_to_clients
			-- This feature sends the message container to the appropriate cliens.
			-- A container with no messages left won't be sent.
			-- After the delivery of the messages to every client, this feature will
			-- wait until one or more messages, including a response one, are retrieved
			-- from the involved client.
		local
			index: INTEGER
			current_player: STRING
			current_players: ARRAY [STRING]
		do
			current_players := message_containers_to_clients.current_keys

			from
				index := 1
			until
				index > message_containers_to_clients.count
			loop
				current_player := current_players.item (index)

				message_containers_to_clients.search (current_player)

				-- Check and send messages only for those containers which have messages..
				if not(message_containers_to_clients.found_item.is_empty) then
					-- Some messages must be sent to the current player through
					-- its socket..
					client_sockets.search (current_player)

					if client_sockets.found then
						-- The message container is stored on the correct socket.
						message_containers_to_clients.found_item.independent_store (client_sockets.found_item)

						-- The messages of this container can be erased.
						message_containers_to_clients.found_item.wipe_out

						-- Wait for messages sent by the client.
						wait_for_response_and_update(client_sockets.found_item)
					end

				end

				index := index + 1
			end
		ensure
		end

	wait_for_response_and_update(client_socket: NETWORK_STREAM_SOCKET)
			-- This feature is invoked after that a message container is sent to the Server.
			-- It put the Server waiting for at least a response message from the client.
			-- If more than one message is retrieved, all the instances with action different from
			-- "response", are stored in the list of the messags which will be forwarded to
			-- the LOGIC component.
		require
			client_socket_not_void: client_socket /= void
		do
			if attached {G5_MESSAGES_CONTAINER} retrieved (client_socket) as response_list then
				if response_list.last.action.is_equal ("response") then
					-- Everything works right: Server can continue its execution..
					if response_list.count > 1 then
						-- The client has generated some more G5_messages different from the simple one
						-- with "response" action. These messages must be stored in the Server and
						-- forwarded to the LOGIC component later.

						from
							response_list.start
						until
							response_list.off or critical_disconnection
						loop

							-- Only messeges with action different from response should be
							-- forwarded to the LOGIC component.
							if not(response_list.item.action.is_equal ("response")) then

								-- Here the case in which a player has left is managed
								if(response_list.item.action.is_equal ("leave")) then
									-- Now the LOGIC is informed about the disconnection of a player
									-- DISCONNECTION FEATURE!!! Needs disconnect to return a correct BOOLEAN!
									if server_logic.disconnect (response_list.item.source) then

										-- Here the disconnection is not critical so the game can continue.
										-- Only this client and all its correlated objects are removed.
										remove_a_player (response_list.item.source)

										-- Here a message to inform the other clients of the exit of this
										-- player is generated.
										enque_message_into_containers (create {G5_MESSAGE_TEXTUAL}.make
											(response_list.item.source, client_sockets.current_keys, "has_left", void))

									else
										-- Here the disconnection is critical and the game can't continue
										-- without the outgoing player. The match must be terminated.
										critical_disconnection := true
									end

								else

									-- In this case all the clients who don't want to have a rematch are immediately disconnected.
									if (response_list.item.action.is_equal ("rematch_choice:not_taken")) then
										remove_a_player (response_list.item.source)
									end

									-- The message is enqueed to be sent to the LOGIC component.
									incoming_messages.force (response_list.item)
								end
							end

							response_list.forth
						end
					end
				else
					-- Something goes wrong: a rescue process should be thrown since this part of code
					-- should never be reached..
					raise ("EXCEPTION")
				end
			end
		end

	remove_a_player(player_name: STRING)
			-- This feature removes the current player from the network management if it exists.
		require
			valid_player: message_containers_to_clients.has (player_name) and client_sockets.has (player_name)
		do
			-- Only this client and all its correlated objects are removed.
			message_containers_to_clients.remove (player_name)
			client_sockets.search (player_name)
			client_sockets.found_item.close
			client_sockets.remove (player_name)

			-- The maximum number of accepted connections must be decreased.
			max_connections := max_connections - 1
		ensure
			decrement_of_connections: max_connections = old max_connections - 1
			player_has_been_erased_on_sockets:
				not(client_sockets.has (player_name))
				and client_sockets.count = old client_sockets.count - 1
			player_has_been_erased_on_message_containers:
				not(message_containers_to_clients.has (player_name))
				and message_containers_to_clients.count = old message_containers_to_clients.count - 1
		end

	inform_clients_on_termination
			-- This feature will inform the clients on the reason why the server will stop its activity.
			-- There are two main reason: no rematch was taken or a critical disconnection was performed.
		local
			index: INTEGER
			current_player: STRING
			current_players: ARRAY [STRING]
			final_message: G5_MESSAGE_TEXTUAL
		do
			-- The final message is generated depending on the exit reason from the game phase.
			if no_rematch_taken then
				create final_message.make("SERVER", current_players, "terminate_game", "no_rematch_taken")
			elseif critical_disconnection then
				create final_message.make("SERVER", current_players, "terminate_game", "critical_disconnection")
			end

			current_players := message_containers_to_clients.current_keys

			-- The list of messages in all the containers are erased..
			from
				index := 1
			until
				index > message_containers_to_clients.count
			loop
				current_player := current_players.item (index)

				message_containers_to_clients.search (current_player)

				-- Check and send messages only for those containers which have messages..
				if not(message_containers_to_clients.found_item.is_empty) then
					-- Some messages must be sent to the current player through
					-- its socket..
					client_sockets.search (current_player)

					if client_sockets.found then
						-- The previous stored messages of this container are erased..
						message_containers_to_clients.found_item.wipe_out

						-- ..while the final message, which informs the clients, is enqueed.
						enque_message_into_containers (final_message)

						-- The message container is stored on the correct socket.
						message_containers_to_clients.found_item.independent_store (client_sockets.found_item)
					end

				end

				index := index + 1
			end

		end

	cleaning_procedure
			-- This procedure is invoked at the end of a game. It ends all the connection with
			-- the clients by closing the associated sockets. Finally it closes the initial socket.
		local
			keys: ARRAY[STRING]
			index: INTEGER
		do
			-- A set of calls in order to close all the sockets of the different connected clients
			keys := client_sockets.current_keys

			from
				index := 1
			until
				index = keys.count + 1
			loop
				client_sockets.search (keys.item (index))
				if client_sockets.found then
					client_sockets.found_item.close
				end
				index := index + 1
			end

			-- Finally the initial listening socket is closed
			reception_socket.cleanup

		end


feature {G5_NET_SERVER, TEST_SET_G5_NET_SERVER} -- Communication through sockets

	send_message_to (socket_message: G5_MESSAGE)
			-- This feature is used when the net server must send a specific message received from
			-- the LOGIC component to all the desired clients, listed in the target array of the
			-- G5_MESSAGE instance, through their sockets.
		require
			valid_message: socket_message /= void
			consistent_source: socket_message.source /= void and not(socket_message.source.is_empty)
			consistent_targets:
				socket_message.targets.for_all (agent (name: STRING): BOOLEAN
					do Result := (not(name.is_equal ("SERVER"))) end)
		local
			index: INTEGER
		do
			from
				index := 1
			until
				index = socket_message.targets.count + 1
			loop
				-- For all the sockets associated to a name in the array "targets"
				-- an instance of socket_message is sent.
				client_sockets.search (socket_message.targets.item (index))

				if client_sockets.found then
					socket_message.independent_store (client_sockets.found_item)

					-- If a message is sent to a certain socket, its attribute
					-- 'has_message_for_client' must be set on true.
--					client_sockets.found_item.set_has_message_for_client
				end

				index := index + 1
			end
		ensure
			-- G5_MESSAGE is sent only to the correct clients.
--			appropriate_sockets_have_message_for_client:
--				socket_message.targets.for_all (agent (target_name: STRING): BOOLEAN
--					do Result := (client_sockets.item (target_name).has_message_for_client) end)
		end

	-- TO BE EVALUATED..
--	require_message_from(source_names: ARRAY [STRING])
--			-- This procedure will be invoked every time a server start waiting for a G5_MESSAGE
--			-- sent by one or more sources, whose name is reported in the array source_name.
--		require
--			valid_sources:
--				source_names /= void and
--				source_names.for_all (agent (name: STRING): BOOLEAN
--					do Result := (name /= void and not(name.is_equal ("SERVER"))) end)
--		do

--		ensure
--			-- Server will wait only for the messages generated by the desidered clients
--		end

feature {G5_LAUNCHER} -- Setter for host_thread_as_client

	set_host_thread_as_client(a_host_thread_as_client: G5_CLIENT_THREAD)
		require
			a_host_thread_as_client_not_void:
				a_host_thread_as_client /= void
			host_thread_as_client_has_not_been_still_set:
				host_thread_as_client = void
		do
			host_thread_as_client := a_host_thread_as_client
		ensure
			host_thread_as_client = a_host_thread_as_client
		end

invariant
	-- class invariant

	max_connections_is_valid:
		max_connections >= client_sockets.count

end

