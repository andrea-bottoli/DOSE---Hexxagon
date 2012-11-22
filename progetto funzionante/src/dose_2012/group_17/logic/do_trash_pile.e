note
	description: "Summary description for {DO_TRASH_PILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_TRASH_PILE

inherit
	DO_PILE

	redefine
		make
	end

create make

feature{NONE} --Initialization
	make
	do
	end

feature --Access

	Add_Card(a_card : DO_CARD)
	require
		arg_not_void : a_card /= void
	do
	ensure
	--	card_added : card.getname() = a_card.getname()
		number_of_cards_sum : NumberOfCards = old NumberOfCards + 1
	end

end
