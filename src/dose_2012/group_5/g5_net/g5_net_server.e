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

	reception_socket: detachable G5_NET_SOCKET
			-- This socket is the one who will wait for clients request of connection.

	max_connections: INTEGER
	 		-- This integer represents the maximum number of simultaneous connections to this server.

	connection_attempts: HASH_TABLE[BOOLEAN, STRING]
			-- This table will keep a sort of register of all names used by clients to attempt a connection.
			-- In particular it will store if a client succeded or not to connect by using a certain name.

	incoming_messages: LINKED_LIST[G5_MESSAGE]
			-- This list contains all the messages received by the server from the different clients.

	outgoing_messages: LINKED_LIST[G5_MESSAGE]
			-- This is the list of all the messages that are waiting to be sent to the proper clients.

	expected_client_responses: INTEGER
			-- This integer represents the number of messages that the server must receive from the clients
			-- before it can restart sending messages to them.

	clean_up_condition: BOOLEAN
			-- When this boolean is set to true it means that a match is over and a rematch choice
			-- was not taken, so the all system should be shutted down and the sockets must be close.

	end_game_condition: BOOLEAN
			-- This boolean is set on true when a game is ended.

	is_ready_to_start: BOOLEAN
			-- When this boolean is true, server can start to accept clients.

	client_sockets: detachable HASH_TABLE[G5_NET_SOCKET, STRING]
			-- This is the table of the sockets connected to this server. Every socket will be linked
			-- with a playing client and it will be identified with the validated player name, that
			-- the client used to identify itself during the previous connection process with the server.

	host_thread_as_client: G5_CLIENT_THREAD
			-- The host_thread is used to make the host connect as a client to its own game.

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
			create outgoing_messages.make
			create connection_attempts.make (10)
			create client_sockets.make (4)
			expected_client_responses := 0

		ensure
			-- server is correctly initialized.
			correct_initialization:
				max_connections = number_max_clients and
				clean_up_condition = false and
				end_game_condition = false and
				is_ready_to_start = false and
				host_thread_as_client = void and
				reception_socket /= void and
				incoming_messages.is_empty and
				outgoing_messages.is_empty and
				connection_attempts.is_empty and
				client_sockets.is_empty and
				expected_client_responses = 0

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
			keys: ARRAY[STRING]
			index: INTEGER
			start_message: G5_MESSAGE_TEXTUAL
			clients_are_ready: BOOLEAN
			response_list: LINKED_LIST [G5_MESSAGE]
		do
			-- A call in order to obtain all the sockets of the different connected clients.
			keys := client_sockets.current_keys

			from
				index := 1
			until
				index = keys.count + 1
			loop
				-- Create a new textual message with "start" as an action and send to all players.
				create start_message.make ("SERVER", players, "start", void)

				-- Send this message by retrieving all the opened sockets, one by one.
				client_sockets.search (keys.item (index))
				start_message.independent_store (client_sockets.found_item)

				-- A message must be retrieved by the client.
				client_sockets.found_item.set_has_message_for_client

				index := index + 1
			end


			-- In this part server will wait until all clients have read the start message
		 	-- (has_message_for_client is on false)  	
			from
		 	until
		 		clients_are_ready
			loop
		 		clients_are_ready := true

				from
					index := 1
				until
					index = client_sockets.count + 1 or not(clients_are_ready)
		 	 	loop
		 	 		client_sockets.search (keys[index])
		 	 		if client_sockets.found_item.has_message_for_client then
						clients_are_ready := false
					end
				end
			end

			-- This section of code sends a message to the LOGIC component to inform it
			-- than new messages (initial cards, new turn and new phase.. ) should be sent
		 	-- to the clients.

			create response_list.make
		 	create start_message.make ("NET_SERVER", <<"SERVER">>, "start_logic", void)
		 	response_list.force(start_message)
		 	server_logic.set_respose (response_list)

			-- After all the initializaion steps are ended, the game can actually start.
			manage_game_phase
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
		local
			keys: ARRAY [STRING]
			index: INTEGER
			end_message: G5_MESSAGE_END_GAME
		do

			-- Send scores through the Sockets to the clients
			-- A call in order to obtain all the sockets of the different connected clients.
			keys := client_sockets.current_keys

			from
				index := 1
			until
				index = keys.count + 1
			loop
				-- Create a new end message and send it to all players.
				create end_message.make ("SERVER", keys, "end", scores)

				-- The end_message is added at the end of the list of the outgoing messages.
				outgoing_messages.force (end_message)

				index := index + 1
			end

			end_game_condition := true

		ensure then

			end_game_condition_is_on: end_game_condition = true
			a_new_end_message_was_added:
				outgoing_messages.count = old outgoing_messages.count + 1 and
				attached {G5_MESSAGE_END_GAME} outgoing_messages.last

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
--			connection_attempts.force (valid_connection, a_player_name)

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

		end

	update (received_messages: LINKED_LIST[G5_MESSAGE])
			-- Incoming messages coming from the LOGIC component are
			-- appended to the outgoing_messages list.
		do
			if outgoing_messages.is_empty then
				outgoing_messages := received_messages
			else
				received_messages.append (outgoing_messages)
			end
		ensure then
			all_messages_were_stored_in_outgoing_list:
				received_messages.for_all (agent (message: G5_MESSAGE): BOOLEAN
				do
					Result := (outgoing_messages.has (message))
				end) and
				outgoing_messages.count = old outgoing_messages.count + received_messages.count
		end

