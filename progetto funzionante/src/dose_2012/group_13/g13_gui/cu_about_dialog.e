note
	description: "About dialog box."
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ABOUT_DIALOG

inherit
    EV_DIALOG
        redefine
            initialize
        end

create
    default_create

feature {NONE} -- Initialization

    initialize
	    do
	    end

feature -- Access

    message_about: STRING
            -- Message displayed in the about dialog.
	    do
	    ensure
	    	message_not_empty: message_label /= void
	    end

feature

    set_message (a_message: STRING)
    	require
    		messagge_not_empty: a_message /= void
		do
		ensure
			message_updated: message_label = a_message
	    end

feature {NONE} -- Implementation

    message_label: EV_LABEL
        -- Label situated on the top of the dialog,
        -- contains the message.

     accept_button: EV_BUTTON
        -- "Accept" button.

feature {NONE} -- Implementation / Constants

    Default_title: STRING = "About Dialog"
        -- Default title for the about dialog window.

    Default_message: STRING =
        ""

end
