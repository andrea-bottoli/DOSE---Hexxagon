note
	description: "Summary description for {CU_ACCUSATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MAKE_AN_ACCUSATION

inherit
	CU_WINDOWS

feature
	make
		-- Displays a window for make an accusation
		require
			not_is_displayed: not is_displayed
		do
		ensure
			accusation_is_displayed: is_displayed
		end

feature -- Implementation/ Operations

	select_a_suspect ():INTEGER
		-- Display  all characters and select one of them
		do

		ensure
			valid_selection: Result >= 0 and Result <= 5
		end

	select_a_weapon (): INTEGER
		-- Display  all weapons and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <= 5
		end

	select_a_room ():INTEGER
		-- Display  all rooms and select one of them
		do
		ensure
			valid_selection: Result >= 0 and Result <= 8
		end

feature	--Implementation/ Constants

	accuse_button: EV_BUTTON
            -- "Accuse" button
	cancel_button: EV_BUTTON
            -- "Cancel" button
    suspects_combo_box: EV_COMBO_BOX
    		-- "Suspects" combo box
    weapons_combo_box: EV_COMBO_BOX
    		-- "Weapons" combo box
    rooms_combo_box: EV_COMBO_BOX
    		-- "Rooms" combo box
	a_suspects: CU_ENUM_SUSPECTS
	a_weapons: CU_ENUM_WEAPONS
	a_rooms: CU_ENUM_ROOMS
end

