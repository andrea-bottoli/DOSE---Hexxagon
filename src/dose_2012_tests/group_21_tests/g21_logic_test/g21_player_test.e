note
	description: "Summary description for {G21_PLAYER_TEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_PLAYER_TEST

inherit

	EQA_TEST_SET

feature -- Test Routines

	test_make -- It tests the method "make"

		note
			testing: "covers/{G21_PLAYER}.make"
			testing: "user/G21"

		local

			player: G21_PLAYER

		do

			create player.make
			assert ("player created, cardList assigned:", player.cardList/=void)
			assert ("player created, size assigned:", player.size=0)
			assert ("player created, cardList size equals to size:", player.cardList.count=player.size)

		end

	test_addCard -- It tests the method "addCard"

		note
			testing: "covers/{G21_PLAYER}.addCard"
			testing: "user/G21"

		local

			player: G21_PLAYER
			card: G21_CARD
			old_size: INTEGER_32

		do

			player.make
			card.make
			old_size:=player.size
			player.addCard(card)
			assert("card added to player.cardList:", player.size=old_size+1)
			assert("card added to player.cardList:", player.isFound(card)/=-1)

		end

	test_removeCard -- It tests the method "removeCard"

		note
			testing: "covers/{G21_PLAYER}.removeCard"
			testing: "user/G21"

		local

			player: G21_PLAYER
			card: G21_CARD
			old_size: INTEGER_32

		do

			player.make
			card.make
			if(player.isFound(card)=-1) then
					player.addCard(card)
				end

			old_size:=player.size
			player.removeCard(card)
			assert("card removed from player.cardList:", player.size=old_size-1)
			assert("card removed from player.cardList:", player.isFound(card)=-1)


		end

	test_isFound -- It tests the method "isFound"

		note
			testing: "covers/{G21_PLAYER}.isFound"
			testing: "user/G21"

		local

			player: G21_PLAYER
			card1: G21_CARD
			card2: G21_CARD

		do

			player.make
			card1.make
			card2.make
			player.addCard(card1)
			player.removeCard(card2)
			assert("card in player.cardList:", player.isFound(card1)/=-1)
			assert("card not in player.cardList:", player.isFound(card2)=-1)


		end

	test_saveCardList -- It tests the method "saveCardList"

		note
			testing: "covers/{G21_PLAYER}.saveCardList"
			testing: "user/G21"

		do

		end

	test_serialize -- It tests the method "serialize"

		note
			testing: "covers/{G21_PLAYER}.serialize"
			testing: "user/G21"

		do

		end

	test_deserialize -- It tests the method "deserialize"

		note
			testing: "covers/{G21_PLAYER}.deserialize"
			testing: "user/G21"

		do

		end

end
