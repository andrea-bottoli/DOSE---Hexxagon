note
	description: "Summary description for {CU_NAME_OF_THE_MATCH_EXISTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_NAME_OF_THE_MATCH_EXISTS

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

    message_label: EV_LABEL
            -- Label situated on the top of the dialog,
            -- contains the message.
    accept_button: EV_BUTTON
			-- "Accept" button.
end
