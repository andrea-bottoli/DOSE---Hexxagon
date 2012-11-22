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
	make

feature{NONE} --Initialization
	make
	do
	end

feature --Access

	Add_Top_Card(a_card : DO_CARD)
	require
		arg_not_voi : a_card /= void
	do
	ensure
		number_of_cards_sum : NumberOfCards = old NumberOfCards + 1
	end

	Remove_Top_Card()
	require
	--	List_Of_Cards : ListOfCards.isEmpty() /= TRUE
	do
	ensure
		List_of_Cards_deleted : old ListOfCards.count() = ListOfCards.count() + 1
	end

	Get_Top_Card() : DO_CARD
	require
	--	List_Of_Cards : ListOfCards.isEmpty() /= TRUE
	do
	ensure
		Last_card : ListOfCards.last() = Result
	end

end
