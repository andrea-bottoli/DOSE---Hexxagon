note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_SETTINGS_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	DO_SETTINGS_TESTS
			-- New test routine
		local
			settings : DO_SETTINGS
			cards : LINKED_LIST[INTEGER]
		do
			--Check make
			settings.make (3, 3, 3, 3, 3, cards)
			assert("available_cards_setted",settings.available_cards.is_equal (cards))
			assert("players_setted",settings.players=2)
			assert("kingdom_cards_setted",settings.kingdom_cards=2)
			assert("piles_to_exhaust_setted",settings.piles_to_exhaust=2)
			assert("nro_of_each_card_settesd",settings.nro_of_each_card=2)
			assert("nro_of_each_vp",settings.nro_of_each_vp=2)

			--Check Setters
			settings.set_kingdom_cards (5)
			assert("set_kingdom_cards",settings.kingdom_cards=5)
			settings.set_players (4)
			assert("set_players",settings.players=4)
			settings.set_piles_to_exhaust (5)
			assert("set_piles_to_exhaust",settings.piles_to_exhaust=5)
			settings.set_nro_of_each_card (5)
			assert("set_nro_of_each_card",settings.nro_of_each_card=5)
			settings.set_nro_of_each_vp (5)
			assert("set_nro_of_each_vp",settings.nro_of_each_vp=5)

			--Check Boolean Methods
			--Parsing true values
			--All assertions have to be true
			assert("valid_number_of_players",settings.valid_number_of_players (3))
			assert("valid_number_of_kingdom_cards",settings.valid_number_of_kingdom_cards (5))
			assert("valid_number_of_nro_of_each_card",settings.valid_number_of_nro_of_each_card (5))
			assert("settings.valid_number_of_nro_of_each_vp",settings.valid_number_of_nro_of_each_vp (5))
			assert("valid_number_of_piles_to_exhaust",settings.valid_number_of_piles_to_exhaust (5))

		end

end


