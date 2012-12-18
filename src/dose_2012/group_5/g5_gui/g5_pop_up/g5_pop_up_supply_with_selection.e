note
	description: "Summary description for {G5_POP_UP_SUPPLY_WITH_SELECTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP_SUPPLY_WITH_SELECTION
inherit
	G5_POP_UP_SUPPLY_STATE
		redefine
			set_cards_in_the_pop_up, ok_request
		end
create
	make_with_selection


feature{G5_IGUI_TO_NET, EQA_TEST_SET} -- the constructor

	make_with_selection(l_cards: ARRAY[STRING]; state_of_supply: HASH_TABLE[INTEGER,STRING]; max: INTEGER; coins: INTEGER; a_gui: G5_GUI)
		--The constructor of the class
		local
			font: EV_FONT
			temporary_string: STRING
		do
			list_of_cards:= l_cards
			supply_state:= state_of_supply
			max_selection:= max
			coins_available:= coins
			gui:= a_gui


			create list_of_displayed_cards.make (list_of_cards.count)
			create supply_purchased_cards_label.make(0)
			create supply_cards_label.make(0)

			-- create the window
			default_create
			current.set_title ("Select from supply")

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
			create description_label.make_with_text ("Supply cards:")
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 200, 30)

			-- create and add button to the pop-up
			create ok_button.make_with_text ("OK")
			pop_up_container.extend_with_position_and_size (ok_button, 310, 480, 113, 42)
			ok_button.select_actions.extend(agent ok_request)

			-- set and add label
			--create label_coins.make_with_text ("You have:")
			temporary_String:= "You have:  "
			temporary_string.append (coins.out)
			temporary_string.append (" coin(s)")
			create label_coins.make_with_text (temporary_string)
			label_coins.align_text_left
			--create label_number_of_coins.make_with_text (temporary_string)

			--create label_cards_to_select_max.make_with_text ("You have to chose at most:")
			temporary_string:= "You have to chose at most:  "
			temporary_string.append (max.out)
			temporary_string.append (" card(s)")
			create label_cards_to_select_max.make_with_text (temporary_string)
			label_cards_to_select_max.align_text_left
			--create label_number_of_cards_to_select_max.make_with_text (temporary_string)

			pop_up_container.extend_with_position_and_size (label_coins, 250, 15, 150, 15)
			--pop_up_container.extend_with_position_and_size (label_number_of_coins, 250, 15, 60, 15)
			pop_up_container.extend_with_position_and_size (label_cards_to_select_max, 250, 30, 200, 15)
			--pop_up_container.extend_with_position_and_size (label_number_of_cards_to_select_max, 250, 30, 60, 15)


			-- create and add the zoom box that display the zoomed card
			create zoom_box.make
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)

			-- create all cards
			set_cards_in_the_pop_up

			-- add the main container to the pop-up
			put (pop_up_container)
		end

