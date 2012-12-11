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
		io.put_string("Draw Pile")
		NumberOfCards := 0
		ListOfCards :=void

	end
	make_init(CardsNum :INTEGER Cards : ARRAYED_LIST[DO_CARD])
	do
		io.put_string("Draw Pile Init")
		NumberOfCards := CardsNum
		ListOfCards :=Cards

	end

feature --Access

	Is_Empty() : BOOLEAN
	require
		--number_of_cards : NumberOfCards = 0
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
	--	List_Of_Cards : ListOfCards.isEmpty() /= TRUE
	do
		Result :=ListOfCards.first()

	ensure
		Last_card : ListOfCards.first() = Result
	end

	Remove_Top_Card() : DO_CARD
	require
	--	List_Of_Cards : ListOfCards.isEmpty() /= TRUE
	do
		ListOfCards.remove_right

	ensure
		List_of_Cards_deleted : old ListOfCards.count() = ListOfCards.count() + 1
	end

	Refill_Draw(Discard : DO_DISCARD_PILE)
	require
		number_of_cards : NumberOfCards = 0
		arg_discard_not_void : Discard /= void
	do
	ensure
		number_of_cards : NumberOfCards /= 0
	end

feature{NONE} --Private

	Shuffle(a_pile : ARRAYED_LIST[DO_CARD]) : ARRAYED_LIST[DO_CARD]
	require
	--	shuffled_pile : a_pile.isEmpty() /= TRUE
	do
	ensure
	--	shuffled_pile_new : pile.count() = a_pile.count()
	end
end
