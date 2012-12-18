note
	description: "Summary description for {G3_COMBINATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G3_COMBINATION

create
	make, make_with_parameter

feature {NONE}

	make
			-- Creates a new empty combination.
		do
			create cards.make
		end

	make_with_parameter(list_of_cards : LINKED_LIST[G3_CARD])
			-- Creates a new combination with the given cards.
		do
			create cards.make
			cards := list_of_cards
		end

feature

	is_valid : BOOLEAN
			-- Verifies if the combination of cards is a valid play.
		require
			cards/=Void
		do
			Result:= is_single or is_pair or is_triple or is_full_house or is_straight or is_stair_steps or is_bomba
		ensure
			Result = True or Result = False
		end

	kills (other_combination : G3_COMBINATION) : BOOLEAN
			-- return true if this combination are more strongly that parameter
		require
			is_valid: is_valid and other_combination.is_valid
		do
			if not kind_of_play.is_equal (other_combination.kind_of_play) and not(kind_of_play.is_equal ("Bomba"))  then
				Result := False
			else
				if kind_of_play.is_equal ("Single") then
					Result:= kill_single(other_combination)
				end
				if kind_of_play.is_equal ("Pair") then
					Result:= kill_pair(other_combination)
				end
				if kind_of_play.is_equal ("Triple") then
					Result:= kill_triple(other_combination)
				end
				if kind_of_play.is_equal ("Full House") then
					Result:= kill_full_house(other_combination)
				end
				if kind_of_play.is_equal ("Straight") then
					Result:= kill_straight(other_combination)
				end
				if kind_of_play.is_equal ("Stair Steps") then
					Result:= kill_stair_steps(other_combination)
				end
				if kind_of_play.is_equal ("Bomba") then
					Result:= kill_bomba(other_combination)
				end
			end

		end

	is_single : BOOLEAN
			--Return true if the combination is a single
		require
			cards/=Void
		do
			Result:= cards.count=1 and not cards.first.is_the_dog
		end

	is_pair : BOOLEAN
			-- return true if the combination is a pair
		require
		do
			if cards.count/=2 then
				Result:= False
			else
				if has_the_phoenix then
					Result:= number_of_specials=1
				else
					Result:= cards.at (1).has_the_same_number (cards.at (2))
				end
			end
		end

	is_triple : BOOLEAN
			-- return true if the combination is a triple
		require
		do
			if cards.count/=3 then
				Result:= false
			else
				if has_the_phoenix then
					Result:= (number_of_specials=1) and (has_pair())
				else
					Result:= cards.at (1).has_the_same_number (cards.at (2)) and cards.at (2).has_the_same_number (cards.at (3))
				end
			end
		end

	is_full_house : BOOLEAN
			--Return true if the combination is a full house
		require
		local
			comb: G3_COMBINATION
			list: LINKED_LIST[G3_CARD]
		do
			if cards.count/=5 then
				Result:=false
			else
				if has_the_phoenix then
					if has_triple and has_pair then
						Result:=True
					end
					if has_triple and not has_pair then
							get_the_phoenix.set_value (single.value)
							Result:=True
					end
					if (number_of_pair=2) then
						get_the_phoenix.set_value (biggest_card.value)
						Result:=True
					end
				else
					create list.make
					list.copy (cards)
					create comb.make_with_parameter (list)
					Result:=False
					if comb.has_triple then
						comb.delete_cards(comb.cards_same_value(comb.triple))
						Result:= comb.is_pair
					end
				end
			end
		end

	is_straight: BOOLEAN
			-- Return true if the combination is a straight
		require
			cards/=Void
		local
			i:INTEGER
			val: REAL
		do
			Result:=True
			if cards.count<5 then
				Result:=False
			else
				if has_the_phoenix then
					if is_straight_with_the_phoenix  then
						set_the_phoenix_for_straight
						Result:=True
					else
						Result:=False
					end
				else
					val:= smallest_card.value
					from
						i:=1
					until
						i=cards.count or not Result
					loop
						if not (has_card_value(val+1)) then
							Result:=False
						end
						val:=val+1
						i:=i+1
					end
				end
			end
		end

	is_stair_steps:	BOOLEAN
			-- Return true if the combination is a stair steps
		require
			cards /=Void
		local
			val:REAL
			number_pair:REAL
			i:INTEGER
		do
			if not (cards.count.integer_remainder (2)=0)or cards.count<=2 or number_of_specials>1 then
				Result:= False
			else
				number_pair:= cards.count.quotient (2).truncated_to_integer
				if has_the_phoenix and has_single then
					get_the_phoenix.set_value (single.value)
				end
				Result:=True
				val:=smallest_card.value
				from
					i:=0
				until
					i=number_pair
				loop
					Result:=Result and has_pair_val(val)
					val:=val+1
					i:=i+1
				end
			end
		end


	is_bomba : BOOLEAN
			-- result true if this combination is bomba
		do
			Result := is_straight_flush or is_four_of_a_number
		end

	get_the_mahjong:G3_CARD
			-- Return true if the combination has THE MAHJONG
		require
			cards/=Void
		do
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.is_the_mahjongg then
					Result:=cards.item
				end
				cards.forth
			end
		end

		biggest_card:G3_CARD
			--Return the biggest card of the combination
		require
			cards /= Void
		do
			Result:=cards.first
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.value>Result.value then
					Result:=cards.item
				end
				cards.forth
			end
		end

	smallest_card : G3_CARD
			--Return the smallest card of the combination
		require
			cards /= Void
		do
			Result:=cards.first
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.value<Result.value then
					Result:=cards.item
				end
				cards.forth
			end
		end


