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

	make (server:ZB_NET_SERVER)
		do
--			create net_server.make(Current)
			create connectedPlayer.make
--          Gives the control to the net server to let player connect, once they are connected server is gonna give back
--			the control to logic calling startGame
	        net_server:=server

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
		activePlayer.setstate (1)
		currentMapCard:=cards.pick
		net_server.sendactiveplayer (activePlayer)
		net_server.sendnewmapcard (currentMapCard)
	end

isActivePlayer (player: ZB_PLAYER): BOOLEAN
--Returns True if player is the Active Player
	require
		player /= Void

	do
		if player=activePlayer then Result:=true else Result:=false end
		ensure
			true
	end

board:ZB_BOARD
cards:ZB_MAPCARD_DECK
currentMapCard:ZB_MAP_CARD

rotate(player:ZB_PLAYER;clockwise:BOOLEAN)
--Rotate the current map card
	require
		isActivePlayer(player) and activePlayer.inmapcardplacement
	do
		currentMapCard.rotate (clockwise)
		if clockwise then 	net_server.sendrotated (1)
			else
			net_server.sendrotated (0)
		end

		ensure
			true
	end

placeMapCard(player:ZB_PLAYER;position:ZB_POSITION)
--place current map card
	require
		isActivePlayer(player) and position/=Void and activePlayer.inMapCardPlacement
		do
			if board.placable (currentMapCard, position.x, position.y) then
				board.placecard (currentMapCard, position.x, position.y)
				player.setstate (2)
				net_server.sendplacedmapcard (currentMapCard, position)
			else
				net_server.senderror (player, 1)
			end
		ensure
			true

		end

		abs(int:INTEGER):INTEGER
		--Surprisingly Eiffel doesn't have the abs function builded in
		do
			if int >= 0 then
				Result:=int
			else
				Result:=int*(-1)
			end
		end

rollDice (player:ZB_PLAYER)
--roll a dice
	require
		isActivePlayer(player) and (player.incombat or player.indicerolling or player.inzombiemovement)
	local
		 random_sequence:RANDOM
		 l_time: TIME
         l_seed: INTEGER
         diceResult:INTEGER

		do
 			  create l_time.make_now
		      l_seed := l_time.hour
		      l_seed := l_seed * 60 + l_time.minute
		      l_seed := l_seed * 60 + l_time.second
		      l_seed := l_seed * 1000 + l_time.milli_second
		      create random_sequence.set_seed (l_seed)
		      diceResult:=random_sequence.item
		 	  diceResult:=diceResult\\6
		 	  diceResult:=diceResult+1

			  net_server.sendrollresult (diceResult)

			if player.incombat then
				player.combatdiceroll:=diceResult
				if
					diceResult>3
				then

					board.fetchmapcardsegment (player.peonposition.x, player.peonposition.y).popzombie
					player.setzombiecollection (player.zombiecollection+1)
					net_server.sendaddzombietoplayer (player)
					if player.zombieinstartposition then
					player.setstate (7)
					player.setzombieinstartposition (false)
					else
						if
							player.movementdiceroll>0
						then
							player.setstate (3)

						else
							player.havetogoinzombiemovement:=true
							player.setstate (7)
						end

					end
				else
					if player.ht=0 and (player.bt+diceResult)<4 then
						player.setpeonposition (0, 0)
						player.setzombieinstartposition (false)
						player.setstate (5)
						net_server.sendmovetoinitialposition (player, player.peonposition)
					end
				end
			else
				if player.indicerolling then
					player.movementdiceroll:=diceResult
					player.setstate (3)
				end
				if player.havetogoinzombiemovement then
					player.zombietomovediceroll:=diceResult
					player.havetogoinzombiemovement:=false
					player.setstate (5)
				end

			end
		ensure
			true
		end

useHT(player: ZB_PLAYER)
--use an Heart Token
	require
		isActivePlayer (player) and activePlayer.inCombat() and activePlayer.ht()>0
		do
			player.popht
			ensure
				old activePlayer.ht()=activePlayer.ht()+1
		end

useBT(player:ZB_PLAYER ; numberBT:INTEGER)
--use a Bullet Token
	require
		isActivePlayer(player) and activePlayer.inCombat() and numberBT>0 and activePlayer.bt()>=numberBT and (player.combatdiceroll+numberBT)=4
		do
			player.popbt (numberBT)
			player.zombiecollection:=player.zombiecollection+1
			net_server.sendaddzombietoplayer (player)
			board.fetchmapcardsegment (player.peonposition.x, player.peonposition.y).popzombie
			ensure
				old activePlayer.bt()=activePlayer.bt() + numberBT
		end

