note
	description: "Summary description for {XX_RULES_PANEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_RULES_PANEL

inherit
	EV_FIXED

	XX_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create,
			is_equal,
			copy
		end

create
	make_rules_panel

feature --Constructors

	make_rules_panel(a_rules_dialog: EV_DIALOG)
	do
		default_create
		build_panel(a_rules_dialog)
	end

feature{NONE} --Attributes

	description_area: EV_RICH_TEXT
	button: EV_BUTTON

feature{NONE} --Implementation

	build_panel (a_rules_dialog: EV_DIALOG)
	do
		create button.make_with_text_and_action (button_ok_item, agent close_dialog(a_rules_dialog))

		button.set_minimum_size (50, 30)

		description_area:=rules_description
		description_area.disable_edit
		description_area.set_minimum_size (600, 500)

		current.set_minimum_size (description_area.width, description_area.height + button.height + 8)
		current.extend_with_position_and_size (description_area, 0, 0, description_area.width, description_area.height)
		current.extend_with_position_and_size (button, (description_area.width//2 - button.width//2), (description_area.height + 5), button.width, button.height)
	end

feature{NONE} --Close Method

	close_dialog (a_rules_dialog: EV_DIALOG)
	do
		destroy
		a_rules_dialog.destroy
	end

feature{NONE} --Loading rtf

	--Load the rtf file
	rules_description: EV_RICH_TEXT
	once
		create Result
		Result.set_with_named_file (create {FILE_NAME}.make_from_string (file_system.pathname_to_string (rules)))

	end

end
