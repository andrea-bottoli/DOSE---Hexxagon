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
		do
		ensure
			Result = True or Result = False
		end

	kills (other_combination : G3_COMBINATION) : BOOLEAN
			-- return true if this combination are more strongly that parameter
		do
			if other_combination = void then
				Result := True
			else
				-- to do
				-- it is a dummy implementation
				Result := False
			end

		end

	is_pair : BOOLEAN
			-- return true if the combination is a pair
		require
			valid_count_cards: cards.count=2
		do
			Result:= cards.at (1).has_the_same_number (cards.at (2))
		end

	is_triple : BOOLEAN
			-- return true if the combination is a triple
		require
			valid_count_cards: cards.count=3
		do
			Result:= cards.at (1).has_the_same_number (cards.at (2)) and cards.at (2).has_the_same_number (cards.at (3))
		end


	is_bomba : BOOLEAN
			-- result true if this combination is bomba
		do
			Result := is_straight_flush or is_four_of_a_kind
		end

	is_straight_flush:BOOLEAN
			--a row of at least 5 cards following on in sequence from each other, and all of the same suit
		do
			Result := True
			if not (cards.count >= 5) then
				Result := False
			else
				-- Missing implementation
			end
		end

	is_four_of_a_kind:BOOLEAN
			-- four cards of the same value
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





feature

	cards : LINKED_LIST [G3_CARD]

invariant
	correct_attributes: cards/= Void

end
