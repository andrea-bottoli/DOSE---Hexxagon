note
	description: "User Info Dialog Box"
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CONFIRM_DIALOG

inherit
	EV_DIALOG

create
	make_with_title_msg, make_with_title_msg_sample

feature {NONE} -- Initialization

    make_with_title_msg (gui_title : STRING; msg : STRING)
		-- Create a new window with a title and a message, with two buttons
    	require
    		gui_title_not_empty: gui_title /= void
    		msg_not_empty: msg /= void
    	do
		ensure
			dialog_displayed: is_displayed
			message_updated: message_label = msg
	    end

	 make_with_title_msg_sample (gui_title : STRING; msg : STRING)
		-- Create a new window with a title and a message, with one button
    	require
    		gui_title_not_empty: gui_title /= void
    		msg_not_empty: msg /= void
    	do
		ensure
			dialog_displayed: is_displayed
			message_updated: message_label = msg
	    end

feature {NONE} -- Implementation

    message_label: EV_LABEL
            -- Label situated on the top of the dialog,
            -- contains the message.
    accept_button: EV_BUTTON
            -- "Accept" button.
	cancel_button: EV_BUTTON
			-- "Cancel" button

end
