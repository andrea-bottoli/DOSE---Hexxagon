note
	description: "Summary description for {G5_SUPPLY}."
	author: "Team: Rio Cuarto 4"
	date: "$17/11/2012$"
	revision: "$0.2$"

class
	G5_SUPPLY

create
	init_supply

feature -- Constant

	Victory_piles: INTEGER = 3
		-- Size of sub_supply_victory

	Treasure_piles: INTEGER = 3
		-- Size of sub_supply_treasure

	Kingdom_piles: INTEGER = 10
		-- Size of sub_supply_kingdom

	Curse_piles: INTEGER = 1
		-- Size of sub_supply_curse

feature -- Elements

	table: G5_TABLE
		-- Reference to the gaming table, where this the supply

	sub_supply_victory: ARRAY [G5_PILE_CARD_SUPPLY]
		-- Sub supply for cards victory

	sub_supply_kingdom: ARRAY[G5_PILE_CARD_SUPPLY]
		-- Sub supply for cards kingdom

	sub_supply_treasure: ARRAY[G5_PILE_CARD_SUPPLY]
		-- Sub supply for cards treasure

	sub_supply_curse: ARRAY [G5_PILE_CARD_SUPPLY]
		-- Sub supply for cards curse

feature -- Measurements

	amount_piles_exhausted: INTEGER
		-- Indicates the number of piles of cards exhausted

feature -- State Report

	province_exhausted: BOOLEAN
		-- Provinces stack is exhausted?

feature -- Initialization

	init_supply (associated_table: G5_TABLE; cards_kingdom: ARRAY [G5_CARD]; amount_estate: INTEGER; amount_duchy: INTEGER; amount_province: INTEGER; amount_curse: INTEGER)
		-- Initializes the supply with the "SET_DEFAULT"
		require
			supply_not_initialized: ((sub_supply_victory = Void) and (sub_supply_kingdom = Void) and (sub_supply_treasure = Void) and (sub_supply_curse = Void))
			valid_arg_cards_kingdom: cards_kingdom.count = Kingdom_piles and cards_kingdom.for_all (agent (c: G5_CARD): BOOLEAN do Result := (c.type.has_substring("kingdom") and c /= Void) end)
			valid_arg_cards_victory: amount_estate > 7 and amount_duchy > 7 and amount_province > 7
			valid_arg_curse: amount_curse > 19
		local
			card: G5_CARD
			pile: G5_PILE_CARD_SUPPLY
			command_victory: G5_VICTORY
			command_treasure: G5_TREASURE
			command_curse: G5_CURSE
			i : INTEGER
		do
			table := associated_table

			-- Initialization sub_supply_victory		
			create sub_supply_victory.make_filled (pile, 1, Victory_piles)
			create command_victory.make(table.receiver)

			create card.make ({G5_MACRO_CARDS}.estate, {G5_MACRO_CARDS}.estate_cost, {G5_MACRO_CARDS}.victory)
			card.set_command2 (command_victory)
			create pile.make (card, amount_estate)
			sub_supply_victory.put (pile, 1)

			create card.make ({G5_MACRO_CARDS}.duchy, {G5_MACRO_CARDS}.duchy_cost, {G5_MACRO_CARDS}.victory)
			card.set_command2 (command_victory)
			create pile.make (card, amount_duchy)
			sub_supply_victory.put (pile, 2)

			create card.make ({G5_MACRO_CARDS}.province, {G5_MACRO_CARDS}.province_cost, {G5_MACRO_CARDS}.victory)
			card.set_command2 (command_victory)
			create pile.make (card, amount_province)
			sub_supply_victory.put (pile, 3)

			-- Initialization sub_supply_kingdom		
			create sub_supply_kingdom.make_filled (pile, 1, Kingdom_piles)

			from
				i := 1
			until
				i > cards_kingdom.count
			loop
				card := cards_kingdom.item (i)
				create pile.make(card, 10)
				sub_supply_kingdom.put (pile, i)
				i := i + 1
			end

			pile := search_card("K9")
			if (pile /= Void) then
				pile.decrement()
				pile.decrement()
			end

			sub_supply_kingdom := ordain_sub_supply(sub_supply_kingdom)

			-- Initialization sub_supply_treasure
			create sub_supply_treasure.make_filled (pile, 1, Treasure_piles)
			create command_treasure.make(table.receiver)

			create card.make ({G5_MACRO_CARDS}.copper, {G5_MACRO_CARDS}.copper_cost, {G5_MACRO_CARDS}.treasure)
			card.set_command2 (command_treasure)
			create pile.make (card, 60)
			sub_supply_treasure.put (pile, 1)

			create card.make ({G5_MACRO_CARDS}.silver, {G5_MACRO_CARDS}.silver_cost, {G5_MACRO_CARDS}.treasure)
			card.set_command2 (command_treasure)
			create pile.make (card, 40)
			sub_supply_treasure.put (pile, 2)

			create card.make ({G5_MACRO_CARDS}.gold, {G5_MACRO_CARDS}.gold_cost, {G5_MACRO_CARDS}.treasure)
			card.set_command2 (command_treasure)
			create pile.make (card, 30)
			sub_supply_treasure.put (pile, 3)

			-- Initialization sub_supply_curse
			create sub_supply_curse.make_filled (pile, 1, Curse_piles)
			create command_curse.make(table.receiver)

			create card.make ({G5_MACRO_CARDS}.curse, {G5_MACRO_CARDS}.curse_cost, {G5_MACRO_CARDS}.type_curse)
			card.set_command2 (command_curse)
			create pile.make (card, amount_curse)
			sub_supply_curse.put (pile, 1)

		ensure
			supply_initialized: ((sub_supply_victory /= Void) and (sub_supply_kingdom /= Void) and (sub_supply_treasure /= Void) and (sub_supply_curse /= Void))
			length_supply_fixed: ((sub_supply_victory.count = Victory_piles) and (sub_supply_kingdom.count = Kingdom_piles) and (sub_supply_treasure.count = Treasure_piles) and (sub_supply_curse.count = Curse_piles))
		end

