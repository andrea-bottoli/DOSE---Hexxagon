note
	description: "This class will display a pop-up that contains a list of cards. The player has to chose some of this cards."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_WITH_SELECTION
inherit
	G5_POP_UP
	redefine
		ok_request, set_cards_in_the_pop_up
	end

create
	make

feature -- creators

	make(a_place: STRING; a_list_of_cards: ARRAY[STRING]; min: INTEGER; max: INTEGER; a_gui: G5_GUI)
		--The constructor of the class
		require
			valid_arg: a_list_of_cards /= void
			valid_arg: min>=0
			valid_arg: max>0 and max>=min
			valid_arg: a_place /= void
			valid_arg: a_gui /= void
		local
			text_to_display: STRING
			font: EV_FONT
			temporary_string: STRING
		do
			list_of_cards:= a_list_of_cards
			min_selection:= min
			max_selection:= max
			place:= a_place
			gui:= a_gui

			create list_of_displayed_cards.make (list_of_cards.count)

			-- create the window
			default_create
			temporary_string:="Select cards from "
			temporary_string.append (a_place)
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
			create text_to_display.make_empty
			text_to_display.append ("Chose cards from your ")
			text_to_display.append (place)
			text_to_display.append (":")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 300, 30)

			-- create and add button to the pop-up
			create ok_button.make_with_text ("OK")
			pop_up_container.extend_with_position_and_size (ok_button, 23, 501, 113, 42)
			ok_button.select_actions.extend(agent ok_request)

			-- set and add label
			create label_cards_to_select_min.make_with_text ("You have to chose at least:")
			temporary_string:= min.out
			temporary_string.append (" card(s)")
			create label_number_of_cards_to_select_min.make_with_text (temporary_string)

			create label_cards_to_select_max.make_with_text ("You have to chose at most:")
			temporary_string:= max.out
			temporary_string.append (" card(s)")
			create label_number_of_cards_to_select_max.make_with_text (temporary_string)

			pop_up_container.extend_with_position_and_size (label_cards_to_select_min, 150, 505, 150, 15)
			pop_up_container.extend_with_position_and_size (label_number_of_cards_to_select_min, 320, 505, 60, 15)
			pop_up_container.extend_with_position_and_size (label_cards_to_select_max, 150, 525, 150, 15)
			pop_up_container.extend_with_position_and_size (label_number_of_cards_to_select_max, 320, 525, 60, 15)

			-- create and add the zoom box that display the zoomed card
			create zoom_box.make
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)

			-- create all cards
			set_cards_in_the_pop_up

			-- add the main container to the pop-up
			put (pop_up_container)

		end


feature {NONE} -- Initialization

	set_cards_in_the_pop_up
		-- display all the cards in the pop-up
		local
			i: INTEGER
			index_of_card: INTEGER
			a_card: G5_GUI_CARD
		do
			from
				i:=1
			until
				i > list_of_cards.count
			loop
				create a_card.make_mini (list_of_cards[i], "pop-up")

				a_card.pointer_enter_actions.extend (agent pointer_enter_card(list_of_cards[i]))
				a_card.pointer_leave_actions.extend (agent pointer_leave_card)
				a_card.pointer_button_release_actions.extend (agent select_card(a_card, ?, ?, ?, ?, ?, ?, ?, ?))

				-- sets dimension of the card and add it to the container
				pop_up_container.extend (a_card)
				pop_up_container.set_item_size (a_card, 113, 42)
				index_of_card:= i

				-- sets position of the card
				if (index_of_card <= 3) then
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, (69))
				elseif (index_of_card <= 6) then
					-- set the correct position
					index_of_card:= index_of_card -3
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 119)
				elseif (index_of_card <= 9) then
					-- set the correct position
					index_of_card:= index_of_card -6
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 169)
				elseif (index_of_card <= 12) then
					-- set the correct position
					index_of_card:= index_of_card -9
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 219)
				elseif (index_of_card <= 15) then
					-- set the correct position
					index_of_card:= index_of_card -12
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 269)
				elseif (index_of_card <= 18) then
					-- set the correct position
					index_of_card:= index_of_card -15
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 319)
				elseif (index_of_card <= 21) then
					-- set the correct position
					index_of_card:= index_of_card -18
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 369)
				elseif (index_of_card <= 24) then
					-- set the correct position
					index_of_card:= index_of_card -21
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 419)
				end
				list_of_displayed_cards.force (a_card)
				i:=i+1
			end
		end


feature {NONE} -- Application

	ok_request
		-- the ok button has been pressed
		local
			i: INTEGER
			error_dialog: EV_INFORMATION_DIALOG
			selected_cards: ARRAYED_LIST[STRING]
		do
			-- create the array of selected_cards
			create selected_cards.make (0)

			from
				i:=1
			until
				i> list_of_displayed_cards.count
			loop
				if (list_of_displayed_cards[i].selection_label/= void) then
					selected_cards.force (list_of_displayed_cards[i].card_id)
				end
				i:=i+1
			end

			-- checks if selected cards are in the correct number
			if((selected_cards.count > max_selection) or (selected_cards.count < min_selection)) then

				create error_dialog.make_with_text ("Number of selected cards is not correct")
				error_dialog.set_title ("NOT VALID")
				error_dialog.show_modal_to_window (current)

			else

				-- send the response to the main gui
				gui.selected_pop_up_response(place, selected_cards.to_array, current)
			end
		end

	select_card(a_card: G5_GUI_CARD; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- a cards has bee n clicked and selected from the list
		do
			-- checks if the card is already selected or not
			if (a_card.selection_label= void) then

				a_card.select_unselect_request

			elseif (a_card.selection_label.text.is_equal ("SELECTED")) then

				a_card.select_unselect_request

			end
		end

feature -- Variables

	gui: G5_GUI
		-- the ref to the gui that are used to send messages to the logic

	label_cards_to_select_min: EV_LABEL
		-- label text

	label_number_of_cards_to_select_min: EV_LABEL
		-- label of the intenger of the min number of cards to chose

	label_cards_to_select_max: EV_LABEL
		-- label text

	label_number_of_cards_to_select_max: EV_LABEL
		-- label of the intenger of the max number of cards to chose

	min_selection: INTEGER
		-- the minimum number of cards to chose

	max_selection: INTEGER
		-- the maximum number of cards to chose

	place: STRING
		-- from what the player has to select
end
