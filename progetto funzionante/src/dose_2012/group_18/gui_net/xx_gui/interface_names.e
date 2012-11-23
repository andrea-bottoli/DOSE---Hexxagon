note
	description: "Summary description for {INTERFACE_NAMES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERFACE_NAMES

feature -- Access

	window_title: STRING = "HEXXAGON - Group18"

	-- String for "OK" buttons.
	button_ok_item: STRING = "OK"

	-- String for the confirmation dialog box that appears when the user try to close the first window.
	label_confirm_close_window: STRING = "You are about to close this application.%NClick OK to close."

	-- String for the about dialog information message.
	label_about: STRING = "EiffelVision2 - test prova 01.%NBy sopra tua sorella"
			
	label_about_title: STRING = "EiffelVision2 - prova 01"

end
