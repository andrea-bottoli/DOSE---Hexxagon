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
	updateBoardwithFlips
	do

	end

feature{G21_ACTIONLISTNERIMPLEMENTOR,G21_BOARD,TEST_BOARD}

	setFakeAccess(flag:BOOLEAN)
	do
		fakeaccess := flag
	end
	getFakeAccess:BOOLEAN
	do
		Result := fakeaccess
	end
feature -- public

	playerNumber:INTEGER_32

	rulesApplied:G21_RULES

	sizeOfDeck1:INTEGER_32
	sizeOfDeck2:INTEGER_32
	player1:G21_PLAYER -- main player
	player2:G21_PLAYER -- maybe computer

	cardDeckPlayer1:ARRAY[G21_CARD]
	cardDeckPlayer2:ARRAY[G21_CARD]

	gameBoard:ARRAY[ARRAY[G21_CELL]]



	make(startDefaultCards:INTEGER_32;difficulty:INTEGER_32) -- if difficulty is -1 so opponent is human
	do

	end

	newGUI(startDefaultCards:INTEGER_32;difficulty:INTEGER_32) -- if difficulty is -1 so opponent is human
	do

	end

	getCardListPlayer1:ARRAY[G21_CARD]
	require
		playerInitiated:player1 /= void
		-- rulesApplied.getIsOpen = TRUE
		-- or fakeAccess is true

	do
		if getfakeaccess = FALSE then
			(create {DEVELOPER_EXCEPTION}).raise
		end

	end



	getCardListPlayer2:ARRAY[G21_CARD]
	require
		playerInitiated:player2 /= void
	do

	end

	addToCardDeckPlayer1(cardIdx:INTEGER_32) -- index of card in cardList
	require
		playerInitiated:player1 /= void
		validIdx:cardIdx < player1.size
		sizeOfDeck1 < 5
	do

	ensure
		sizeOfDeck1 = old sizeOfDeck1 + 1
	end

	addToCardDeckPlayer2(cardIdx:INTEGER_32) -- index of card in cardList
	require
		playerInitiated:player2 /= void
		validIdx:cardIdx < player2.size
		sizeOfDeck2 < 5
	do

	ensure
		sizeOfDeck2 = old sizeOfDeck1 + 1
	end

	removeFromCardDeckPlayer1(cardIdx:INTEGER_32) -- index of card in cardDeck
	require
		playerInitiated:player1 /= void
		validIdx:cardIdx < sizeOfDeck1
		sizeOfDeck1 > 0
	do

	ensure
		sizeOfDeck1 = old sizeOfDeck1 - 1
	end

	removeFromCardDeckPlayer2(cardIdx:INTEGER_32) -- index of card in cardDeck
	require
		playerInitiated:player2 /= void
		validIdx:cardIdx < player2.size
		sizeOfDeck1 > 0
	do

	ensure
		sizeOfDeck2 = old sizeOfDeck2 - 1
	end


	makePlay(pos_X:INTEGER_32 ; pos_Y:INTEGER_32 ; cardIdx:INTEGER_32)
	require
		validPositionX:pos_X < 3
		validPositionX:pos_Y < 3
		validIndex:cardIdx < sizeOfDeck1
		-- if player is computer, it's assumed that there's method in ai call getOptimalPlay that get the play of computer
	do

	end
end