feature -- Obtaining

	take_card (pile: G5_PILE_CARD_SUPPLY) : G5_CARD
		-- Takes a card from a supply stack
		require
			arg_valid: (pile /= Void) and (pile.amount_available > 0)
		do
			result := pile.get_instance
			pile.decrement()
			if pile.amount_available = 0 then
				amount_piles_exhausted := amount_piles_exhausted + 1
				if pile.card.id.is_equal ({G5_MACRO_CARDS}.province) then
					province_exhausted := True
				end
			end
		ensure
			result_valid: (result = pile.get_instance)
		end

	search_card (id_card: STRING) : G5_PILE_CARD_SUPPLY
		-- Search a card in all the supply. If found, returns the corresponding PILE_CARD_SUPPLY.
		-- VOID in case of not be found.
		require
			arg_valid: (id_card /= Void) and ((id_card.has ('K')) or (id_card.has ('T')) or (id_card.has ('V')) or (id_card.has ('C')))
		do
			if id_card.has ('K') then
				result := search(id_card, sub_supply_kingdom)
			else
				if id_card.has ('T') then
					result := search(id_card, sub_supply_treasure)
				else
					if id_card.has ('V') then
						result := search(id_card, sub_supply_victory)
					else
						result := search(id_card, sub_supply_curse)
					end
				end
			end
		ensure
			result_valid: ((result = Void) or (result.card.id.is_equal (id_card)))
		end

	get_cards_by_cost(cost: INTEGER): ARRAY [STRING]
		-- Gets of supply the cards with cost less than or equal to "cost"
		require
		local
			cards_victory: ARRAY [STRING]
			cards_treasure: ARRAY [STRING]
			cards_curse: ARRAY [STRING]
			cards_kingdom: ARRAY [STRING]
		do
			cards_victory := get_card_sub_supply_by_cost(sub_supply_victory, cost)
			cards_treasure := get_card_sub_supply_by_cost(sub_supply_treasure, cost)
			cards_curse := get_card_sub_supply_by_cost(sub_supply_curse, cost)
			cards_kingdom := get_card_sub_supply_by_cost(sub_supply_kingdom, cost)
			create result.make_empty
			result.grow (cards_treasure.count + cards_victory.count + cards_curse.count + cards_kingdom.count)
			result := append_cards(cards_treasure,cards_victory)
			result := append_cards(result,cards_curse)
			result := append_cards(result,cards_kingdom)
		ensure
		end

	get_info_supply(): HASH_TABLE [INTEGER, STRING]
		-- Gets the most relevant information of supply
		require
		do
			create result.make(17)
			result.extend (sub_supply_victory.item (1).amount_available, sub_supply_victory.item (1).get_instance.id)
			result.extend (sub_supply_victory.item (2).amount_available, sub_supply_victory.item (2).get_instance.id)
			result.extend (sub_supply_victory.item (3).amount_available, sub_supply_victory.item (3).get_instance.id)

			result.extend (sub_supply_treasure.item (1).amount_available, sub_supply_treasure.item (1).get_instance.id)
			result.extend (sub_supply_treasure.item (2).amount_available, sub_supply_treasure.item (2).get_instance.id)
			result.extend (sub_supply_treasure.item (3).amount_available, sub_supply_treasure.item (3).get_instance.id)

			result.extend (sub_supply_curse.item (1).amount_available, sub_supply_curse.item (1).get_instance.id)

			result.extend (sub_supply_kingdom.item (1).amount_available, sub_supply_kingdom.item (1).get_instance.id)
			result.extend (sub_supply_kingdom.item (2).amount_available, sub_supply_kingdom.item (2).get_instance.id)
			result.extend (sub_supply_kingdom.item (3).amount_available, sub_supply_kingdom.item (3).get_instance.id)
			result.extend (sub_supply_kingdom.item (4).amount_available, sub_supply_kingdom.item (4).get_instance.id)
			result.extend (sub_supply_kingdom.item (5).amount_available, sub_supply_kingdom.item (5).get_instance.id)
			result.extend (sub_supply_kingdom.item (6).amount_available, sub_supply_kingdom.item (6).get_instance.id)
			result.extend (sub_supply_kingdom.item (7).amount_available, sub_supply_kingdom.item (7).get_instance.id)
			result.extend (sub_supply_kingdom.item (8).amount_available, sub_supply_kingdom.item (8).get_instance.id)
			result.extend (sub_supply_kingdom.item (9).amount_available, sub_supply_kingdom.item (9).get_instance.id)
			result.extend (sub_supply_kingdom.item (10).amount_available, sub_supply_kingdom.item (10).get_instance.id)
		ensure
		end

