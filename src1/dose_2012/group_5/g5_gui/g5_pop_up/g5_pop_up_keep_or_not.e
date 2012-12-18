note
	description: "This class displays a pop-up with a card, and asks to the player if he wants to take or not this."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_KEEP_OR_NOT
inherit
	EV_DIALOG

	G5_POP_UP_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature
	make (a_card: STRING; a_gui: G5_GUI)
		-- The constructor of the class
		require
			valid_arg: a_card /= void
			valid_arg: a_gui /= void
		local
			temporary_string: STRING
			text_to_display: STRING
			font: EV_FONT
		do
			card := a_card
			gui:= a_gui

			-- create the window
			default_create
			temporary_string:="Keep or not this card"
			current.set_title (temporary_string)

			-- the window should be centered in the screen
			set_x_position ((screen_width // 2) - (800 // 2))
			set_y_position ((screen_height // 2) - (550 // 2))

			-- set the size of the window
			set_height (550)
			set_width (800)
			set_minimum_size (800, 578)

			-- disable user resizing for the window
			disable_user_resize

			create pop_up_container
			create pop_up_container_background
			pop_up_container_background.set_with_named_file (file_system.pathname_to_string (img_pop_up_background))
			pop_up_container.set_background_pixmap (pop_up_container_background)

			-- create the main label
			text_to_display:= "Do you want to keep this card or not?"
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 370, 30)

			-- create and add button to the pop-up
			create keep_button.make_with_text ("KEEP")
			pop_up_container.extend_with_position_and_size (keep_button, 73, 250, 113, 42)
			keep_button.select_actions.extend(agent keep_request)

			create not_keep_button.make_with_text ("NOT KEEP")
			pop_up_container.extend_with_position_and_size (not_keep_button, 250, 250, 113, 42)
			not_keep_button.select_actions.extend(agent not_keep_request)

			-- create and add the zoom box that display the card
			create zoom_box.make
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)
			zoom_box.set_zoomed_card (card)

			-- add the main container to the pop-up
			put (pop_up_container)

		end


feature {NONE} -- application

	keep_request
		-- the keep button has been pressed
		local
			array_to_return: ARRAY[STRING]
		do
			create array_to_return.make_empty
			array_to_return.force (card, 1)
			gui.keep_or_not_card_response(array_to_return, current)
		end

	not_keep_request
		-- the not keep button has been pressed
		local
			array_to_return: ARRAY[STRING]
		do
			create array_to_return.make_empty
			gui.keep_or_not_card_response(array_to_return, current)
		end

	screen_height: INTEGER
			-- Returns the screen heigt
		once
			Result := (create {EV_SCREEN}).height
		end

	screen_width: INTEGER
			-- Returns the screen width
		once
			Result := (create {EV_SCREEN}).width
		end




feature -- variables
	card: STRING
		-- the card to be displayed

	gui: G5_GUI
		-- the ref to the gui that are used to send messages to the logic

	keep_button: EV_BUTTON

	not_keep_button: EV_BUTTON

	pop_up_container: EV_FIXED
		-- the main container of the pop-up

	pop_up_container_background: EV_PIXMAP
		-- the background of the pop-up

	zoom_box: G5_ZOOMED_CARD_BOX
		-- the box that display the zoomed card

	description_label: EV_LABEL
		-- the label that discribe the pop-up

end
