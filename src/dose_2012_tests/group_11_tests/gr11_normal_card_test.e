note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "3/12/2012"
	revision: "0.1"
	testing: "type/manual"

class
	GR11_NORMAL_CARD_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	make_test
			-- testing the correct behaviour of the class GR11_NORMAL_CARD
		note
			testing:  "covers/{GR11_NORMAL_CARD}"
			testing:  "user/GR11"
		local
			card_test:GR11_NORMAL_CARD
			string_card : STRING
		do
			string_card:="MF=3 RF=3 FF=5 MCS=4 MCS=2 FCS=2"
			create card_test.make (string_card)

			assert("the attributes in the card are right", card_test.get_movement_fighter=3)
			assert("the attributes in the card are right", card_test.get_movement_capital_ship=4)
		end
end
