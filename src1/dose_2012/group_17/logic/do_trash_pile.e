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
		numberofcards :=0
		create ListOfCards.make (3)
	end

feature --Access

	Add_Card(a_card : DO_CARD)
	require
		arg_not_void : a_card /= void
	do
		listofcards.put_right(a_card)
		numberofcards:=numberofcards+1
	ensure
	--	card_added : card.getname() = a_card.getname()
		number_of_cards_sum : NumberOfCards = old NumberOfCards + 1
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
