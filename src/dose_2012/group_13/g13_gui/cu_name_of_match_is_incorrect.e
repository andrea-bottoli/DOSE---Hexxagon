note
	description: "Summary description for {CU_NAME_OF_MATCH_IS_INCORRECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_NAME_OF_MATCH_IS_INCORRECT

inherit
	CU_WINDOWS

feature

	make
		-- Displays a window when the name of the match is incorrect
		require
			non_displayed_window: not is_displayed
		do
		ensure
			window_name_match_incorrect_display: is_displayed
		end

feature {NONE} -- Implementation

    accept_button: EV_BUTTON
            -- "Accept" button.

end
