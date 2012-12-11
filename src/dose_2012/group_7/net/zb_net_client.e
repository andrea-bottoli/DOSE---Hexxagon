note
	description: "NET stuff"
	authors: "Debrecen1"
	date: "12.11.2011"
	revision: "1.0"

class
	ZB_NET_CLIENT

create
	make

feature {ANY} -- TODO: restrict to gui

	make(a_controller: ZB_GUI_CONTROLLER)
		do
			controller := a_controller
			is_connected := FALSE
		end

	is_connected: BOOLEAN
	socket: NETWORK_DATAGRAM_SOCKET
	controller: ZB_GUI_CONTROLLER

feature {ZB_GUI_CONTROLLER}

	connect_to(a_server_ip: STRING; a_port: INTEGER)
			-- Connects to the specified server.
		require
			is_connected = FALSE
			socket = Void
		do

		ensure
			is_connected = TRUE
			socket /= Void
		end

	disconnect()
			-- Disconnects from the current server.
		require
			is_connected = TRUE
			socket /= Void
		do

		ensure
			is_connected = FALSE
			socket = Void
		end

	sendRotate()
		-- This function will be called by the GUI component to ask
		-- for the rotation of the current map card to place
		require
			is_connected = TRUE
		do

		ensure

		end

	sendPlaceMapCard(a_position: ZB_POSITION)
		-- This function will be called by the GUI component to ask
		-- for the placing of the current map card
		require
			is_connected = TRUE
			a_position /= Void
		do

		ensure

		end

	sendRollDice()
		-- This function will be called by the GUI component to ask
		-- for rolling a dice
		require
			is_connected = TRUE
		do

		ensure

		end

	sendUseHeartToken()
		-- This function will be called by the GUI component to ask
		-- for using a Heart Token
		require
			is_connected = TRUE
		do

		ensure

		end

	sendUseBulletTokens(a_count: INTEGER)
		-- This function will be called by the GUI component to ask
		-- for using Bullet Tokens
		require
			is_connected = TRUE
			a_count > 0
		do

		ensure

		end

	sendMovePeon(a_position: ZB_POSITION)
		-- This function will be called by the GUI component to ask
		-- for moving a peon
		require
			is_connected = TRUE
			a_position /= Void
		do

		ensure

		end

	sendEndMovement()
		-- This function will be called by the GUI component to ask
		-- for ending the movement phase whether the player
		-- chooses not to use all the movement steps that he got
		-- from the previous dice roll.
		require
			is_connected = TRUE
		do

		ensure

		end

--	sendMoveZombie(a_start_pos: ZB_POSITION)
--		-- This function will be called by the GUI component to ask
--		-- for moving a zombie during the zombie movement phase
--		-- of the active player turn
--		-- TODO: dest pos?
--		require
--			is_connected = TRUE
--			a_position /= Void
--		do

--		ensure

--		end

	sendDiscardEventCard(a_ecard: ZB_EVENT_CARD)
		-- This function will be called by the GUI component to ask
		-- for discarding an event card at the end of the active
		-- player turn.
		require
			is_connected = TRUE
			a_ecard /= Void
		do

		ensure

		end

	sendEndTurn()
		-- This function will be called by the GUI component to ask
		-- for ending the turn without discarding an Event Card
		require
			is_connected = TRUE
		do

		ensure

		end

	sendMoveZombie(a_position: ZB_POSITION)
		-- This function will be called by the GUI component to ask
		-- for placing new zombies on a map card
		require
			is_connected = TRUE
			a_position /= Void
		do

		ensure

		end

	sendUseEventCard(a_ecard: ZB_EVENT_CARD)
		-- This function will be called by the GUI component to ask
		-- for using an event card.
		require
			is_connected = TRUE
			a_ecard /= Void
		do

		ensure

		end

	sendRequestPlayerState(a_player: ZB_PLAYER)
		-- This function will be called by the GUI component to ask
		-- for the current state of a player.
		-- TODO: the GUI won't need this if we implement everything
		-- correctly, since the LOGIC component will send every update
		-- to all players automatically
		require
			is_connected = TRUE
			--a_ecard /= Void
		do

		ensure

		end

	sendAddNewPlayer()
		-- This function will be called by the GUI component to ask
		-- for adding a new player at the beginning of the game.
		-- TODO: rename to join or something?
		require
			is_connected = TRUE
		do

		ensure

		end

	sendQuitPlayer()
		-- This function will be called by the GUI component to ask
		-- for quitting the game.
		-- TODO: rename to leave?
		require
			is_connected = TRUE
		do

		ensure

		end

	-- TODO: chat?

feature {NONE}

	send_message(a_message: ZB_MESSAGE)
			-- Sends a serialized message to the server.
		require
			is_connected = TRUE
		do

		ensure

		end

end
