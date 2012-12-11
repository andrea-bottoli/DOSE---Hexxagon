note
	description: "Main Class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
	ZB_LOGIC

	create
			make

feature

	make
		do
--			create net_server.make(Current)
--			create connectedPlayer.make
--          Gives the control to the net server to let player connect, once they are connected server is gonna give back
--			the control to logic calling startGame
--          net_server.start

		 end


activePlayer: ZB_PLAYER

net_server: ZB_NET_SERVER

startGame
	require connectedPlayer.count>=2
	do
		create cards.make
		create board.makeboard --The board has already the starting mapcard placed
		cards.fill
		cards.shuffle
		connectedPlayer.start
		activePlayer:=connectedPlayer.item
		currentMapCard:=cards.pick
	end

isActivePlayer (player: ZB_PLAYER): BOOLEAN
--Returns True if player is the Active Player
	require
		player /= Void

	do
		if player=activePlayer then Result:=true else Result:=false end
		ensure
			result/=Void
	end

board:ZB_BOARD
cards:ZB_MAPCARD_DECK
currentMapCard:ZB_MAP_CARD

rotate(player:ZB_PLAYER)
--Rotate the current map card
	require
		isActivePlayer(player)
	do

		ensure
			true
	end

placeMapCard(player:ZB_PLAYER;position:ZB_POSITION)
--place current map card
	require
		isActivePlayer(player) and position/=Void and activePlayer.inMapCardPlacement()
		do
			--impl
		ensure
			true

		end

rollDice (player:ZB_PLAYER)
--roll a dice
	require
		isActivePlayer(player)
		do
			--impl
		ensure
			true
		end
useHT(player: ZB_PLAYER)
--use an Heart Token
	require
		isActivePlayer (player) and activePlayer.inCombat() and activePlayer.ht()>0
		do
			--impl
			ensure
				old activePlayer.ht()=activePlayer.ht()+1
		end

useBT(player:ZB_PLAYER ; numberBT:INTEGER)
--use a Bullet Token
	require
		isActivePlayer(player) and activePlayer.inCombat() and numberBT>0 and activePlayer.bt()>=numberBT
		do
			--impl
			ensure
				old activePlayer.bt()=activePlayer.bt() + numberBT
		end

movePeon(player:ZB_PLAYER ; position: ZB_POSITION)
--move a player peon
	require
		player.inMovement()
		do
			--impl
			ensure
				true
		end

endMovement(player: ZB_PLAYER)
--ends the player movement
	require
		player.inMovement()
		do
			--impl
			ensure
				not player.inMovement()
		end

moveZombie(startPosition,endPosition:ZB_POSITION ; player: ZB_PLAYER)
--move a zombie from SP to EP
	require
		isActivePlayer(player) and startPosition/=Void and endPosition/=Void and activePlayer.inZombieMovement()
		do
			--impl
		ensure
			true
		end

--NOT PART OF THE PROTOTYPE
--discardEventCard(player: ZB_PLAYER; eventCard: ZB_EVENT_CARD)
---- discard an event card
--	require
--		isActivePlayer(player) and activePlayer.eventCard.count()>0 and activePlayer.turnOver()
--		do
--			--impl
--			ensure
--				old activePlayer.eventCard.count()-1 = activePlayer.eventCard.count()
--		end

endTurn(player: ZB_PLAYER)
--end the turn of the active player
	require
		isActivePlayer(player) and activePlayer.turnOver()
		do
			--impl
			ensure
				not isActivePlayer(player)
		end

placeZombie(player: ZB_PLAYER; position: ZB_POSITION)
--place a zombie in a map card
	require
		position/=Void
		do
			--impl
		ensure
			true
		end

--NOT PART OF THE PROTOTYPE
--useEventCard(player: ZB_PLAYER;eCard:ZB_EVENT_CARD)
----use an event card
--	require
--		player/=Void and player.eventCard.has(eCard)
--		do
--			--impl
--		ensure
--			old player.eventCard.count()-1 = player.eventCard.count()
--		end

playerState(player: ZB_PLAYER):INTEGER
--returns the player state
	require
		player/=Void
		do
			--impl
			ensure
				result>=0
		end

connectedPlayer:LINKED_LIST[ZB_PLAYER]

addNewPlayer(userID:INTEGER)
--add a new player to the Game

	require
		userID/=Void and connectedPlayer.count()<=5
		local
			newPlayer:ZB_PLAYER
		do
			create newPlayer.make (userID)
			connectedPlayer.extend (newPlayer)
			ensure
				old connectedPlayer.count()+1=connectedPlayer.count()
		end

--NOT IN PROTOTYPE
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
