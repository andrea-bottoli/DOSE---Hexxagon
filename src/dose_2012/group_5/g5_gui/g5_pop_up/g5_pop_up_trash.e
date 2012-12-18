note
	description: "Summary description for {G5_POP_UP_TRASH}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP_TRASH
inherit
	G5_POP_UP

create
	make

feature {G5_MAIN_VIEW}-- the constructor

	make(a_list_of_cards: ARRAY[STRING])
		--The constructor of the class
		require
			valid_arg: a_list_of_cards /= void
		local
			font: EV_FONT
			no_cards_label: EV_LABEL
		do
			list_of_cards:= a_list_of_cards
			create list_of_displayed_cards.make (list_of_cards.count)

			-- create the window
			default_create
			current.set_title ("Cards trashed")

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
			create description_label.make_with_text ("Cards trashed:")
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 300, 30)

			-- create and add button to the pop-up
			create ok_button.make_with_text ("OK")
			pop_up_container.extend_with_position_and_size (ok_button, 166, 497, 113, 42)
			ok_button.select_actions.extend(agent ok_request)


			-- create and add the zoom box that display the zoomed card
			create zoom_box.make
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)

			if (not(a_list_of_cards.is_empty)) then
				-- create all cards				
				set_cards_in_the_pop_up
			else
				create no_cards_label.make_with_text ("There are no cards in the trash.")
				no_cards_label.set_font (font)
				pop_up_container.extend_with_position_and_size (no_cards_label, 50, 300, 300, 30)
			end

			-- add the main container to the pop-up
			put (pop_up_container)
		end

end
