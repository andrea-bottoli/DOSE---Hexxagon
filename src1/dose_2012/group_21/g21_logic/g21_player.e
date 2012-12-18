note
	description: "Summary description for {G21_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_PLAYER
create
	make
feature

	cardList:ARRAY[G21_CARD]
	size:INTEGER_32

	make(defaultCards:BOOLEAN)
	local
		card1:G21_CARD
		card2:G21_CARD
		card3:G21_CARD
		card4:G21_CARD
		card5:G21_CARD
		card6:G21_CARD
		card7:G21_CARD
		card8:G21_CARD
		card9:G21_CARD
		card10:G21_CARD
		card11:G21_CARD
	do

	create cardlist.make_filled (void, 1, 35)
	if(defaultcards = TRUE)
	then
		create card1.make
		card1.setcardname ("Geezard")
		card1.setbottom (1)
		card1.setleft (3)
		card1.setright (4)
		card1.settop (1)
		card1.setElement(' ')

		create card2.make
		card2.setcardname ("Funguar")
		card2.setbottom (1)
		card2.setleft (3)
		card2.setright (1)
		card2.settop (1)
		card2.setElement(' ')

		create card3.make
		card3.setcardname ("Bite Bug")
		card3.setbottom (7)
		card3.setleft (1)
		card3.setright (1)
		card3.settop (1)
		card3.setElement(' ')

		create card4.make
		card4.setcardname ("Red Bat")
		card4.setbottom (1)
		card4.setleft (1)
		card4.setright (1)
		card4.settop (6)
		card4.setElement(' ')

		create card5.make
		card5.setcardname ("Blobra")
		card5.setbottom (1)
		card5.setleft (1)
		card5.setright (1)
		card5.settop (1)
		card5.setElement(' ')

		create card6.make
		card6.setcardname ("Gayla")
		card6.setbottom (1)
		card6.setleft (3)
		card6.setright (1)
		card6.settop (5)
		card6.setElement('t')

		create card7.make
		card7.setcardname ("Gesper")
		card7.setbottom (4)
		card7.setleft (1)
		card7.setright (5)
		card7.settop (1)
		card7.setElement(' ')

		create card8.make
		card8.setcardname ("Fastitocalon-F")
		card8.setbottom (2)
		card8.setleft (1)
		card8.setright (5)
		card8.settop (3)
		card8.setElement('e')

		create card9.make
		card9.setcardname ("Blood Soul")
		card9.setbottom (6)
		card9.setleft (1)
		card9.setright (1)
		card9.settop (2)
		card9.setElement(' ')

		create card10.make
		card10.setcardname ("Caterchipillar")
		card10.setbottom (4)
		card10.setleft (3)
		card10.setright (2)
		card10.settop (4)
		card10.setElement(' ')

		create card11.make
		card11.setcardname ("Cockatrice")
		card11.setbottom (2)
		card11.setleft (6)
		card11.setright (1)
		card11.settop (2)
		card11.setElement('t')

		cardlist.put (card1, 1)
		cardlist.put (card2, 2)
		cardlist.put (card3, 3)
		cardlist.put (card4, 4)
		cardlist.put (card5, 5)
		cardlist.put (card6, 6)
		cardlist.put (card7, 7)
		cardlist.put (card8, 8)
		cardlist.put (card9, 9)
		cardlist.put (card10, 10)
		cardlist.put (card11, 11)
		--print(cardlist.at (1).getcardname)
		size := 11
	end

	end

	addCard(card:G21_CARD)
	require
		cardNotVoid:card /= void
		notFound:isFound(card) = FALSE
	do
		if(size < 35)
		then
			if(isfound (card) = FALSE)
			then
				size := size + 1
				cardlist.put (card, size)
			end
		end
	ensure
		Found:isFound(card) = TRUE
		cardListSize:size = old size + 1
	end

	isFound(card:G21_CARD) : BOOLEAN
	require
		cardNotVoid:card /= void
	do
		Result := cardlist.has (card)

	ensure
		exist:result = TRUE
		notExist:result = FALSE
	end

	removeCard(cardIdx:INTEGER)
	local
		card:G21_CARD
		cardListTemp:ARRAY[G21_CARD]
		i:INTEGER
		j:INTEGER
	do
		create cardlisttemp.make_from_array (cardlist)
		create cardlist.make_filled (void, 1,35)

		j := 1
		from
			i := 1
		until
			i > size
		loop

			if(i /= cardidx)
			then
				cardlist.put (cardlisttemp.at (i),j)
				j := j + 1
			end
			i := i + 1
		end
		size := size - 1
	end

	saveCardList
	require
		cardList /= void
	do


	end

	serialize (a_object: ANY): STRING
	require
		a_object_not_void: a_object /= Void
	do


	ensure
		serialize_not_void: Result /= Void

	end

	deserialize (a_string: STRING): ANY
	require
		a_string_not_void: a_string /= Void
	do


	end

	printPlayerCard
	local
		i:INTEGER
	do
		from
			i := 1
		until
			i > size
		loop
			print("Card Name: ")
			print(cardlist.at (i).getcardname + "%N")
			i := i+1

		end
	end


	invariant
		cardListSize:size >= 5
end
