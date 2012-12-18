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
		create accept_button.make_with_text ("Accept")
		accept_button.set_minimum_size (75, 24)
		accept_button.select_actions.extend (agent hide)

		create reject_button.make_with_text ("Reject")
		reject_button.set_minimum_size (75, 24)
		create reject_sugg.make
		reject_button.select_actions.extend (agent reject_sugg.show)

		create horizontal_separator
		create con_suggestion
		con_suggestion.extend_with_position_and_size (horizontal_separator, 0, 0, 260, 5)
		con_suggestion.extend_with_position_and_size (accept_button, 50, 100, 80, 40)
		con_suggestion.extend_with_position_and_size (reject_button, 160, 100, 80, 40)

		make_with_title ("Suggestion Answer - Cluedo")
		put (con_suggestion)
		set_size (260,180)
		disable_user_resize

	ensure
		window_is_displayed: is_displayed
	end


feature {NONE} -- Implementation

    accept_button: EV_BUTTON
            -- "Accept" button.
	reject_button: EV_BUTTON
			-- "Reject" button

	 con_suggestion: EV_FIXED

	 reject_sugg: CU_REJECT_SUGGESTION


end
