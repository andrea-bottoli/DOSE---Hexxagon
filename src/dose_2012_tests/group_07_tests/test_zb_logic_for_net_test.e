note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"


class
	TEST_ZB_LOGIC_FOR_NET_TEST


	inherit
		ZB_LOGIC
			redefine
				isActivePlayer, rotate, placeMapCard, rollDice, useHT, useBT, movePeon, endMovement, moveZombie, endTurn, placeZombie, playerState
				end
				--To fix and add addNewPlayer, quitPlayer

	feature


		isActivePlayer (player: ZB_PLAYER): BOOLEAN
		--Returns True if player is the Active Player


			do
				Result := true
				called_isActivePlayer := true
				playerTEST := player.twin


			end

		called_isActivePlayer:BOOLEAN

		playerTEST:ZB_PLAYER

		rotate(player:ZB_PLAYER;clockwise:BOOLEAN)
		--Rotate the current map card

			do
				called_rotate:=true
				playerTEST := player.twin

			end

		called_rotate:BOOLEAN

		placeMapCard(player:ZB_PLAYER;position:ZB_POSITION)
		--place current map card

				do
				called_placeMapCard:=true
				position_placeMapCard:=position.twin
				playerTEST := player.twin


				end

		called_placeMapCard:BOOLEAN

		position_placeMapCard:ZB_POSITION

		rollDice (player:ZB_PLAYER)
		--roll a dice

				do
				called_rollDice:=true
				playerTEST := player.twin

				end

		called_rollDice:BOOLEAN


		useHT(player: ZB_PLAYER)
		--use an Heart Token

				do
				called_useHT:=true
				playerTEST := player.twin

				end

		called_useHT:BOOLEAN

		useBT(player:ZB_PLAYER ; numberBT:INTEGER)
		--use a Bullet Token

				do
				  called_useBT:=true
				  numberBT_useBT:=numberBT
				  playerTEST:=player.twin

				end

		called_useBT:BOOLEAN
		numberBT_useBT:INTEGER

		movePeon(player:ZB_PLAYER ; position: ZB_POSITION)
		--move a player peon

				do
					called_movePeon:=true
					position_movePeon:=position.twin
					playerTEST:=player.twin

				end


		called_movePeon:BOOLEAN

		position_movePeon:ZB_POSITION

		endMovement(player: ZB_PLAYER)
		--ends the player movement

				do
				called_endMovement:=true
				playerTEST:=player.twin
				end

		called_endMovement:BOOLEAN

		moveZombie(startPosition,endPosition:ZB_POSITION ; player: ZB_PLAYER)
		--move a zombie from SP to EP
				do
					called_moveZombie:=true
					startPosition_moveZombie:=startPosition.twin
					endPosition_moveZombie:=endPosition.twin
					playerTEST:=player.twin

				end

		called_moveZombie:BOOLEAN
		startPosition_moveZombie,endPosition_moveZombie:ZB_POSITION

		discardEventCard(player: ZB_PLAYER; eventCard: ZB_EVENT_CARD)
		-- discard an event card

				do
				called_discardEventCard:=true
				playerTEST:=player.twin
				eventCard_discardEventCard:=eventCard.twin
				end

		called_discardEventCard: BOOLEAN
		eventCard_discardEventCard:ZB_EVENT_CARD

		endTurn(player: ZB_PLAYER)
		--end the turn of the active player

				do
				called_endTurn:=true
				playerTEST:=player.twin
				end

		called_endTurn:BOOLEAN

		placeZombie(player: ZB_PLAYER; position: ZB_POSITION)
		--place a zombie in a map card

			do

			called_placeZombie:=true
			playerTEST:=player.twin
			position_placeZombie:=position.twin
				end

		called_placeZombie:BOOLEAN
		position_placeZombie:ZB_POSITION

		useEventCard(player: ZB_PLAYER;eCard:ZB_EVENT_CARD)
		--use an event card

				do
			called_useEventCard:=true
			playerTEST:=player.twin
			eventCard_useEventCard:=eCard.twin


				end

		called_useEventCard:BOOLEAN
		eventCard_useEventCard:ZB_EVENT_CARD

		playerState(player: ZB_PLAYER):INTEGER
		--returns the player state

				do
			called_playerState:=true
			playerTEST:=player.twin

				end

		called_playerState:BOOLEAN

		--addNewPlayer(userID:INTEGER)
		----add a new player to the Game
		--	require
		--		userID/=Void and connectedPlayer.count()<=5
		--		do
		--			--impl
		--			ensure
		--				old connectedPlayer.count()+1=connectedPlayer.count()
		--		end

		--quitPlayer(userID:INTEGER)
		----a player leaves the game
		--	require
		--		userID/=Void
		--		do
		--			--impl
		--			ensure
		--				connectedPlayer.count()= old connectedPlayer.count()+1
		--		end



end
