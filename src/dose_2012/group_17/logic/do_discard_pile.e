note
	description: "Summary description for {DO_DISCARD_PILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_DISCARD_PILE
	inherit
	DO_PILE
	redefine
		make
	end

create
	make,
	make_init

feature{NONE} --Initialization
	make
	do
		io.put_string("Discard Pile%N")
		NumberOfCards := 0
		--ListOfCards :=void
		create ListOfCards.make (3)

	end
	make_init(CardsNum :INTEGER Cards : ARRAYED_LIST[DO_CARD])
	do
		io.put_string("Discard Pile Init%N")
		NumberOfCards := CardsNum
		--ListOfCards :=Cards
		create listofcards.make (3)
	end

feature --Access

	Add_Top_Card(a_card : DO_CARD)
	require
		arg_not_voi : a_card /= void
	do
		listofcards.put_right(a_card)
		numberofcards := numberofcards + 1
	ensure
		number_of_cards_sum : NumberOfCards = old NumberOfCards + 1
	end

	Remove_Top_Card()
	require
	--	List_Of_Cards : ListOfCards.isEmpty() /= TRUE
	do
		listofcards.remove_right
	ensure
		List_of_Cards_deleted : old ListOfCards.count() = ListOfCards.count() + 1
	end

	Get_Top_Card() : DO_CARD
	require
	--	List_Of_Cards : ListOfCards.isEmpty() /= TRUE
	do
		Result :=listofcards.first()
	ensure
		Last_card : ListOfCards.first() = Result
	end

	emfanise()
	do
		across
			 	ListOfCards
			 	as
			 		ic
			 	loop
			 		print(ic.item.getcost)
			 		print("%N")
			 		print(ic.item.getname)
			 		print("%N")
			 		print(ic.item.gettype)
			 		print("%N")

				end
	end

end