movePeon(player:ZB_PLAYER ; position: ZB_POSITION)
--move a player peon
	require
		player.inMovement()
	local
		path:LINKED_LIST[ZB_NODE]

		do
			path:=board.searchpath (board.fetchmapcardsegment (player.peonposition.x, player.peonposition.y), board.fetchmapcardsegment (position.x, position.y))
			if (path.count-1)>player.movementdiceroll then
				player.setpeonposition (position.x, position.y)
				if board.fetchmapcardsegment (position.x, position.y).token = 'h' and player.ht < 5 then
					player.pushht
					board.fetchmapcardsegment (position.x, position.y).poptoken
					end
				if board.fetchmapcardsegment (position.x, position.y).token = 'b' then
					player.pushbt
					board.fetchmapcardsegment (position.x, position.y).poptoken
					end

				player.movementdiceroll:=player.movementdiceroll+1-path.count
				if board.fetchmapcardsegment (position.x, position.y).zombie then
					player.setstate (4)
					--Magari sarebbe carino poter avvisare il server che il giocatore è in combattimento... in ungheria non fanno più i server di una volta
				end
				if player.movementdiceroll<=0 and not board.fetchmapcardsegment (position.x, position.y).zombie then
					player.setstate (5)
				end
				net_server.sendmovetoinitialposition (player, position) --initial position?
			else
				net_server.senderror (player, 2) --Error 2 is a peon movement error
			end
			ensure
				true
		end

endMovement(player: ZB_PLAYER)
--ends the player movement
	require
		player.inMovement()
		do
			player.movementdiceroll:=0
			player.havetogoinzombiemovement:=true
			player.setstate (7)
			ensure
				not player.inMovement()
		end

moveZombie(startPosition,endPosition:ZB_POSITION ; player: ZB_PLAYER)
--move a zombie from SP to EP
	require
		isActivePlayer(player) and startPosition/=Void and endPosition/=Void and activePlayer.inZombieMovement()
		do
		if player.zombietomovediceroll>0 then
			if (abs(startPosition.x-endPosition.x)+abs(startPosition.y-endPosition.y))=1 and board.fetchmapcardsegment (endPosition.x, endPosition.y).walkable and not board.fetchmapcardsegment (endPosition.x, endPosition.y).zombie then
				board.fetchmapcardsegment (startPosition.x, startPosition.y).popzombie
				board.fetchmapcardsegment (endPosition.x, endPosition.y).pushzombie
				net_server.sendmovedzombie (startPosition, endPosition)
				player.zombietomovediceroll:=player.zombietomovediceroll-1
				if player.zombietomovediceroll = 0 then
					player.setstate (6)
				end
			else
				net_server.senderror (player, 3) --Error 3 is an error in the zombie movement
			end
		end
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
			player.setstate (0)
			if player.zombiecollection >= 25 then
				--SENT MESSAGE TO SERVER TO TELL THAT THE GAME IS OVER BUT NOT HAS NOT BEEN YET IMPLEMENTED IN THE NET COMPONENT
			else
			if not connectedPlayer.exhausted then
				connectedPlayer.forth
				activePlayer:=connectedPlayer.item
			else
				connectedPlayer.start
				activePlayer:=connectedPlayer.item
			end
			activePlayer.setstate (1)
			currentMapCard:=cards.pick
			net_server.sendactiveplayer (activePlayer)
			net_server.sendnewmapcard (currentMapCard)
			end
			ensure
				not isActivePlayer(player)
		end

placeZombie(player: ZB_PLAYER; position: ZB_POSITION)
--place a zombie in a map card
	require
		position/=Void
		do
			if
			player.inzombieplacement and currentMapCard.zombietoplace>0 and currentMapCard.fetchmapcardsegment (position.x, position.y)/=void and currentMapCard.fetchmapcardsegment (position.x, position.y).walkable and not currentMapCard.fetchmapcardsegment (position.x, position.y).zombie
			then
				currentMapCard.fetchmapcardsegment (position.x, position.y).pushzombie
				currentMapCard.setzombietoplace (currentMapCard.zombietoplace-1)
				if
					currentMapCard.zombietoplace=0
				then
					if	board.fetchmapcardsegment (activePlayer.peonposition.x, activePlayer.peonposition.y).zombie then
					activePlayer.setzombieinstartposition (true)
					activePlayer.setstate (4)
					else
					activePlayer.setstate (7)
					end
				end

			end
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
		connectedPlayer.count()<=5
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
