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


feature -- Test routines


	test_init_supply_set_default
			-- tests the init_supply_set_default feature used to initialize a new match
			-- with a default set
		note
			testing: "covers/{G5_SUPPLY}.init_supply_set_default"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			supply: G5_SUPPLY
		do
			assert("supplies not initialized",((supply.sub_supply_victory = VOID) and (supply.sub_supply_kingdom = VOID) and (supply.sub_supply_treasure = VOID) and (supply.sub_supply_curse = VOID)))
			create supply.init_supply_set_default
			assert("supply initialized:",((supply.sub_supply_victory /= VOID) and (supply.sub_supply_kingdom /= VOID) and (supply.sub_supply_treasure /= VOID) and (supply.sub_supply_curse /= VOID)))
			assert("victory supply lenght is correct:",(supply.sub_supply_victory.count = supply.COUNT_VICTORY))
			assert("kingdom supply lenght is correct:",(supply.sub_supply_kingdom.count = supply.COUNT_KINGDOM))
			assert("treasure supply lenght is correct:",(supply.sub_supply_treasure.count = supply.COUNT_TREASURE))
			assert("curse supply lenght is correct:",(supply.sub_supply_curse.count = supply.COUNT_CURSE))
		end


	test_init_supply_randomize
			-- tests the init_supply_randomize feature used to initialize a new match
			-- with a random set
		note
			testing: "covers/{G5_SUPPLY}.init_supply_randomize"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			supply: G5_SUPPLY
		do
			assert("supplies not initialized",((supply.sub_supply_victory = VOID) and (supply.sub_supply_kingdom = VOID) and (supply.sub_supply_treasure = VOID) and (supply.sub_supply_curse = VOID)))
			create supply.init_supply_randomize
			assert("supply initialized:",((supply.sub_supply_victory /= VOID) and (supply.sub_supply_kingdom /= VOID) and (supply.sub_supply_treasure /= VOID) and (supply.sub_supply_curse /= VOID)))
			assert("victory supply lenght is correct:",(supply.sub_supply_victory.count = supply.COUNT_VICTORY))
			assert("kingdom supply lenght is correct:",(supply.sub_supply_kingdom.count = supply.COUNT_KINGDOM))
			assert("treasure supply lenght is correct:",(supply.sub_supply_treasure.count = supply.COUNT_TREASURE))
			assert("curse supply lenght is correct:",(supply.sub_supply_curse.count = supply.COUNT_CURSE))
		end


	test_init_supply_personalized
			-- tests the init_supply_personalized feature usedo t initialize a new match
			-- with a personalized set
		note
			testing: "covers/{G5_SUPPLY}.init_supply_personalized"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			supply: G5_SUPPLY
			kingdom_cards: ARRAY[G5_CARD]
			a_card: G5_CARD
			i: INTEGER
		do
			create a_card.make ("cellar",2,"action")
			from
				i:=0
			until
				i>10
			loop
				kingdom_cards.put (a_card,i)
			end

			assert("supplies not initialized",((supply.sub_supply_victory = VOID) and (supply.sub_supply_kingdom = VOID) and (supply.sub_supply_treasure = VOID) and (supply.sub_supply_curse = VOID)))
			create supply.init_supply_personalized (kingdom_cards)
			assert("supply initialized:",((supply.sub_supply_victory /= VOID) and (supply.sub_supply_kingdom /= VOID) and (supply.sub_supply_treasure /= VOID) and (supply.sub_supply_curse /= VOID)))
			assert("victory supply lenght is correct:",(supply.sub_supply_victory.count = supply.COUNT_VICTORY))
			assert("kingdom supply lenght is correct:",(supply.sub_supply_kingdom.count = supply.COUNT_KINGDOM))
			assert("treasure supply lenght is correct:",(supply.sub_supply_treasure.count = supply.COUNT_TREASURE))
			assert("curse supply lenght is correct:",(supply.sub_supply_curse.count = supply.COUNT_CURSE))
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
		do
			-- CONSTRUSCTOR missed
			-- create pile
			create supply.init_supply_set_default
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
		do
			-- PILE_CARD_SUPPLY MISSED (So we can't create a pile with cellar card (if default set contains cellar this will work)
			create supply.init_supply_set_default
			pile:= supply.search_card ("cellar")
			assert("search_card find the correct pile",pile.get_instance.id.is_equal ("cellar"))
		end

end
