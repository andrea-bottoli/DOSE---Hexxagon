note
	description: "Show rules of the Cluedo."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SHOW_RULES

inherit
    CU_WINDOWS

create
    make

feature
	make
			-- Generates the window of the rules game
		require
			not_displayed: not is_displayed
			non_empty_label: message_label /= void
		do

		ensure
			rules_displayed: is_displayed
		end

feature

       set_message (a_message: EV_LABEL)
       		-- Set a message_label
	    	require
	    		messagge_not_empty: a_message /= void
			do
			ensure
				message_updated: message_label = a_message
		    end

feature {NONE} -- Implementation/ Constants

	accept_button: EV_BUTTON
	-- "Accept" button

    message_label: EV_LABEL
            -- Label situated on the top of the dialog,
            -- contains the message.

end
