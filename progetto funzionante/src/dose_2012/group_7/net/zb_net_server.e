note
	description: "NET stuff"
	authors: "Debrecen1"
	date: "12.11.2011"
	revision: "1.0"

class
	ZB_NET_SERVER

create
	make

feature {ANY} -- TODO: restrict to logic

	make(a_controller: ZB_LOGIC)
		do
			is_initialized := FALSE
		end

	is_initialized: BOOLEAN
	socket: NETWORK_DATAGRAM_SOCKET

	controller: ZB_LOGIC

feature {ZB_LOGIC}

	start_server()
			-- Starts the server.
		require
			is_initialized = FALSE
			socket = Void
		do

		ensure
			is_initialized = TRUE
			socket /= Void
		end

	stop_server()
			-- Stops the server.
		require
			is_initialized = TRUE
			socket /= Void
		do

		ensure
			is_initialized = FALSE
			socket = Void
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
			a_direction /= Void
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
			a_error_code /= Void
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
