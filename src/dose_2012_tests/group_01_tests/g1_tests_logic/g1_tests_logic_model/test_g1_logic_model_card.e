note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_CARD

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	test_make
		note
			testing: "covers/{G1_CARD}.make"
			testing: "user/G1"
		local
			card_t : G1_CARD
		do
			create card_t.make
			assert ("Id is 1, Message is null, Type is 0 ", card_t.id.is_equal(1) and card_t.message.is_equal("") and card_t.type.is_equal(0) )
		end

	test_make_card
		note
			testing: "covers/{G1_CARD}.make_card"
			testing: "user/G1"
		local
			card_t : G1_CARD
		do
			create card_t.make
			card_t.make_card(5,"Get out of jail",0)
			assert ("Id is 5, Message is 'Get out of jail', Type is 0 ", card_t.id.is_equal(5) and card_t.message.is_equal("Get out of jail") and card_t.type.is_equal(0) )
		end

	test_set_id_card
		note
			testing: "covers/{G1_CARD}.set_id_card"
			testing: "user/G1"
		local
			card_t : G1_CARD
		do
			create card_t.make
			card_t.set_id_card (10)
			assert ("Id is 10", card_t.id.is_equal(10))
		end

	test_msg_card
		note
			testing: "covers/{G1_CARD}.set_msg_card"
			testing: "user/G1"
		local
			card_t : G1_CARD
		do
			create card_t.make
			card_t.set_msg_card ("Get out of jail")
			assert ("Message is 'Get out of jail'", card_t.message.is_equal("Get out of jail"))
		end

	test_type_card
		note
			testing: "covers/{G1_CARD}.set_type_card"
			testing: "user/G1"
		local
			card_t : G1_CARD
		do
			create card_t.make
			card_t.set_type_card (0)
			assert ("Type is 0", card_t.type.is_equal(0))
		end

end


