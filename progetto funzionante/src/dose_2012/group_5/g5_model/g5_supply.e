note
	description: "Summary description for {G5_SUPPLY}."
	author: "Team: Rio Cuarto 4"
	date: "$17/11/2012$"
	revision: "$0.1$"

class
	G5_SUPPLY

create
	init_supply_set_default, init_supply_randomize, init_supply_personalized

feature -- Constant

	COUNT_VICTORY: INTEGER = 3
		-- Size of sub_supply_victory

	COUNT_TREASURE: INTEGER = 3
		-- Size of sub_supply_treasure

	COUNT_KINGDOM: INTEGER = 10
		-- Size of sub_supply_kingdom

	COUNT_CURSE: INTEGER = 1
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

	count_piles_exhausted: INTEGER
		-- Indicates the number of piles of cards exhausted

feature -- State Report

	province_exhausted: BOOLEAN
		-- Provinces stack is exhausted?

feature -- Initialization

	init_supply_set_default ()
		-- Initializes the supply with the "SET_DEFAULT"
		require
			supply_not_initialized: ((sub_supply_victory = VOID) and (sub_supply_kingdom = VOID) and (sub_supply_treasure = VOID) and (sub_supply_curse = VOID))
		do
		ensure
			supply_initialized: ((sub_supply_victory /= VOID) and (sub_supply_kingdom /= VOID) and (sub_supply_treasure /= VOID) and (sub_supply_curse /= VOID))
			length_supply_fixed: ((sub_supply_victory.count = COUNT_VICTORY) and (sub_supply_kingdom.count = COUNT_KINGDOM) and (sub_supply_treasure.count = COUNT_TREASURE) and (sub_supply_curse.count = COUNT_CURSE))
		end

	init_supply_randomize ()
		-- Initializes the supply with cards of kingdom random
		require
			supply_not_initialized: ((sub_supply_victory = VOID) and (sub_supply_kingdom = VOID) and (sub_supply_treasure = VOID) and (sub_supply_curse = VOID))
		do
		ensure
			supply_initialized: ((sub_supply_victory /= VOID) and (sub_supply_kingdom /= VOID) and (sub_supply_treasure /= VOID) and (sub_supply_curse /= VOID))
			length_supply_fixed: ((sub_supply_victory.count = COUNT_VICTORY) and (sub_supply_kingdom.count = COUNT_KINGDOM) and (sub_supply_treasure.count = COUNT_TREASURE) and (sub_supply_curse.count = COUNT_CURSE))
		end

	init_supply_personalized (cards_kingdom: ARRAY [G5_CARD])
		-- Initializes the supply with cards of kingdom that are passed as parameter
		require
			valid_arg:  cards_kingdom.for_all (agent (card: G5_CARD): BOOLEAN do Result := (card.type.has_substring("kingdom") and card /= VOID) end)
			supply_not_initialized: ((sub_supply_victory = VOID) and (sub_supply_kingdom = VOID) and (sub_supply_treasure = VOID) and (sub_supply_curse = VOID))
			length_arg_fixed: ((cards_kingdom.count = count_kingdom) and (cards_kingdom /= VOID))
		do
		ensure
			supply_initialized: ((sub_supply_victory /= VOID) and (sub_supply_kingdom /= VOID) and (sub_supply_treasure /= VOID) and (sub_supply_curse /= VOID))
			length_supply_fixed: ((sub_supply_victory.count = COUNT_VICTORY) and (sub_supply_kingdom.count = COUNT_KINGDOM) and (sub_supply_treasure.count = COUNT_TREASURE) and (sub_supply_curse.count = COUNT_CURSE))
		end

feature -- Obtaining

	take_card (pile: G5_PILE_CARD_SUPPLY) : G5_CARD
		-- Takes a card from a supply stack
		require
			arg_valid: (pile /= VOID)
		do
		ensure
			result_valid: (result = pile.get_instance)
		end

	search_card (id_card: STRING) : G5_PILE_CARD_SUPPLY
		-- Search a card in all the supply. If found, returns the corresponding PILE_CARD_SUPPLY.
		-- VOID in case of not be found.
		require
			arg_valid: (id_card /= VOID)
		do
		ensure
			result_valid: ((result.card.id = id_card) or (result = VOID))
		end

end
