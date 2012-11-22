note
	description: "Summary description for {CU_SUGGESTION}."
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAKE_A_SUGGESTION

inherit
	CU_WINDOWS

create
	make

feature

	make
		-- Displays a window for make a suggestion
		require
			not_is_displayed: not is_displayed
		do
		ensure
			accusation_is_displayed: is_displayed
		end

feature

	select_a_suspect ():INTEGER
		-- Display  all characters and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <=5
		end

	select_a_weapon (): INTEGER
		-- Display  all weapons and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <= 5
		end

feature	--Implementation/ Constants

	suggest_button: EV_BUTTON
            -- "Suggest" button
	cancel_button: EV_BUTTON
            -- "Cancel" button
    suspects_combo_box: EV_COMBO_BOX
    		-- "Suspects" combo box
    weapons_combo_box: EV_COMBO_BOX
    		-- "Weapons" combo box

feature -- Constants

	a_suspects: CU_ENUM_SUSPECTS
	a_weapons: CU_ENUM_WEAPONS

end
