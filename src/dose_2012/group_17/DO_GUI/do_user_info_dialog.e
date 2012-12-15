note
	description	: "About dialog box"
	author		: "Team Rio Cuarto 9"
	date		: "13/11/12"
	revision	: "1.0.0"

class
	DO_USER_INFO_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize
		end

	KL_SHARED_FILE_SYSTEM
        export {NONE} all
        undefine
        	default_create, copy
        end

	DO_INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE} -- Initialization

	make (image_url : STRING; gui_title : STRING; file_name : STRING)
        do
                image_path := image_url
                file := file_name
                default_create
                current.set_title (gui_title)
        end

	initialize
			-- Populate the dialog box.
		local
			main_horizontal_box: EV_HORIZONTAL_BOX
			left_vertical_box: EV_VERTICAL_BOX
			right_vertical_box: EV_VERTICAL_BOX
			horizontal_separator: EV_HORIZONTAL_SEPARATOR
			buttons_box: EV_HORIZONTAL_BOX
			ev_cell: EV_CELL
			text_area: EV_RICH_TEXT

		do
			Precursor

			create pixmap.default_create
			pixmap.set_with_named_file (image_path)
			pixmap.set_minimum_size (pixmap.width, pixmap.height)

			create message_label
			create text_area
			text_area.set_minimum_size (400, 300)
			text_area.disable_edit
			text_area.set_with_named_file (create {FILE_NAME}.make_from_string(file_system.pathname_to_string (file_path)))

			create horizontal_separator

			create ok_button.make_with_text (Button_ok_item)
			ok_button.set_minimum_size (75, 24)
			ok_button.select_actions.extend (agent destroy)

			create buttons_box
			buttons_box.extend (create {EV_CELL}) -- Fill in empty space on left
			buttons_box.extend (ok_button)
			buttons_box.disable_item_expand (ok_button)

			create left_vertical_box
			left_vertical_box.set_border_width (7)
			left_vertical_box.extend (pixmap)
			left_vertical_box.disable_item_expand (pixmap)
			left_vertical_box.extend (create {EV_CELL})

			create right_vertical_box
			right_vertical_box.set_padding (7)
			right_vertical_box.extend (text_area )
			--right_vertical_box.extend (message_label)
			right_vertical_box.extend (horizontal_separator)
			right_vertical_box.disable_item_expand (horizontal_separator)
			right_vertical_box.extend (buttons_box)
			right_vertical_box.disable_item_expand (buttons_box)

			create main_horizontal_box
			main_horizontal_box.set_border_width (7)
			create ev_cell
			ev_cell.set_minimum_width (21)
			main_horizontal_box.extend (ev_cell)
			main_horizontal_box.disable_item_expand (ev_cell)
			main_horizontal_box.extend (left_vertical_box)
			main_horizontal_box.disable_item_expand (left_vertical_box)
			create ev_cell
			ev_cell.set_minimum_width (28)
			main_horizontal_box.extend (ev_cell)
			main_horizontal_box.disable_item_expand (ev_cell)
			main_horizontal_box.extend (right_vertical_box)
			extend (main_horizontal_box)

			set_default_push_button (ok_button)
			set_default_cancel_button (ok_button)

			set_title (Default_title)
			file := Default_message
			set_size (400, 150)
		end

--feature -- Access

--	message: STRING
			-- Message displayed in the dialog box.
		--require
		--	setted_message/=Void
--		do
--			Result := message_label.text
--			disable_user_resize
		--ensure
		--	message_displayed:
--		end

feature -- Element change

	set_url_image(image_url : STRING)
		do
			pixmap.set_with_named_file (image_url)
		end

	file_path: KL_PATHNAME
		-- Path for image folder of main_ui
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name ("dose_2012")
			Result.append_name ("images")
			Result.append_name ("group_17")
			Result.append_name ("text_files")
			Result.append_name (file)
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

	Default_title: STRING = "Dialog"
			-- Default title for the dialog window.

	Default_message: STRING =""

	image_path : STRING

	file: STRING

end