feature {NONE} -- Application

	set_cards_in_the_pop_up
		-- display all the cards in the pop-up
		local
			i: INTEGER
			index_of_card: INTEGER
			a_card: G5_GUI_CARD
			a_card_label: EV_LABEL
			a_purchased_card_label: EV_LABEL
			plus_button:EV_BUTTON
			min_button:EV_BUTTON
			key_set: ARRAY[STRING]
		do
			key_set:= supply_state.current_keys
			from
				i:=1
			until
				i > list_of_cards.count
			loop
				-- create card and label
				create a_card.make_mini (list_of_cards[i], "pop-up")
				--create a_card_label.make_with_text (supply_state.at (key_set[i]).out)
				create a_card_label.make_with_text (supply_state.at (list_of_cards[i]).out)
				create a_purchased_card_label.make_with_text ("0")

				-- create buttons
				create plus_button.make_with_text ("+")
				create min_button.make_with_text ("-")

				-- assign action to the card
				a_card.pointer_enter_actions.extend (agent pointer_enter_card(a_card.card_id))
				a_card.pointer_leave_actions.extend (agent pointer_leave_card)

				-- assing action to the buttons
				plus_button.select_actions.extend(agent add_one_to_label_purchase(a_purchased_card_label, a_card_label))
				min_button.select_actions.extend(agent sub_one_to_label_purchase(a_purchased_card_label))

				-- sets dimension of the card and add it to the container
				pop_up_container.extend (a_card)
				pop_up_container.set_item_size (a_card, 113, 42)
				pop_up_container.extend (a_card_label)
				pop_up_container.set_item_size (a_card_label, 16, 21)
				pop_up_container.extend (a_purchased_card_label)
				pop_up_container.set_item_size (a_purchased_card_label, 16, 21)
				pop_up_container.extend (plus_button)
				pop_up_container.set_item_size (plus_button, 21, 21)
				pop_up_container.extend (min_button)
				pop_up_container.set_item_size (min_button, 21, 21)

				index_of_card:= i

				-- sets position of the card
				if (index_of_card <= 3) then
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, (69))

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+30))
					pop_up_container.set_item_y_position (a_card_label, (113))

					pop_up_container.set_item_x_position (a_purchased_card_label, (((index_of_card-1)*143)+81))
					pop_up_container.set_item_y_position (a_purchased_card_label, (113))

					pop_up_container.set_item_x_position (min_button, (((index_of_card-1)*143)+55))
					pop_up_container.set_item_y_position (min_button, (111))

					pop_up_container.set_item_x_position (plus_button, (((index_of_card-1)*143)+98))
					pop_up_container.set_item_y_position (plus_button, (111))
				elseif (index_of_card <= 6) then
					-- set the correct position
					index_of_card:= index_of_card -3
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 145)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+30))
					pop_up_container.set_item_y_position (a_card_label, (189))

					pop_up_container.set_item_x_position (a_purchased_card_label, (((index_of_card-1)*143)+81))
					pop_up_container.set_item_y_position (a_purchased_card_label, (189))

					pop_up_container.set_item_x_position (min_button, (((index_of_card-1)*143)+55))
					pop_up_container.set_item_y_position (min_button, (187))

					pop_up_container.set_item_x_position (plus_button, (((index_of_card-1)*143)+98))
					pop_up_container.set_item_y_position (plus_button, (187))
				elseif (index_of_card <= 9) then
					-- set the correct position
					index_of_card:= index_of_card -6
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 221)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+30))
					pop_up_container.set_item_y_position (a_card_label, (265))

					pop_up_container.set_item_x_position (a_purchased_card_label, (((index_of_card-1)*143)+81))
					pop_up_container.set_item_y_position (a_purchased_card_label, (265))

					pop_up_container.set_item_x_position (min_button, (((index_of_card-1)*143)+55))
					pop_up_container.set_item_y_position (min_button, (263))

					pop_up_container.set_item_x_position (plus_button, (((index_of_card-1)*143)+98))
					pop_up_container.set_item_y_position (plus_button, (263))
				elseif (index_of_card <= 12) then
					-- set the correct position
					index_of_card:= index_of_card -9
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 297)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+30))
					pop_up_container.set_item_y_position (a_card_label, (341))

					pop_up_container.set_item_x_position (a_purchased_card_label, (((index_of_card-1)*143)+81))
					pop_up_container.set_item_y_position (a_purchased_card_label, (341))

					pop_up_container.set_item_x_position (min_button, (((index_of_card-1)*143)+55))
					pop_up_container.set_item_y_position (min_button, (339))

					pop_up_container.set_item_x_position (plus_button, (((index_of_card-1)*143)+98))
					pop_up_container.set_item_y_position (plus_button, (339))
				elseif (index_of_card <= 15) then
					-- set the correct position
					index_of_card:= index_of_card -12
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 373)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+30))
					pop_up_container.set_item_y_position (a_card_label, (417))

					pop_up_container.set_item_x_position (a_purchased_card_label, (((index_of_card-1)*143)+81))
					pop_up_container.set_item_y_position (a_purchased_card_label, (417))

					pop_up_container.set_item_x_position (min_button, (((index_of_card-1)*143)+55))
					pop_up_container.set_item_y_position (min_button, (415))

					pop_up_container.set_item_x_position (plus_button, (((index_of_card-1)*143)+98))
					pop_up_container.set_item_y_position (plus_button, (415))
				elseif (index_of_card <= 18) then
					-- set the correct position
					index_of_card:= index_of_card -15
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 449)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+30))
					pop_up_container.set_item_y_position (a_card_label, (493))

					pop_up_container.set_item_x_position (a_purchased_card_label, (((index_of_card-1)*143)+81))
					pop_up_container.set_item_y_position (a_purchased_card_label, (493))

					pop_up_container.set_item_x_position (min_button, (((index_of_card-1)*143)+55))
					pop_up_container.set_item_y_position (min_button, (491))

					pop_up_container.set_item_x_position (plus_button, (((index_of_card-1)*143)+98))
					pop_up_container.set_item_y_position (plus_button, (491))
				end
				list_of_displayed_cards.force (a_card)
				supply_cards_label.force (a_card_label)
				supply_purchased_cards_label.force (a_purchased_card_label)
				i:=i+1
			end
		end


