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
	require
		valid_args : CardsNum = Cards.count
	do
		NumberOfCards := CardsNum
		create ListOfCards.make (cardsnum)
		listofcards.copy (cards)
		listofcards.start

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
			listofcards.remove
		numberofcards :=numberofcards-1
	ensure
		List_of_Cards_deleted : old ListOfCards.count() = ListOfCards.count() + 1
	end

	Refill_Draw(Discard : DO_DISCARD_PILE)
	require
		list_of_cards_not_void : ListOfCards/=void
		list_of_cards_is_empty : Is_Empty=TRUE
		arg_discard_not_void : Discard /= void
		arg_discard_not_emty : Discard.isempty = FALSE
	do
		from
		until discard.isempty=TRUE
		loop
			--print("a%N")
			add_top_card (discard.get_top_card)
			discard.remove_top_card()
		end
		listofcards :=shuffle(listofcards)


	ensure
		list_of_cards_is_empty : Is_Empty = FALSE
		discard_not_emty : Discard.isempty = TRUE
	end
	emfanise()
	do
		across
			ListOfCards
		as
			ic
	 	loop
			--print(ic.item.getcost)
			print("%N")
			print(ic.item.getname)
			print("%N")
			--print(ic.item.gettype)
			print("%N")
		end
	end

feature{NONE} --Private

	random_sequence : RANDOM
	Shuffle(a_pile : ARRAYED_LIST[DO_CARD]) : ARRAYED_LIST[DO_CARD]
	local
      	l_time: TIME
      	l_seed: INTEGER
      	i,fswap,toswap:INTEGER

    do
	      create l_time.make_now
	      l_seed := l_time.hour
	      l_seed := l_seed * 60 + l_time.minute
	      l_seed := l_seed * 60 + l_time.second
	      l_seed := l_seed * 1000 + l_time.milli_second
	      create random_sequence.set_seed (l_seed)
			--io.put_integer (new_random \\ numberofcards+1)
			from i:=1
			until numberofcards = i
			loop

				fswap:=new_random \\ (numberofcards-1) +1
				toswap :=new_random \\ (numberofcards-1) + 1

				a_pile.move(fswap)
				a_pile.swap (toswap)
				a_pile.start
				i :=i+1
			end
			Result :=a_pile

	ensure
	--	shuffled_pile_new : pile.count() = a_pile.count()
	end

	new_random: INTEGER
	  do
	    random_sequence.forth
	    Result := random_sequence.item
	  end

	Add_Top_Card(Card :DO_CARD)
	require
		arg_card_is_valid : Card /= void
	do
		--listofcards.put_right(card)
		listofcards.force (card)
		numberofcards:=numberofcards+1
	end
end
