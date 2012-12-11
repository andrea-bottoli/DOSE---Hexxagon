note
	description: "Summary description for {DO_HELP}."
	author: "Damian Ojeda"
	date: "$Date$"
	revision: "$Revision$"

class
	DO_HELP

inherit
	EV_DIALOG
		redefine
			initialize
		end

	DO_INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	default_create

feature {NONE} -- Initialization

	initialize
			-- Populate the dialog box.
		do

		end

feature -- Access

	message: STRING
			-- Message displayed in the dialog box.
		require
			setted_message/=Void
		do

		ensure
			message_displayed:
		end

feature -- Element change

	set_message (a_message: STRING)
		do

		ensure
			setted_message/=Void
		end

feature {NONE} -- Implementation

	message_label: EV_LABEL
			-- Label situated on the top of the dialog,
			-- contains the message.

	pixmap: EV_PIXMAP
			-- Pixmap display on the left of the dialog.

	ok_button: EV_BUTTON
			-- "OK" button.

	setted_message: STRING
			--Message to be setted by the set_message feature

feature {NONE} -- Implementation / Constants

	Default_title: STRING = "HELP"
			-- Default title for the dialog window.

	Default_message: STRING =""

end -- class DO_HELP
