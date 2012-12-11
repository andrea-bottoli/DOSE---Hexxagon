note
	description: "Dummy"
	author: "Debrecen1"
	date: "13.11.2012"
	revision: "0.0.1"

deferred class
	ZB_GUI_CONTROLLER

feature

	connect()
			-- Connects to the specified server.
		require

		do

		ensure

		end

	disconnect()
			-- Disconnects from the current server.
		require

		do

		ensure

		end

	rotate()
		-- This function will be called for rotate the map tile (by 90 degrees with each call)
		require

		do

		ensure

		end

	placeMapCard(a_position: ZB_POSITION)
		-- This function will be called for the placing of the current map card
		require
			a_position /= Void
		do

		ensure

		end

	sendRollDice()
		-- This function will be called to rolling a six sided dice
		require

		do

		ensure

		end

	useHeartToken()
		-- This function will be called for show the Heart Token usage's effect
		require

		do

		ensure

		end

	useBulletTokens(a_count: INTEGER)
		-- Just like useHeartToken
		require
			a_count > 0
		do

		ensure

		end

	movePeon(a_position: ZB_POSITION)
		-- This function will be called for moving a peon
		require
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
		do

		ensure

		end

	moveZombie(a_start_pos: ZB_POSITION; dest_pos: ZB_POSITION)
		-- This function will be called for moving a zombie during the zombie movement phase
		-- of the active player turn
		require
			a_start_pos /= Void
			dest_pos /= Void
		do

		ensure

		end

	discardEventCard(a_ecard: ZB_EVENT_CARD)
		-- This function will be called discarding an event card at the end of the active
		-- player turn.
		require
			a_ecard /= Void
		do

		ensure

		end

	endTurn()
		-- This function will be called for ending the turn without discarding an Event Card
		require
		do

		ensure

		end

	createZombie(a_position: ZB_POSITION)
		-- This function will be called by the GUI component to ask
		-- for placing new zombies on a map card
		require
			a_position /= Void
		do

		ensure

		end

	useEventCard(a_ecard: ZB_EVENT_CARD)
		-- This function will be called for using an event card.
		require
			a_ecard /= Void
		do

		ensure

		end

	placePlayer(a_player: ZB_PLAYER)
		-- This function will be called for placing a player on the map.
		require

		do

		ensure

		end

	sendAddNewPlayer(a_player: ZB_PLAYER)
		-- This function will be called for adding a new player to the map.
		require

		do

		ensure

		end

	quitPlayer()
		-- This function will be called for quitting the game.
		-- TODO: rename to leave?
		require
		do

		ensure

		end

	-- TODO: chat?
end
