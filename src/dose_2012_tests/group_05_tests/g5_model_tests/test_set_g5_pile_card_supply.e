note
	description: "Summary description for {TEST_SET_G5_PILE_CARD_SUPPLY}."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_SET_G5_PILE_CARD_SUPPLY

inherit
	EQA_TEST_SET

feature -- Test routines

	test_get_instance
			-- test the feature decrement_amout of the number of pile_card_supply
		note
			testing: "covers/{G5_PILE_CARD_SUPPLY}.get_instance"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			pile: G5_PILE_CARD_SUPPLY
			card_in_pile: G5_CARD
		do
			-- CONTRUSTOR in not implemented yet
			card_in_pile:= pile.card
			assert("Return the correct instance:",pile.get_instance.id.is_equal (card_in_pile.id))
		end

	test_decrement_amount
			-- test the feature decrement_amout of the number of pile_card_supply
		note
			testing: "covers/{G5_PILE_CARD_SUPPLY}.decrement_amount"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			-- CONSTRUCTOR is not implemented yer
			pile: G5_PILE_CARD_SUPPLY
			old_amount_pile: INTEGER
		do
			old_amount_pile:= pile.amount_available
			pile.decrement()
			assert("decrementation is correct:",old_amount_pile.is_equal (pile.amount_available))
		end


end
