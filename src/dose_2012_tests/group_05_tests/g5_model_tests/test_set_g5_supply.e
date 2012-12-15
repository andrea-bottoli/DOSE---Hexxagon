note
	description: "Summary description for {TEST_SET_G5_SUPPLY}."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_SET_G5_SUPPLY

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature --Initialization

table: G5_TABLE
inet : G5_INET_TO_LOGIC

	on_prepare()
	do
		create table.make_game_default (3, inet)
	end
feature -- Test routines


	test_init_supply
			-- tests the init_supply_set_default feature used to initialize a new match
			-- with a default set
		note
			testing: "covers/{G5_SUPPLY}.init_supply_set_default"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			supply: G5_SUPPLY
			card_kingdom: ARRAY [G5_CARD]
		do
			assert("supplies not initialized",((supply.sub_supply_victory = VOID) and (supply.sub_supply_kingdom = VOID) and (supply.sub_supply_treasure = VOID) and (supply.sub_supply_curse = VOID)))
			-- MODIFICATA RIGA SOTTO
			create supply.init_supply (table, card_kingdom, 5, 5, 5, 5)
			assert("supply initialized:",((supply.sub_supply_victory /= VOID) and (supply.sub_supply_kingdom /= VOID) and (supply.sub_supply_treasure /= VOID) and (supply.sub_supply_curse /= VOID)))
			assert("victory supply lenght is correct:",(supply.sub_supply_victory.count = supply.sub_supply_victory))
			assert("kingdom supply lenght is correct:",(supply.sub_supply_kingdom.count = supply.sub_supply_kingdom))
			assert("treasure supply lenght is correct:",(supply.sub_supply_treasure.count = supply.sub_supply_treasure))
			assert("curse supply lenght is correct:",(supply.sub_supply_curse.count = supply.sub_supply_curse))
		end

	test_take_card
			-- tests the take_card feature used to take a card from one of the supply piles
		note
			testing: "covers/{G5_SUPPLY}.take_card"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			supply: G5_SUPPLY
			pile: G5_PILE_CARD_SUPPLY
			returned_card: G5_CARD
			card_kingdom: ARRAY [G5_CARD]
		do
			-- CONSTRUSCTOR missed
			-- create pile
			-- MODIFICATA RIGA SOTTO
			create supply.init_supply (table, card_kingdom, 5, 5, 5, 5)
			returned_card:= supply.take_card (pile)
			assert("take_card returns the correct card:",returned_card.id.is_equal (pile.card.id))
		end


	test_search_card
			-- tests the search_card feature, that searches for a specific card into the piles of supply
		note
			testing: "covers/{G5_SUPPLY}.search_card"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			supply: G5_SUPPLY
			pile: G5_PILE_CARD_SUPPLY
			card_kingdom: ARRAY [G5_CARD]
		do
			-- PILE_CARD_SUPPLY MISSED (So we can't create a pile with cellar card (if default set contains cellar this will work)
			-- MODIFICATA RIGA SOTTO
			create supply.init_supply (table, card_kingdom, 5, 5, 5, 5)
			pile:= supply.search_card ("cellar")
			assert("search_card find the correct pile",pile.get_instance.id.is_equal ("cellar"))
		end

end
