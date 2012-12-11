note
	description: "NET stuff"
	authors: "Debrecen1"
	date: "02.12.2012"
	revision: "$Revision$"

class
	ZB_NET_SERVER

inherit
	NETWORK_SERVER
		redefine
			receive, received, close
		end

	THREAD
		rename
			execute as execute_thread,
			make as make_thread
		end

	-- TODO: why?
	STORABLE

create
	make_with_controller

feature

	is_initialized: BOOLEAN

	controller: ZB_LOGIC

	connections: LINKED_LIST [ZB_CONNECTION]

	-- TODO: make these local variables and arguments
	message_out: ZB_MESSAGE
	received: detachable ZB_MESSAGE

	-- TODO: understand these
	max_to_poll: INTEGER
	poll: MEDIUM_POLLER

feature {ZB_LOGIC}

	make_with_controller(a_controller: ZB_LOGIC)
		local
			l_port: INTEGER
			l_message_out: detachable like message_out
			l_connections: detachable like connections
			l_in: detachable like in
		do
			l_port := 18723

			make(l_port)

			max_to_poll := 1
			create poll.make_read_only
			in.set_non_blocking

			l_in := in
			create l_message_out.make
			message_out := l_message_out
			create l_connections.make
			connections := l_connections
			connections.compare_objects

			make_thread

			launch

			is_initialized := FALSE

			io.put_string ("initializing ZB_NET_SERVER...")
			io.put_new_line
		rescue
			io.error.putstring ("IN RESCUE%N")
			if l_message_out /= Void then
				--l_message_out.extend ("The server is down. ")
				--l_message_out.extend ("See you later...%N")
				--l_message_out.set_over (True)
				if l_connections /= Void then
					from
						l_connections.start
					until
						l_connections.after
					loop
						l_message_out.independent_store (l_connections.item.active_medium)
						l_connections.item.active_medium.close
						l_connections.forth
					end
				end
				if l_in /= Void and then not l_in.is_closed then
					l_in.close
				end
			end
		end

feature {NONE}

	execute_thread
		do
			execute
		end

	close
		do
		end

	process_message
		local
			stop: BOOLEAN
				-- When we receive a message tagged "over", we remove connections
				-- from the list, so we want to exit from the loop...
			pos: INTEGER
		do
			from
				connections.start
			until
				connections.after or stop
			loop
				if connections.item.is_waiting then
					if attached {ZB_MESSAGE} retrieved (connections.item.active_medium) as l_message_in then
						--if l_message_in.new then
						--	connections.item.set_client_name (l_message_in.client_name)
						--	create message_out.make
						--	message_out.set_client_name (l_message_in.client_name)
						--	message_out.extend (l_message_in.client_name)
						--	message_out.extend (" has just joined the server%N")
						--elseif l_message_in.over then
						--	poll.remove_associated_read_command (connections.item.active_medium)
						--	connections.remove
						--	create message_out.make
						--	message_out.set_client_name (l_message_in.client_name)
						--	message_out.extend (l_message_in.client_name)
						--	message_out.extend (" has just gone%N")
						--	stop := True
						--else
						--	message_out := l_message_in.deep_twin
						--	message_out.put_front (" has just sent that :%N")
						--	message_out.put_front (message_out.client_name)
						--	message_out.put_front ("-> ")
						--end
						pos := connections.index
						--l_message_in.print_message
						--message_out.print_message
						broadcast
						connections.go_i_th (pos)
					end
				end
				if not stop then
					connections.forth
				end
			end
		end

	broadcast
		local
			client_name: detachable STRING
		do
			client_name := "lolz" --message_out.client_name
			if client_name /= Void then
				from
					connections.start
				until
					connections.after
				loop
					if connections.item.client_name /~ client_name then
						message_out.independent_store (connections.item.active_medium)
					end
					connections.forth
				end
			end
		end

	receive
		do
			in.accept

			-- l_flow ?= in.accepted
			-- outflow := l_flow
			if attached {like outflow} in.accepted as l_flow then
				outflow := l_flow
				l_flow.set_blocking
				send_already_connected
				new_client
			else
				outflow := Void
			end

			initialize_for_polling
			poll.execute (max_to_poll, 15000)
		end

	initialize_for_polling
		do
			from
				connections.start
			until
				connections.after
			loop
				connections.item.initialize
				connections.forth
			end
		end

	new_client
		local
			new_connection: ZB_CONNECTION
			l_flow: like outflow
		do
			l_flow := outflow
			check l_flow_attached: l_flow /= Void end
			if max_to_poll <= l_flow.descriptor then
				max_to_poll := l_flow.descriptor + 1
			end
			create new_connection.make (l_flow)
			connections.extend (new_connection)
			poll.put_read_command (new_connection)
		end

	send_already_connected
		local
			l_name: detachable STRING
			l_flow: like outflow
		do
			create message_out.make
			if connections.count > 0 then
				--message_out.extend ("These people are already connected :")
				from
					connections.start
				until
					connections.after
				loop
					l_name := connections.item.client_name
					if l_name /= Void then
						--message_out.extend ("%N-> ")
						--message_out.extend (l_name)
					end
					connections.forth
				end
				--message_out.extend ("%N")
			else
				--message_out.extend ("Nobody is connected%N")
			end
			l_flow := outflow
			check l_flow_attached: l_flow /= Void end
			message_out.independent_store (l_flow)
		end

