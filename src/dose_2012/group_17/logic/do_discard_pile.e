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
		NumberOfCards := 0
		create ListOfCards.make (308)
	end

feature --Access

	IsEmpty():BOOLEAN
	do
		if(NumberOfCards = 0) then
		 	Result :=TRUE
		else
			Result :=FALSE
		end
	ensure
		arg_result_boolean : Result = TRUE or Result = FALSE
	end

	Add_Top_Card(a_card : DO_CARD)
	require
		arg_not_voi : a_card /= void
	do
		listofcards.put_right(a_card)
		numberofcards:=numberofcards+1
	ensure
		number_of_cards_sum : NumberOfCards = old NumberOfCards + 1
	end

	Remove_Top_Card()  --private
	require
		List_Of_Cards : ListOfCards.is_Empty() /= TRUE
	do
		listofcards.remove_right
		numberofcards:=numberofcards-1
--	ensure
	--	List_of_Cards_deleted : old ListOfCards.count() = ListOfCards.count() - 1
	end

	Get_Top_Card() : DO_CARD
	require
		List_Of_Cards : ListOfCards.is_Empty() /= TRUE
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
