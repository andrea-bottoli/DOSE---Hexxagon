note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	DO_SETTINGS_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	Do_settings_tesete
			-- New test routine
		note
			testing:  "covers/{DO_SETTINGS}"
		local
			my_setting : DO_SETTINGS
			j : LINKED_LIST[INTEGER]
		do
			create my_setting.make(1,1,1,1,1,j)
			assert("player limit",my_setting.valid_number_of_players (-1) = False)
			assert("player accepted",my_setting.valid_number_of_players (3) = True)

			assert("card limit",my_setting.valid_number_of_kingdom_cards (2) = False)
			assert("card ok",my_setting.valid_number_of_kingdom_cards (10) = True)

			assert("piles limit",my_setting.valid_number_of_piles_to_exhaust (2) = False)
			assert("piles ok",my_setting.valid_number_of_piles_to_exhaust (5) = True)

			assert("card limit",my_setting.valid_number_of_nro_of_each_card (2) = False)
			assert("card ok",my_setting.valid_number_of_nro_of_each_card (13) = True)

			assert("vp limit",my_setting.valid_number_of_nro_of_each_vp (5) = False)
			assert("vp ok",my_setting.valid_number_of_nro_of_each_vp (10) = True)




			--assert ("not_implemented", False)
		end

end