feature {ZB_LOGIC}

	start_server()
			-- Starts the server.
		require
			is_initialized = FALSE
			--socket = Void
		do

		ensure
			is_initialized = TRUE
			--socket /= Void
		end

	stop_server()
			-- Stops the server.
		require
			is_initialized = TRUE
			--socket /= Void
		do

		ensure
			is_initialized = FALSE
			--socket = Void
		end

feature {ZB_LOGIC}

	sendActivePlayer(a_player: ZB_PLAYER)
		-- This function will be called by the LOGIC component to
		-- tell who is the active player
		-- TODO: maybe rename to active player changed?
		require
			is_initialized = TRUE
			a_player /= Void
			-- TODO: check if the player is in the list of players
		do

		ensure

		end

	sendNewMapCard(a_map_card: ZB_MAP_CARD)
		-- This function will be called by the LOGIC component to
		-- tell which is the new map card
		require
			is_initialized = TRUE
			a_map_card /= Void
		do

		ensure

		end

	sendPlacedMapCard(a_map_card: ZB_MAP_CARD; a_position: ZB_POSITION)
		-- This function will be called by the LOGIC component to
		-- tell the clients about the mapcard placed
		require
			is_initialized = TRUE
			a_map_card /= Void
			a_position /= Void
		do

		ensure

		end

	sendRotated(a_direction: INTEGER)
		-- This function will be called by the LOGIC component to
		-- tell which is the sense of rotation
		require
			is_initialized = TRUE
			--a_direction /= Void
		do

		ensure

		end

	sendRollResult(a_roll: INTEGER)
		-- This function will be called by the LOGIC component to
		-- tell which is the result of dice roll
		require
			is_initialized = TRUE
			1 <= a_roll and a_roll <= 6
		do

		ensure

		end

	sendMoveToInitialPosition(a_player: ZB_PLAYER; a_position: ZB_POSITION)
		-- This function will be called by the LOGIC component to
		-- tell where the peon-player goes when he died.
		require
			is_initialized = TRUE
			a_player /= Void
			a_position /= Void
		do

		ensure

		end

	sendAddZombieToPlayer(a_player: ZB_PLAYER)
		-- This function will be called by the LOGIC component to
		-- tell when a zombie is added to a player's collection
		-- TODO: send the current of zombies too
		require
			is_initialized = TRUE
			a_player /= Void
		do

		ensure

		end


	sendEventCard(a_player: ZB_PLAYER; a_event_card: ZB_EVENT_CARD)
		-- This function will be called by the LOGIC component to
		-- tell what? TODO: the documentation does not make sense
		require
			is_initialized = TRUE
			a_player /= Void
			a_event_card /= Void
		do

		ensure

		end

	sendMovedZombie(a_pos_from: ZB_POSITION; a_pos_to: ZB_POSITION)
		-- This function will be called by the LOGIC component to
		-- tell players about a zombie movement
		require
			is_initialized = TRUE
			a_pos_from /= Void
			a_pos_to /= Void
		do

		ensure

		end


	sendError(a_player: ZB_PLAYER; a_error_code: INTEGER)
		-- This function will be called by the LOGIC component to
		-- notify a client about an error
		require
			is_initialized = TRUE
			a_player /= Void
			--a_error_code /= Void
		do

		ensure

		end

	-- TODO: several things are missing:
	--        - current HT count and updates
	--        - current BT count and updates
	--        - current player position and updates

feature {NONE}

	send_message_to(a_player: ZB_PLAYER; a_message: ZB_MESSAGE)
			-- Sends a serialized message to the specified
			-- player.
		require
			is_initialized = TRUE
			-- TODO: check if the player is in the list of players
		do

		ensure

		end

	send_broadcast(a_message: ZB_MESSAGE)
			-- Sends a serialized message to all players.
		require
			--is_master = TRUE
			-- TODO: player count > 0
		do

		ensure

		end

end
