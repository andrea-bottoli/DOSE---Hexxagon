note
	description: "Summary description for {G5_POP_UP_SUPPLY_STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP_SUPPLY_STATE
inherit
	G5_POP_UP
		redefine
			set_cards_in_the_pop_up
		end

create
	make

feature{G5_IGUI_TO_NET, EQA_TEST_SET} -- the constructor

	make(state_of_supply: HASH_TABLE[INTEGER,STRING])
		--The constructor of the class
		require
			valid_arg: state_of_supply /= void
		local
			font: EV_FONT
		do
			supply_state:= state_of_supply
			create list_of_displayed_cards.make (state_of_supply.count)
			create supply_cards_label.make (0)

			-- create the window
			default_create
			current.set_title ("Supply State")

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
			current.lock_update
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 250, 30)
			current.unlock_update

			-- create and add button to the pop-up
			create ok_button.make_with_text ("OK")
			pop_up_container.extend_with_position_and_size (ok_button, 309, 449, 113, 42)
			current.lock_update
			ok_button.select_actions.extend(agent ok_request)
			current.unlock_update

			-- create and add the zoom box that display the zoomed card
			create zoom_box.make
			current.lock_update
			pop_up_container.extend_with_position_and_size (zoom_box, 471, 41, 296, 473)
			current.unlock_update

			-- create all cards
			current.lock_update
			set_cards_in_the_pop_up
			current.unlock_update

			-- add the main container to the pop-up
			current.lock_update
			put (pop_up_container)
			current.unlock_update
		end

feature {NONE} -- Application

	set_cards_in_the_pop_up
		-- display all the cards in the pop-up
		local
			i: INTEGER
			index_of_card: INTEGER
			a_card: G5_GUI_CARD
			a_card_label: EV_LABEL
			key_set: ARRAY[STRING]
		do
			key_set:= supply_state.current_keys
			from
				i:=1
			until
				i > key_set.count
			loop
				create a_card.make_mini (key_set[i], "pop-up")
				create a_card_label.make_with_text (supply_state.at (key_set[i]).out)

				a_card.pointer_enter_actions.extend (agent pointer_enter_card(key_set[i]))
				a_card.pointer_leave_actions.extend (agent pointer_leave_card)

				-- sets dimension of the card and add it to the container
				pop_up_container.extend (a_card)
				pop_up_container.set_item_size (a_card, 113, 42)
				pop_up_container.extend (a_card_label)
				pop_up_container.set_item_size (a_card_label, 16, 21)
				index_of_card:= i

				-- sets position of the card
				if (index_of_card <= 3) then
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, (69))

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+69))
					pop_up_container.set_item_y_position (a_card_label, (115))
				elseif (index_of_card <= 6) then
					-- set the correct position
					index_of_card:= index_of_card -3
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 145)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+69))
					pop_up_container.set_item_y_position (a_card_label, (191))
				elseif (index_of_card <= 9) then
					-- set the correct position
					index_of_card:= index_of_card -6
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 221)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+69))
					pop_up_container.set_item_y_position (a_card_label, (267))
				elseif (index_of_card <= 12) then
					-- set the correct position
					index_of_card:= index_of_card -9
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 297)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+69))
					pop_up_container.set_item_y_position (a_card_label, (343))
				elseif (index_of_card <= 15) then
					-- set the correct position
					index_of_card:= index_of_card -12
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 373)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+69))
					pop_up_container.set_item_y_position (a_card_label, (419))
				elseif (index_of_card <= 18) then
					-- set the correct position
					index_of_card:= index_of_card -15
					pop_up_container.set_item_x_position (a_card, (((index_of_card-1)*143)+23))
					pop_up_container.set_item_y_position (a_card, 449)

					pop_up_container.set_item_x_position (a_card_label, (((index_of_card-1)*143)+69))
					pop_up_container.set_item_y_position (a_card_label, (495))
				end
				list_of_displayed_cards.force (a_card)
				supply_cards_label.force (a_card_label)
				i:=i+1
			end
		end


feature {NONE} -- Attributes

	 supply_state: HASH_TABLE[INTEGER,STRING]
	 	-- the state of the supply with cards and their amount

	supply_cards_label: ARRAYED_LIST[EV_LABEL]
end
