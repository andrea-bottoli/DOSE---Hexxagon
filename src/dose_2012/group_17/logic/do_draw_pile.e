note
	description: "Summary description for {DO_DRAW_PILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_DRAW_PILE
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
		io.put_string("Draw Pile%N")
		NumberOfCards := 0
		create listofcards.make(0)

	end
	make_init(CardsNum :INTEGER Cards : ARRAYED_LIST[DO_CARD])
	do
		io.put_string("Draw Pile Init%N")
		NumberOfCards := CardsNum
		create ListOfCards.make (cardsnum)
		listofcards.copy (cards)

	end

feature --Access

	Is_Empty() : BOOLEAN
	do
		if(NumberOfCards = 0) then
		 	Result :=TRUE
		else
			Result :=FALSE
		end
	ensure
		arg_result_boolean : Result = TRUE or Result = FALSE
	end

	Get_Top_Card() : DO_CARD
	require
		List_Of_Cards : ListOfCards.is_Empty() /= TRUE
	do
		Result :=ListOfCards.first()

	ensure
		Last_card : ListOfCards.first() = Result
	end

	Remove_Top_Card() : DO_CARD
	require
		List_Of_Cards : ListOfCards.is_empty() /= TRUE
	do
		Result :=get_top_card()
		ListOfCards.remove_right()
		numberofcards :=numberofcards-1
	ensure
		List_of_Cards_deleted : old ListOfCards.count() = ListOfCards.count() + 1
	end

	Refill_Draw(Discard : DO_DISCARD_PILE)
	require
		number_of_cards : NumberOfCards = 0
		arg_discard_not_void : Discard /= void
	do
		from
		until discard.isempty=TRUE
		loop
		--	print ( discard.get_top_card.getname)
			add_top_card (discard.get_top_card)
			discard.remove_top_card()
			numberofcards := numberofcards + 1
		end

	ensure
		number_of_cards : NumberOfCards >= 0
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

feature{NONE} --Private

	Shuffle(a_pile : ARRAYED_LIST[DO_CARD]) : ARRAYED_LIST[DO_CARD]
	require
	--	shuffled_pile : a_pile.isEmpty() /= TRUE
	do
	ensure
	--	shuffled_pile_new : pile.count() = a_pile.count()
	end

	Add_Top_Card(Card :DO_CARD)
	do
		listofcards.put_right(card)
		numberofcards:=numberofcards+1
	end
end
