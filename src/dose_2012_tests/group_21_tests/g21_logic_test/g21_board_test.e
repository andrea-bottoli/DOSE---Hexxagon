note
	description: "Summary description for {G21_BOARD_TEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_BOARD_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_make -- It tests the method "make"

		note
			testing: "covers/{G21_BOARD}.make"
			testing: "user/G21"

		local
				board_object: G21_BOARD
				--playerNumber:INTEGER_32

		do

			create board_object.make(0, -1)
			assert ("board created, playerNumber assigned:", board_object.playerNumber=2)
			assert ("board created, rulesApplied assigned:", board_object.rulesApplied/=void)
			assert ("board created, sizeOfDeck1 assigned:", board_object.sizeOfDeck1>=0)
			assert ("board created, sizeOfDeck2 assigned:", board_object.sizeOfDeck2>=0)
			assert ("board created, player1 assigned:", board_object.player1/=void)
			assert ("board created, player2 assigned:", board_object.player2/=void)
			assert ("board created, cardDeckPlayer1 assigned:", board_object.cardDeckPlayer1/=void)
			assert ("board created, cardDeckPlayer2 assigned:", board_object.cardDeckPlayer2/=void)
			assert ("board created, gameBoard assigned:", board_object.gameBoard/=void)
			assert ("board created, gameBoard number of cells assigned:", board_object.gameBoard.count=3 and board_object.gameBoard.item(1).count=3 and board_object.gameBoard.item(2).count=3 and board_object.gameBoard.item(3).count=3)

		end

--	test_addRule -- It tests the method "addRule"

--		note
--			testing: "covers/{G21_BOARD}.addRule"
--			testing: "user/G21"

--		local

--			board_object: G21_BOARD

--		do

--			create board_object.make(0, 0)
--			board_object.addRule(0)
--			assert ("rule 0 set ON:", board_object.rulesApplied[0].isOpen)
--			board_object.addRule(1)
--			assert ("rule 1 set ON:", board_object.rulesApplied[1].isOn)

--		end

--	test_FakeAccess -- It tests the methods "getFakeAccess" and "setFakeAccess"

--		note
--			testing: "covers/{G21_BOARD}.fakeAccess"
--			testing: "covers/{G21_BOARD}.setFakeAccess"
--			testing: "user/G21"

--		local

--			board_object: G21_BOARD

--		do

--			create board_object.make(0, 0)
--			board_object.setFakeAccess(TRUE)
--			assert ("fakeAccess set TRUE:", getFakeAccess=1)
--			board_object.setFakeAccess(FALSE)
--			assert ("fakeAccess set FALSE:", getFakeAccess=0)

--		end

	test_getCardListPlayer -- It tests the methods "getCardListPlayer1" and "getCardListPlayer2"

		note
			testing: "covers/{G21_BOARD}.getCardListPlayer1"
			testing: "covers/{G21_BOARD}.getCardListPlayer2"
			testing: "user/G21"

		local

			board_object: G21_BOARD
			cards_player_1: ARRAY[G21_CARD]
			cards_player_2: ARRAY[G21_CARD]
			elem: INTEGER_32

		do

			create board_object.make(0, 0)
			cards_player_1:= board_object.getCardListPlayer1
			cards_player_2:= board_object.getCardListPlayer2

			from

				elem := 1

			until

				elem >= cards_player_1.count

			loop

				assert ("getCardListPlayer1 assigned:", cards_player_1[elem].top=board_object.cardDeckPlayer1[elem].top)
				assert ("getCardListPlayer1 assigned:", cards_player_1[elem].right=board_object.cardDeckPlayer1[elem].right)
				assert ("getCardListPlayer1 assigned:", cards_player_1[elem].left=board_object.cardDeckPlayer1[elem].left)
				assert ("getCardListPlayer1 assigned:", cards_player_1[elem].bottom=board_object.cardDeckPlayer1[elem].bottom)
				assert ("getCardListPlayer1 assigned:", cards_player_1[elem].element=board_object.cardDeckPlayer1[elem].element)
				assert ("getCardListPlayer1 assigned:", cards_player_1[elem].cardName=board_object.cardDeckPlayer1[elem].cardName)
				assert ("getCardListPlayer2 assigned:", cards_player_2[elem].top=board_object.cardDeckPlayer2[elem].top)
				assert ("getCardListPlayer2 assigned:", cards_player_2[elem].right=board_object.cardDeckPlayer2[elem].right)
				assert ("getCardListPlayer2 assigned:", cards_player_2[elem].left=board_object.cardDeckPlayer2[elem].left)
				assert ("getCardListPlayer2 assigned:", cards_player_2[elem].bottom=board_object.cardDeckPlayer2[elem].bottom)
				assert ("getCardListPlayer2 assigned:", cards_player_2[elem].element=board_object.cardDeckPlayer2[elem].element)
				assert ("getCardListPlayer2 assigned:", cards_player_2[elem].cardName=board_object.cardDeckPlayer2[elem].cardName)

				elem := elem + 1

			end

		end

	test_addToCardDeckPlayer -- It tests the methods "addToCardDeckPlayer1" and "addToCardDeckPlayer2"

		note
			testing: "covers/{G21_BOARD}.addToCardDeckPlayer1"
			testing: "covers/{G21_BOARD}.addToCardDeckPlayer2"
			testing: "user/G21"

		local

			board_object: G21_BOARD
			old_size_player_1: INTEGER_32
			old_size_player_2: INTEGER_32

		do

			create board_object.make(0, 0)
			old_size_player_1:= board_object.player1.size
			old_size_player_2:= board_object.player2.size
			board_object.addToCardDeckPlayer1(1)
			board_object.addToCardDeckPlayer2(1)
			assert("addToCardDeckPlayer1 assigned:", board_object.player1.size=old_size_player_1+1)
			assert("addToCardDeckPlayer2 assigned:", board_object.player2.size=old_size_player_2+1)

		end

	test_removeFromCardDeckPlayer -- It tests the methods "removeFromCardDeckPlayer1" and "removeFromCardDeckPlayer2"

		note
			testing: "covers/{G21_BOARD}.removeFromCardDeckPlayer1"
			testing: "covers/{G21_BOARD}.removeFromCardDeckPlayer2"
			testing: "user/G21"

		local

			board_object: G21_BOARD
			old_size_player_1: INTEGER_32
			old_size_player_2: INTEGER_32

		do

			create board_object.make(0, 0)
			old_size_player_1:= board_object.player1.size
			old_size_player_2:= board_object.player2.size
			board_object.removeFromCardDeckPlayer1(1)
			board_object.removeFromCardDeckPlayer2(1)
			assert("removeFromCardDeckPlayer1 assigned:", board_object.player1.size=old_size_player_1-1)
			assert("removeFromCardDeckPlayer2 assigned:", board_object.player2.size=old_size_player_2-1)

		end

	test_makePlay -- It tests the method "makePlay"

		note
			testing: "covers/{G21_BOARD}.makePlay"
			testing: "user/G21"

		local

			board_object: G21_BOARD
			position_x: INTEGER_32
			position_y: INTEGER_32
			card_index: INTEGER_32

		do

			create board_object.make(0, 0)
			position_x:= 2
			position_y:= 2
			assert("before makePlay position empty:", board_object.gameBoard.item(position_x).item(position_y)=void)
			card_index:= 1
			board_object.makePlay(position_x, position_y, card_index)
			assert("makePlay assigned:", board_object.gameBoard.item(position_x).item(position_y)/=void)

		end

end
