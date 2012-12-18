note
	description: "This class displays a pop-up containing a list of cards."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_REVEAL
inherit
	G5_POP_UP

create
	make

feature{G5_IGUI_TO_NET, EQA_TEST_SET} -- the constructor

	make(a_player: STRING; a_list_of_cards: ARRAY[STRING])
		--The constructor of the class
		require
			valid_arg: a_list_of_cards /= void
			valid_arg: a_player /= void
		local
			text_to_display: STRING
			font: EV_FONT
			title_string: STRING
		do
			list_of_cards:= a_list_of_cards
			create list_of_displayed_cards.make (list_of_cards.count)
			player:= a_player

			-- create the window
			default_create
			title_string:=a_player
			title_string.append (" revealed:")
			current.set_title (title_string)

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
			text_to_display:= player.to_string_32
			text_to_display.append (" reveals:")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 100, 30)

			-- create and add button to the pop-up
			create ok_button.make_with_text ("OK")
			pop_up_container.extend_with_position_and_size (ok_button, 166, 497, 113, 42)
			ok_button.select_actions.extend(agent ok_request)


			-- create and add the zoom box that display the zoomed card
			create zoom_box.make
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)

			-- create all cards
			set_cards_in_the_pop_up

			-- add the main container to the pop-up
			put (pop_up_container)
		end

end
