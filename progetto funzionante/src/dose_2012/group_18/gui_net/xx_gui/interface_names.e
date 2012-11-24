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
	label_confirm_close_window: STRING = "You are about to close the Hexxagon game. Are you sure ?%NClick OK to close."

	--Label for the Victory dialog
	--TODO

	--Lavel for the Defeated dialog
	--TODO

end