feature {G3_COMBINATION} -- Used per feature is_bomba

	is_straight_flush:BOOLEAN
			--a row of at least 5 cards following on in sequence from each other, and all of the same suit
		do
			Result := True
			if not (cards.count >= 5) then
				Result := False
			else
				Result:= is_straight and all_cards_same_kind
			end
		end

	all_cards_same_kind:BOOLEAN
			--Return true if all cards have same kind
		require
			cards/=Void
		local
			kind_:STRING
		do
			kind_:=cards.first.kind
			Result:= True
			from
				cards.start
			until
				cards.off or not Result
			loop
				if not cards.item.kind.is_equal (kind_) then
					Result:= False
				end
				cards.forth
			end
		end

	is_four_of_a_number:BOOLEAN
			-- four cards of the same number
		local
			first_card : G3_CARD
		do
			Result := True
			if  not (cards.count = 4) then
				-- If the list's size is not 4, the feature finishes and returns False.
				Result := False
			else
				-- Otherwise verifies if all cards have the same value.
				first_card := cards.first
				from
					cards.start
				until
					(cards.off) or (not Result)
				loop
					if not cards.item.has_the_same_number(first_card) then
						Result := False
					end
					cards.forth
				end
			end
		end


feature {G3_COMBINATION}

	has_triple : BOOLEAN
			-- Return true if the combination has a triple
		require
			cards.count>=3
		do
			Result:=False
			from
				cards.start
			until
				Result or cards.off
			loop
				if ocurrences(cards.item)=3 then
					Result:=True
				end
				cards.forth
			end
		end

	has_pair:BOOLEAN
			-- Return true if the combination has a triple
		require
			cards.count>=2
		do
			Result:=False
			from
				cards.start
			until
				Result or cards.off
			loop
				if ocurrences(cards.item)=2 then
					Result:=True
				end
				cards.forth
			end
		end

	has_single : BOOLEAN
			-- Return true if the combination has a single
		require
			cards.count>=1
		do
			Result:=False
			from
				cards.start
			until
				Result or cards.off
			loop
				if ocurrences(cards.item)=1 then
					Result:=True
				end
				cards.forth
			end
		end


	has_pair_val(val:REAL): BOOLEAN
			-- Return true if the combination has a pair with value specified
		require
			cards/=Void
		local
			n:INTEGER
		do
			n:=0
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.value=val then
					n:=n+1
				end
				cards.forth
			end
			Result:= n=2
		end

	number_of_pair:INTEGER
			--Return the number of pair that the combination has
		require
			cards/=Void
		do
			Result:= 0
			from
				cards.start
			until
				cards.off
			loop
				if ocurrences(cards.item)=2 then
					Result:= Result+1
				end
				cards.forth
			end
			Result:= Result.quotient (2).truncated_to_integer
		end


	ocurrences (card : G3_CARD): INTEGER
			-- Return the count of cards's ocurrences  with same value of card
		local
			list : LINKED_LIST[G3_CARD]
		do
			create list.make
			list.copy (cards)
			Result:=0
			from
				list.start
			until
				list.off
			loop
				if card.value=list.item.value then
					Result:=Result+1
				end
				list.forth
			end
		end

	cards_same_number (card : G3_CARD): LINKED_LIST[G3_CARD]
			-- Return cards with same number
		local
			list : LINKED_LIST[G3_CARD]
		do
			create list.make
			create Result.make
			list.copy (cards)
			from
				list.start
			until
				list.off
			loop
				if card.has_the_same_number (list.item) then
					Result.sequence_put (list.item)
				end
				list.forth
			end
		end

	cards_same_value (card : G3_CARD): LINKED_LIST[G3_CARD]
			-- Return cards with same number
		local
			list : LINKED_LIST[G3_CARD]
		do
			create list.make
			create Result.make
			list.copy (cards)
			from
				list.start
			until
				list.off
			loop
				if card.value=list.item.value then
					Result.sequence_put (list.item)
				end
				list.forth
			end
		end


	triple:G3_CARD
			--Return a triple
		require
			has_triple: has_triple
		do
			from
				cards.start
			until
				cards.off
			loop
				if ocurrences(cards.item)=3 then
					Result:=cards.item
				end
				cards.forth
			end
		end

	single:G3_CARD
			--Return a single
		require
			has_single: has_single
		do
			from
				cards.start
			until
				cards.off
			loop
				if ocurrences(cards.item)=1 then
					Result:=cards.item
				end
				cards.forth
			end
		end


	delete_cards (cards_to_delete : LINKED_LIST [G3_CARD])
				-- Remove cards to combination
		require

		do
			from
				cards_to_delete.start
			until
				cards_to_delete.off
			loop
				delete_card(cards_to_delete.item)
				cards_to_delete.forth
			end
		end

	delete_card (card_to_delete:G3_CARD)
			-- Remove a specified card to combination
		do
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.is_equal (card_to_delete) then
					cards.remove
				end
				cards.forth
			end
		end

	is_straight_with_the_phoenix: BOOLEAN
			--Return true if the combination is a straight with the_phoenix
		require
			cards/=Void
		local
			comb: G3_COMBINATION
			the_phoenix : G3_CARD
			val:REAL
			i:INTEGER
			missing_cards: INTEGER
		do
			create comb.make
			create the_phoenix.make ("", "THE PHOENIX",TRUE, -25, 1.5)
			comb.cards.copy (cards)
			comb.delete_card (the_phoenix) --delete the_phoenix to combination
			val:= comb.smallest_card.value
			missing_cards:=0
			from
				i:=1
			until
				i=comb.cards.count
			loop
				if not (comb.has_card_value(val+1)) then
					missing_cards:=missing_cards+1
				end
				val:=val+1
				i:=i+1
			end
			Result:= missing_cards<=1
		end

	straight_made:BOOLEAN
			--Return true if is a straiht made
		require
			cards/=Void
		local
			val:REAL
			i:INTEGER
		do
			Result:=True
			val:= smallest_card.value
			from
				i:=1
			until
				i=cards.count or not Result
			loop
				if not (has_card_value(val+1)) then
					Result:=False
				end
				val:=val+1
				i:=i+1
			end
		end

	set_the_phoenix_for_straight
			--Set value of the_phoenix for a straight
		require
			cards/=Void
		local
			comb: G3_COMBINATION
			the_phoenix : G3_CARD
			val:REAL
			i:INTEGER
			missing_cards: INTEGER
		do
			if not straight_made then
				create comb.make
				create the_phoenix.make ("", "THE PHOENIX",TRUE, -25, 1.5)
				comb.cards.copy (cards)
				comb.delete_card (the_phoenix) --delete the_phoenix to combination
				val:= comb.smallest_card.value
				missing_cards:=0
				from
					i:=1
				until
					i=comb.cards.count
				loop
					if not (comb.has_card_value(val+1)) then
						get_the_phoenix.set_value (val+1)
						missing_cards:=missing_cards+1
					end
					val:=val+1
					i:=i+1
				end
				if missing_cards=0 then
					if(comb.biggest_card.value<14)then
						get_the_phoenix.set_value (comb.biggest_card.value+1)
					else
						get_the_phoenix.set_value (comb.smallest_card.value-1)
					end
				end
			end
		end


	has_card_value (value_:REAL):BOOLEAN
			-- Return true if the combination has a card with a value specified
		require
			cards/=Void
		do
			Result:=False
			from
				cards.start
			until
				cards.off or Result
			loop
				if cards.item.value=value_ then
					Result:=True
				end
				cards.forth
			end
		end

	has_the_phoenix:BOOLEAN
			-- Return true if the combiantion has THE PHOENIX
		require
			cards/=Void
		do
			Result:=False
			from
				cards.start
			until
				cards.off or Result
			loop
				if cards.item.is_the_phoenix then
					Result:=True
				end
				cards.forth
			end
		end

	number_of_specials: INTEGER
			--Return the number of specials cards that the combination has
		require
			cards/=Void
		do
			Result:=0
			from
				cards.start
			until
				cards.off
			loop
				if	cards.item.special	then
					Result:=Result+1
				end
				cards.forth
			end
		end

	get_the_phoenix:G3_CARD
			--Return THE_PHOENIX
		require
			has_the_phoenix: has_the_phoenix
		do
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.is_the_phoenix then
					Result:= cards.item
				end
				cards.forth
			end
		end