feature {G5_NET_SERVER} -- Server Internal Operations

	accept_client
			-- When this feature is invoked a new client will be waited on the receiving_socket.
			-- An incoming client will be redirected on an other socket. If the server validates the name of the
			-- new client then it is saved into the hash table of the client sockets.
		local
			connection_result_message: G5_MESSAGE_TEXTUAL
				-- This message will be sent to the incoming client to inform it about the result of the procedure

			connection_on_logic: BOOLEAN
				-- This boolean tells if the attempt of connection to the server logic by this client was successful or not
		do
			-- In this extract the client thread of the host is launched to make it connect to its own game..
			if client_sockets.is_empty then
--				host_thread_as_client.launch
			end

			reception_socket.accept

			if attached reception_socket.accepted as accepted_socket then
				if attached {G5_MESSAGE_TEXTUAL} retrieved (accepted_socket) as connect_message then
					if connect_message.action.is_equal ("connect") then
						connection_on_logic := server_logic.connection (connect_message.source)
						if connection_on_logic then
							-- This is a valid connection so this socket must be stored into client sockets table
							client_sockets.put (accepted_socket, connect_message.source)

							-- A message of valid connection must be sent to the client
							create connection_result_message.make ("SERVER", <<connect_message.source>>, "connect_result", "accepted")

							-- The result message is sent through the socket
							connection_result_message.independent_store (accepted_socket)

							-- A message with the names of all connected players plus the new one is sent to all the clients
							create connection_result_message.make ("SERVER", client_sockets.current_keys , "accepted_client", void)
							send_message_to (connection_result_message)

						else
							if connection_attempts.item (connect_message.source) then
								-- This is an invalid connection since the maximum number of players
								-- have been already reached.
								create connection_result_message.make ("SERVER", <<connect_message.source>>,
								 "connect_result", "refused:max_player")
							else
								-- This is an invalid connection since the name used by the player
								-- has been already taken by another player.
								create connection_result_message.make ("SERVER", <<connect_message.source>>,
								 "connect_result", "refused:invalid_name")
							end

							-- In both cases the message of refused connection is sent back before
							-- closing the socket
							connection_result_message.independent_store (accepted_socket)
							accepted_socket.close
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
			-- During the game phase the server will continue to switch between the
			-- sending message phase and the receving one until the game is ended and
			-- players don't accept to play a rematch.
		do
			from
			until
				-- When the table with the result of the game is obtained and no other
				-- messages must be sent to the clients then a game is ended.
				end_game_condition and outgoing_messages.is_empty
			loop
				sending_message_phase
				receving_message_phase
			end

				-- Rematch choice routine

				-- If rematch is not taken
				cleaning_procedure

		end

	sending_message_phase
			-- This game phase at first checks that no message from any other player is still
			-- waited. If this condition is verified, messages are sent. In particular if a
			-- message needs to receive an answer the correspondent source of the response is
			-- added to the expected clients list.
		do
			if not(outgoing_messages.is_empty) then
				from
					outgoing_messages.start
				until
					outgoing_messages.off or expected_client_responses > 0
				loop
						-- The number of expected responses is increased depending on the type of the message
					expected_client_responses := expected_client_responses + check_number_of_responses(outgoing_messages.item)

						-- The oldest item (the first one of this iteration) of the list of outgoing
						-- messages is sent to all the requestd targets.
					send_message_to (outgoing_messages.item)

						-- The item of the outgoing list, that has just been sent, is removed.
					outgoing_messages.forth
					outgoing_messages.remove_left

				end
			end
		ensure
			outgoing_messages_can_only_decrease:
				outgoing_messages.count <= old outgoing_messages.count
		end

	check_number_of_responses(message_to_be_evaluated: G5_MESSAGE): INTEGER
			-- This method checks how many responses the clients must send to the server in
			-- order to properly answer to its message. This number is finally returned.
		require
			no_void_message:
				message_to_be_evaluated /= void
		do
			-- ACTION MESSAGE CASES
			if message_to_be_evaluated.action.is_equal ("reveal") then Result := 0
			elseif message_to_be_evaluated.action.is_equal ("put_in_hand") then Result := 0
			elseif message_to_be_evaluated.action.is_equal ("put_on_top_discard") then Result := 0
			elseif message_to_be_evaluated.action.is_equal ("cards_in_trash") then Result := 0
			-- The played action is much more complex and it will return a different number of
			-- actions depending on the card played. For now it will always need a unique
			-- message of response
			elseif attached {G5_MESSAGE_ACTION} message_to_be_evaluated as action_message then
					if action_message.action.is_equal ("played") then Result := check_played(action_message)
					end
			elseif message_to_be_evaluated.action.is_equal ("select_from_supply") then Result := 1
			elseif message_to_be_evaluated.action.is_equal ("keep_or_not_card") then Result := 1
			elseif message_to_be_evaluated.action.is_equal ("select_from_hand") then Result := 1
			elseif message_to_be_evaluated.action.is_equal ("resolved_card") then Result := 1

			-- TEXTUAL MESSAGE CASES
			elseif message_to_be_evaluated.action.is_equal ("display") then Result := 0
			elseif attached {G5_MESSAGE_TEXTUAL} message_to_be_evaluated as textual_message then
					if textual_message.action.is_equal ("new_phase") then Result := check_new_phase (textual_message)
					end
			elseif message_to_be_evaluated.action.is_equal ("new_turn") then Result := 0

			-- THIEF MESSAGE CASES
			elseif message_to_be_evaluated.action.is_equal ("update_thief_trash") then Result := 0
			elseif message_to_be_evaluated.action.is_equal ("update_thief_gain") then Result := 0

			-- UPDATE MESSAGE CASES
			elseif message_to_be_evaluated.action.is_equal ("update_state") then Result := 0
			elseif message_to_be_evaluated.action.is_equal ("update_supply") then Result := 0

			-- END_GAME MESSAGE CASES
			elseif message_to_be_evaluated.action.is_equal ("end") then Result := 0

			-- Here it will be added the case of rematch choice..

			end
		ensure
			valid_range_of_the_result:
				Result >= 0 and Result <= 4
		end

	check_played(evaluated_message: G5_MESSAGE_ACTION): INTEGER
			-- This subroutine will evaluate how many responses are needed to
			-- resolve a message with action "played"
		require
			not_void_message: evaluated_message /= void
			valid_action: evaluated_message.action.is_equal ("played")
		do
			-- NOT COMPLETELY IMPLEMENTED!!!
			Result := 1
		ensure
			valid_range_of_the_result:
				Result >= 0 and Result <= 4
		end

	check_new_phase(evaluated_message: G5_MESSAGE_TEXTUAL): INTEGER
			-- This subroutine will evaluate how many responses are needed to
			-- resolve a message with action "new phase"
		require
			not_void_message: evaluated_message /= void
			valid_action: evaluated_message.action.is_equal ("new_phase")
		do
			if evaluated_message.textual_message.is_equal ("Action") then Result := 1
			elseif evaluated_message.textual_message.is_equal ("Buy") xor
					evaluated_message.textual_message.is_equal ("Clean-up") then Result := 0
			end

		ensure
			valid_range_of_the_result:	Result = 0 or Result = 1
			valid_result:
				Result = 0 implies (evaluated_message.textual_message.is_equal ("Buy") xor
									evaluated_message.textual_message.is_equal ("Clean-up"))
				and Result = 1 implies evaluated_message.textual_message.is_equal ("Action")
		end

	receving_message_phase
			-- if some messages must be received from clients, this feature continues
			-- to check all the sockets and when one of them reports its intention to
			-- send a message, it retrieves and forwards this message to the LOGIC component.
		local
			keys: ARRAY [STRING]
			index: INTEGER
			stop_retrieving_from_this_socket: BOOLEAN
		do
			index := 1
			keys := client_sockets.current_keys

			-- In the first phase of the algorithm the sockets which will have one or more messages for
			-- the server are periodically checked..
			from
			until
				expected_client_responses = 0
			loop
				client_sockets.search (keys.item (index))

				stop_retrieving_from_this_socket := false

				if client_sockets.found and client_sockets.found_item.has_message_for_server then
					from
					until
						stop_retrieving_from_this_socket or expected_client_responses = 0
					loop
						-- If a socket has one or more messages to transmit, this objects will be placed
						-- into incoming_messages list and the number of expected responses is decreased by
						-- the number of received messages.

						if attached {G5_MESSAGE} retrieved (client_sockets.found_item) as received_message then
							incoming_messages.force (received_message)
							expected_client_responses := expected_client_responses - 1
						else
						-- When no further messages are found on a specific socket, its attribute
						-- 'has_message_for_server' is resetted and the following socket is analysed.
							client_sockets.found_item.reset_has_message_for_server
							stop_retrieving_from_this_socket := true
						end
					end
				end

				-- Indexes are incremented depending on the position in the list. If we are at the end of the
				-- list, during the next iterian we shall return to the beginning.
				if index = client_sockets.count then
					index := 1
				else
					index := index + 1
				end
			end

			-- In the final phase the list of the incoming_messages is passed to the LOGIC component
			-- for evaluation and finally all its previous content is trashed.
			server_logic.set_respose (incoming_messages)
			incoming_messages.wipe_out

		ensure
			all_messages_are_redirected: incoming_messages.is_empty
			all_sockets_has_no_messages_left:
				client_sockets.current_keys.for_all (agent (player_name: STRING): BOOLEAN do
				Result := (not(client_sockets.item (player_name).has_message_for_server))
				end)
				and expected_client_responses = 0
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
					client_sockets.found_item.set_has_message_for_client
				end

				index := index + 1
			end
		ensure
			-- G5_MESSAGE is sent only to the correct clients.
			appropriate_sockets_have_message_for_client:
				socket_message.targets.for_all (agent (target_name: STRING): BOOLEAN
					do Result := (client_sockets.item (target_name).has_message_for_client) end)
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

	expected_client_responses_must_be_not_negative:
		expected_client_responses >= 0

end

