note
	description: "Summary description for {G5_POP_UP_SELECT_KINGDOM_CARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP_SELECT_KINGDOM_CARDS
inherit
	G5_POP_UP_WITH_SELECTION
	redefine
		set_cards_in_the_pop_up, ok_request
	end
create
	make_set_kingdom_cards

feature -- Constructor

	make_set_kingdom_cards(a_parent_menu: G5_CREATE_GAME_MENU)
		--The constructor of the class
		require
		--	valid_arg: parent_menu /= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			parent_menu:= a_parent_menu
			max_selection := 10
			min_selection := 10

			create list_of_displayed_cards.make (0)

			-- create the window
			default_create
			current.set_title ("Select set of Kingdom cards to use")

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
			create description_label.make_with_text ("Select set of Kingdom cards to use")
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			current.lock_update
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 350, 30)
			current.unlock_update

			-- create and add button to the pop-up
			create ok_button.make_with_text ("OK")
			pop_up_container.extend_with_position_and_size (ok_button, 233, 480, 113, 42)
			current.lock_update
			ok_button.select_actions.extend(agent ok_request)
			current.unlock_update

			-- create and add the zoom box that display the zoomed card
			create zoom_box.make
			current.lock_update
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)
			current.unlock_update

			current.lock_update
			-- create all cards
			set_cards_in_the_pop_up

			-- add the main container to the pop-up
			put (pop_up_container)
			current.unlock_update
		end

feature {NONE} -- Initialization

	set_cards_in_the_pop_up
		-- display all the cards in the pop-up
		local
			i: INTEGER
			index_of_card: INTEGER
			a_card: G5_GUI_CARD
			card_id: STRING
		do
			from
				i:=1
			until
				i > 25
			loop
				card_id:= "K"
				card_id.append (i.out)

				create a_card.make_mini (card_id, "pop-up")

				a_card.pointer_enter_actions.extend (agent pointer_enter_card(card_id))
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
				elseif (index_of_card = 25) then
					-- set the correct position
					index_of_card:= index_of_card -24
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 469)


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
				--gui.selected_pop_up_response(place, selected_cards.to_array, current)
				parent_menu.set_selected(selected_cards.to_array, current)
			end
		end



feature -- Variable

	parent_menu: G5_CREATE_GAME_MENU
		-- the menu that create the pop-up

end
