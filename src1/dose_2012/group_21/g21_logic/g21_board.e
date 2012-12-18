note
	description: "Summary description for {G21_BOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_BOARD

create
	make

feature{NONE} -- private
	fakeAccess:BOOLEAN


feature{G21_ACTIONLISTNERIMPLEMENTOR,APPLICATION}

	setFakeAccess(flag:BOOLEAN)
	do
		fakeaccess := flag
	end
	getFakeAccess:BOOLEAN
	do
		Result := fakeaccess
	end
	playedCards1:ARRAY[BOOLEAN]
	playedCards2:ARRAY[BOOLEAN]
feature -- public

	playerNumber:INTEGER_32

	rulesApplied:G21_RULESCONTAINER

	sizeOfDeck1:INTEGER_32
	sizeOfDeck2:INTEGER_32
	player1:G21_PLAYER -- main player
	player2:G21_PLAYER -- maybe computer

	cardDeckPlayer1:ARRAY[G21_CARD]
	cardDeckPlayer2:ARRAY[G21_CARD]


	gameBoard: ARRAY2[G21_CELL]


	initialize
	local
		i:INTEGER
		j:INTEGER
		cell:G21_CELL
	do
		from
				i:= 1
		until
				i > 3
		loop
			from
					j := 1
			until
					j > 3
			loop
					create cell.make
					gameboard.item (i,j) := cell
					j := j + 1
			end
			i := i + 1
		end
	end
	make(startDefaultCards:BOOLEAN;difficulty:INTEGER_32) -- if difficulty is -1 so opponent is human
	local
		i:INTEGER
		j:INTEGER
	do
		create carddeckplayer1.make_filled (void, 1, 5)
		create carddeckplayer2.make_filled (void, 1, 5)
		create playedcards1.make_filled (false, 1, 5)
		create playedcards2.make_filled (false, 1, 5)
		sizeofdeck1 := 0
		sizeofdeck2 := 0
		playernumber := 1
		create gameboard.make_filled (void, 3, 3)
		initialize()
		create rulesapplied.make
		rulesapplied.activeopen (gameboard)
		newgui (startdefaultcards, difficulty)

	end

	activeRule(rule:STRING)
	do
		if(rule.at (1) = 'E')
		then
			gameboard.copy (rulesapplied.activeelemental (gameboard))
		end

		if(rule.at (1) = 'S')
		then
			if(rule.count = 4)
			then
				rulesapplied.activeSame(gameboard)
			else
				rulesapplied.activeSameWall(gameboard)
			end
		end
		if(rule.at (1) = 'P')
		then
			rulesapplied.activePlus(gameboard)
		end

	end

	setGameBoard(b:ARRAY2[G21_CELL])
	do
		gameBoard.copy (b)
	end

	getGameBoard:ARRAY2[G21_CELL]
	do
		result := gameBoard
	end
	newGUI(startDefaultCards:BOOLEAN;difficulty:INTEGER_32) -- if difficulty is -1 so opponent is human
	do
		create player1.make (startdefaultcards)
		--print(player1.cardlist.at (1))

		if(difficulty /= -1) then
		-- initialize AI
		else
		create player2.make (startdefaultcards)
		end
	end

	getCardDeckPlayer1:ARRAY[G21_CARD]
	require
		playerInitiated:player1 /= void
		-- rulesApplied.getIsOpen = TRUE
		-- or fakeAccess is true

	do
		-- I make every every condition on seperate if condition to make debugging
		-- more simple
		if rulesapplied.openrule.ison = true then
			Result := carddeckplayer1
		else if getfakeaccess = TRUE then
			Result := carddeckplayer1
		else
			(create {DEVELOPER_EXCEPTION}).raise
		end

		end

	end



	getCardDeckPlayer2:ARRAY[G21_CARD]
	require
		playerInitiated:player2 /= void
	do
		Result := carddeckplayer2
	end

	addToCardDeckPlayer1(cardIdx:INTEGER_32) -- index of card in cardList
	require
		playerInitiated:player1 /= void
		--validIdx:cardIdx < player1.size and cardIdx >= 0
		sizeOfDeck1 < 5
	do
		if(fakeaccess = TRUE)
		then
			if(sizeofdeck1 < 5 and (cardidx >= 0 and cardidx < player1.size)) then
				carddeckplayer1.put (player1.cardlist.at (cardidx), sizeofdeck1+1)
				sizeofdeck1 := sizeofdeck1 + 1
			else
				(create {DEVELOPER_EXCEPTION}).raise
			end
		end


	end

	addToCardDeckPlayer2(cardIdx:INTEGER_32) -- index of card in cardList
	require
		playerInitiated:player2 /= void
		validIdx:cardIdx < player2.size and cardIdx >= 0
		sizeOfDeck2 < 5
	do
		if(sizeofdeck2 < 5 and (cardidx >= 0 and cardidx < player2.size)) then
			cardDeckPlayer2.put (player2.cardlist.at (cardidx), sizeofdeck2+1)
			sizeofdeck2 := sizeofdeck2 + 1
		else
			(create {DEVELOPER_EXCEPTION}).raise
		end

	ensure
		sizeOfDeck2 = old sizeOfDeck2 + 1
	end

	removeFromCardDeckPlayer1(cardIdx:INTEGER_32) -- index of card in cardDeck
	local
		card:G21_CARD
		cardListTemp:ARRAY[G21_CARD]
		i:INTEGER
		j:INTEGER
	do
		if(fakeaccess = TRUE)
		then
			create cardlisttemp.make_from_array (carddeckplayer1)
			create carddeckplayer1.make_filled (void, 1,5)

			j := 1
			from
				i := 1
			until
				i > sizeofdeck1
			loop

				if(i /= cardidx)
				then
					carddeckplayer1.put (cardlisttemp.at (i),j)
					j := j + 1
				end
				i := i + 1
			end
			sizeofdeck1 := sizeofdeck1 - 1
		end
	end
	removeFromCardDeckPlayer2(cardIdx:INTEGER_32) -- index of card in cardDeck
	local
		card:G21_CARD
		cardListTemp:ARRAY[G21_CARD]
		i:INTEGER
		j:INTEGER
	do
			create cardlisttemp.make_from_array (carddeckplayer2)
			create carddeckplayer2.make_filled (void, 1,5)

			j := 1
			from
				i := 1
			until
				i > sizeofdeck2
			loop

				if(i /= cardidx)
				then
					carddeckplayer2.put (cardlisttemp.at (i),j)
					j := j + 1
				end
				i := i + 1
			end
			sizeofdeck2 := sizeofdeck2 - 1

	end



	makePlay(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ; cardIdx:INTEGER_32)
	require
		validPositionX:pos_X <= 3 and pos_Y >= 0
		validPositionX:pos_Y <= 3 and pos_X >= 0
		validIndex:cardIdx <= sizeOfDeck1
		-- if player is computer, it's assumed that there's method in ai call getOptimalPlay that get the play of computer
	local
		cell:G21_CELL
		newCell:G21_CELL
	do
		create newCell.make
		if(gameboard.item (pos_x, pos_y).getisoccupied = false)
		then
			if(playernumber = 1)then
				if(playedcards1.at (cardidx) = false)
				then
					newcell.setelement (gameboard.item (pos_x, pos_y).getelement)
					newcell.setcard (carddeckplayer1.at (cardidx))
					newcell.setPlayerNumber(1)

					playernumber := 2
					playedcards1.at (cardidx) := true
				end
			else
				if(playedcards2.at (cardidx) = false)
				then
					newcell.setelement (gameboard.item (pos_x, pos_y).getelement)
					newcell.setcard (carddeckplayer2.at (cardidx))
					newcell.setPlayerNumber(2)

					playernumber := 1
					playedcards2.at (cardidx) := true
				end
			end
			gameboard.item (pos_x, pos_y) := newcell
			rulesapplied.updateGameBoard(pos_x,pos_y,newcell)
			gameboard.copy (rulesapplied.makechangesandflips (pos_x, pos_y))
		end
	end
	printCardDeckPlayer1
	local
		i:INTEGER
	do
		from
			i := 1
		until
			i > sizeofdeck1
		loop
			print("Card Name: ")
			print(carddeckplayer1.at (i).cardname + "%N")
			i := i+1
		end
	end
	printBoard
	local
		i:INTEGER
		j:INTEGER
	do
		from
			i := 1
		until
			i > 3
		loop
			from
				j := 1
			until
				j > 3
			loop
				gameboard.item (i, j).printCell
				j := j+1
			end
			i := i+1
		end
	end
end
