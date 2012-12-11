note
	description: "A window that displays the rules and key shortcuts for the game."
	author: "Emanuele Rudel, Florian Besser"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_HELP_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize,
			show
		end

	IG_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

feature {NONE} -- Initialization

	initialize
			-- Build the help window
		local
			l_notebook: EV_NOTEBOOK
			l_text_area: EV_RICH_TEXT
		do
			Precursor
			close_request_actions.extend (agent destroy)

			create l_notebook

				-- Create text area to display game rules
			create l_text_area
			-- TODO: specify the file with the rules
			l_text_area.set_with_named_file (create {FILE_NAME}.make_from_string (file_system.pathname_to_string (rules_text)))
			l_text_area.disable_edit
			l_notebook.extend (l_text_area)
			l_notebook.set_item_text (l_text_area, "Rules")

				-- Create text area to display the keyboard shortcuts
			create l_text_area
			-- TODO: specify the file with the keyboard shortcuts
			l_text_area.set_with_named_file (create {FILE_NAME}.make_from_string (file_system.pathname_to_string (shortcuts_text)))
			l_text_area.disable_edit
			l_notebook.extend (l_text_area)
			l_notebook.set_item_text (l_text_area, "Keyboard Shortcuts")

			put (l_notebook)
		end

feature -- Status Settings

	show
		do
			disable_user_resize
			set_size (500, 500)
			Precursor
		end

end