feature {NONE} -- Internal feature

	add_one_to_label_purchase(a_purchased_card_label: EV_LABEL; a_card_label: EV_LABEL)
		-- feature called by the plus button
		local
			actual_purchase_value: INTEGER
			total_card_available: INTEGER
		do
			actual_purchase_value:= a_purchased_card_label.text.to_integer
			total_card_available:= a_card_label.text.to_integer

			if((actual_purchase_value+1) <= total_card_available) then

				actual_purchase_value:= actual_purchase_value+1
				current.lock_update
				a_purchased_card_label.set_text (actual_purchase_value.out)
				current.unlock_update

				current.refresh_now
			end
		end

	sub_one_to_label_purchase(a_purchased_card_label: EV_LABEL)
		-- feature called by the min button
		local
			actual_purchase_value: INTEGER
		do
			actual_purchase_value:= a_purchased_card_label.text.to_integer

			if(actual_purchase_value>0) then

				actual_purchase_value:= actual_purchase_value-1
				current.lock_update
				a_purchased_card_label.set_text (actual_purchase_value.out)
				current.unlock_update

				current.refresh_now
			end
		end

	ok_request
		-- feature called by ok button
		local
			cards_to_purchase: INTEGER
			selected_cards: ARRAYED_LIST[STRING]
			coins_spended: INTEGER
			temporary_purchase_value: INTEGER
			i: INTEGER
			error_dialog: EV_INFORMATION_DIALOG
		do
			create selected_cards.make (0)

			from
				i:=1
			until
				i > list_of_displayed_cards.count
			loop
				temporary_purchase_value:= supply_purchased_cards_label[i].text.to_integer

				-- se è stata selezionata
				if (temporary_purchase_value > 0) then
					cards_to_purchase:= cards_to_purchase + (temporary_purchase_value)
					coins_spended:= coins_spended + ((list_of_displayed_cards[i].cost_of_the_card)*temporary_purchase_value)
					selected_cards.force (list_of_displayed_cards[i].card_id)
				end
				i:=i+1
			end

			if (cards_to_purchase > max_selection) then

				create error_dialog.make_with_text ("Number of selected cards is not correct")
				error_dialog.set_title ("NOT VALID")
				error_dialog.show_modal_to_window (current)

			elseif ((coins_spended > coins_available) and (coins_available/= -1)) then

				create error_dialog.make_with_text ("You don't have enough money")
				error_dialog.set_title ("NOT VALID")
				error_dialog.show_modal_to_window (current)

			else

				-- return the selection
				gui.selected_pop_up_response("supply", selected_cards.to_array, current)

			end

		end

feature -- Attributes

	max_selection: INTEGER
		-- the maximum number of cards to chose

	coins_available: INTEGER
		-- the value of coins	

feature {NONE} -- GUI Attributes

	supply_purchased_cards_label: ARRAYED_LIST[EV_LABEL]

	gui: G5_GUI
		-- the ref to the gui that are used to send messages to the logic

	label_coins: EV_LABEL
		-- label text

	label_number_of_coins: EV_LABEL
		-- label of the intenger of the min number of cards to chose

	label_cards_to_select_max: EV_LABEL
		-- label text

	label_number_of_cards_to_select_max: EV_LABEL
		-- label of the intenger of the max number of cards to chose	

end