feature -- Ordination

	ordain_sub_supply(sub_supply: ARRAY [G5_PILE_CARD_SUPPLY]): ARRAY [G5_PILE_CARD_SUPPLY]
		-- Order sub-supply for cost of the cards
		require
		local
			ind: INTEGER
			pos_item: INTEGER
			ind_r: INTEGER
			pile: G5_PILE_CARD_SUPPLY
		do
			from
				create result.make_filled (pile, 1, sub_supply.count)
				ind_r := 1
			until
				ind_r > result.count
			loop
				from
					ind := ind_r
				until
					ind > sub_supply.count
				loop
					if (sub_supply.item (ind).card.cost) < (sub_supply.item (ind_r).card.cost) then
						pile := sub_supply.item (ind_r)
						sub_supply.put (sub_supply.item (ind), ind_r)
						sub_supply.put (pile, ind)
					end
					ind := ind + 1
				end
				ind_r := ind_r + 1
			end
			result := sub_supply
		ensure
		end

feature {NONE} -- Auxiliary

	append_cards(array1: ARRAY[STRING]; array2: ARRAY[STRING]): ARRAY[STRING]
		-- Joins two arrays of STRING
		require
		local
			i: INTEGER
			j: INTEGER
		do
			from
				create result.make_empty
				result.copy (array1)
				result.grow (array1.count + array2.count)
				j := array1.count + 1
				i := 1;
			until
				i > array2.count
			loop
				result.put (array2.item (i), j)
				j := j + 1
				i := i + 1
			end
		ensure
		end

	get_card_sub_supply_by_cost(sub_supply: ARRAY [G5_PILE_CARD_SUPPLY]; cost: INTEGER): ARRAY[STRING]
		-- Gets of sub_supply the cards with cost less than or equal to "cost"
		require
			valid_arg: sub_supply.count > 0 and cost > -1
		local
			i: INTEGER
			mayor_cost: BOOLEAN
		do
			from
				create result.make_empty
				i := 1
			until
				i > sub_supply.count or mayor_cost
			loop
				if sub_supply.item (i).get_instance.cost > cost then
					mayor_cost := True
				else
					result.grow (i)
					result.put (sub_supply.item (i).get_instance.id, i)
					i := i + 1
				end
			end
		ensure
		end

	search(id_card: STRING; sub_supply: ARRAY [G5_PILE_CARD_SUPPLY]): G5_PILE_CARD_SUPPLY
		-- Search a card in a particular sub_supply. If found, returns the corresponding PILE_CARD_SUPPLY.
		-- VOID in case of not be found.
		require
			valid_arg: id_card /= Void and sub_supply /= Void
		local
			i: INTEGER
			encountered: BOOLEAN
		do
			from
				i := 1;
			until
				i > sub_supply.count or encountered
			loop
				if sub_supply.item (i).card.id.is_equal (id_card) then
					result := sub_supply.item (i)
					encountered := True
				end
				i := i + 1
			end
			if not encountered then
				result := Void
			end
		ensure
			result_valid: result = Void or result.card.id.is_equal (id_card)
		end
end
