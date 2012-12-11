note
	description: "About dialog box."
	author: "German Lopez-Bruno Alaminos-Jonathan Taberna"
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ABOUT_DIALOG

inherit
    EV_DIALOG
--        redefine
--            initialize
--        end
	CU_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
    make

feature {NONE} -- Initialization

--    initialize
--	    do
--	    end


feature -- Access

	make
	local
		button: EV_BUTTON
	do
		create button.make_with_text ("Accept")
		button.set_minimum_size (75, 24)
		button.select_actions.extend (agent destroy)

		set_message ("ETH Zürich - Eidgenössische Technische Hochschule Zürich %N Eiffel Cluedo - Version 0.1")

		create con_main_about
		con_main_about.extend_with_position_and_size (button, 210, 100, 80, 30)
		con_main_about.extend_with_position_and_size (message_label, 250, 10, 350, 90)
--		con_main_about.extend_with_position_and_size (pix_about, 10, 10, 197, 69)


		make_with_title (Default_title)
		current.set_size (650, 150)
		current.put (con_main_about)
		current.disable_user_resize
		set_default_push_button (button)
	end

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
			create message_label.default_create
			message_label.set_text (a_message)
		ensure
			message_updated: message_label.text.is_equal (a_message)
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

	con_main_about: EV_FIXED

	pix_about: EV_PIXMAP
			-- returns the background for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (Img_about))
		end
end
