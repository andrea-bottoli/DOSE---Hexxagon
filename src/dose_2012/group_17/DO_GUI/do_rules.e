note
	description: "Summary description for {DO_RULES}."
	author: "Team Rio Cuarto9"
	date: "13/11/12"
	revision: "0.0"

class
	DO_RULES

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
			-- Rules of the game
		require
			setted_message/=Void
		do
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

	exit_button: EV_BUTTON
			-- "EXIT" button.

	setted_message: STRING
			--Message to be setted

feature {NONE} -- Implementation / Constants

	Default_title: STRING = "Dominion Rules"
			-- Default title for the dialog window.

	Default_message: STRING ="Good luck!"

end
