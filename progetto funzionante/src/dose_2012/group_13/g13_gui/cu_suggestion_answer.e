note
	description: "This window will displayed the SUGGESTION ANSWER screen."
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SUGGESTION_ANSWER

inherit
	CU_WINDOWS

create
	make

feature

	make
	-- Displays window to respond to a suggestion made by a player
	require
		non_displayed_window: not is_displayed
	do
	ensure
		window_is_displayed: is_displayed
	end


feature {NONE} -- Implementation

    accept_button: EV_BUTTON
            -- "Accept" button.
	reject_button: EV_BUTTON
			-- "Reject" button

end