feature  {G3_COMBINATION}-- Features used per kills

	kind_of_play: STRING
			-- Return the kind of play of the combination
		require
			cards/=Void
		do
			if is_single then
				Result:="Single"
			end
			if is_pair then
				Result:="Pair"
			end
			if is_triple then
				Result:="Triple"
			end
			if is_full_house then
				Result:="Full House"
			end
			if is_straight and not all_cards_same_kind then
				Result:="Straight"
			end
			if is_stair_steps then
				Result:="Stair Steps"
			end
			if is_bomba then
				Result:="Bomba"
			end
		end

	kill_single(other_combination:G3_COMBINATION): BOOLEAN
		require
			are_singles: is_single and other_combination.is_single
		do
			if cards.first.is_the_phoenix and not(other_combination.cards.first.is_the_dragon) then
				get_the_phoenix.set_value (other_combination.cards.first.value + 0.5)
			end
		 	Result:= cards.first.kills (other_combination.cards.first)
		end

	kill_pair(other_combination:G3_COMBINATION): BOOLEAN
		require
			are_pairs: is_pair and other_combination.is_pair
		do
			Result:=biggest_card.value>other_combination.biggest_card.value
		end



	kill_triple(other_combination:G3_COMBINATION): BOOLEAN
		require
			are_triples: is_triple and other_combination.is_triple
		do
			Result:= biggest_card.value>other_combination.biggest_card.value
		end

	kill_full_house(other_combination:G3_COMBINATION): BOOLEAN
		require
			are_full_house: is_full_house and other_combination.is_full_house
		do
			Result:= triple.value> other_combination.triple.value
		end

	kill_straight(other_combination:G3_COMBINATION): BOOLEAN
		require
			is_straight and other_combination.is_straight
		do
			if cards.count/=other_combination.cards.count then
				Result:=False
			else
				Result:=biggest_card.value>other_combination.biggest_card.value
			end
		end

	kill_stair_steps(other_combination:G3_COMBINATION): BOOLEAN
		require
			are_stair_steps: is_stair_steps and other_combination.is_stair_steps
		do
			if cards.count/=other_combination.cards.count then
				Result:=False
			else
				Result:=biggest_card.value>other_combination.biggest_card.value
			end

		end

	kill_bomba(other_combination:G3_COMBINATION): BOOLEAN
		require
			is_bomba
		do
			if other_combination.is_bomba then
				if  other_combination.is_four_of_a_number then
					Result:= (is_four_of_a_number and biggest_card.value>other_combination.biggest_card.value) or is_straight_flush
				else
					Result:= is_straight_flush and (cards.count>other_combination.cards.count or ( cards.count>other_combination.cards.count and biggest_card.value>other_combination.biggest_card.value ))
				end
			else
				Result:=True
			end

		end

feature

	cards : LINKED_LIST [G3_CARD]

invariant
	correct_attributes: cards/= Void

end
