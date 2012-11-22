note
	description: "Summary description for {CU_SWITCH_CHAR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SWITCH_CHARACTER

inherit
	CU_WINDOWS

feature
	make
	require
		not_displayed_window: not is_displayed
	do
	ensure
		displayed_windo: is_displayed
	end

feature -- Implementation / Constants

	list_of_char: EV_COMBO_BOX
		-- List of characters

    select_button: EV_BUTTON
            -- "Select" button.
            
	cancel_button: EV_BUTTON
			-- "Cancel" button

end
