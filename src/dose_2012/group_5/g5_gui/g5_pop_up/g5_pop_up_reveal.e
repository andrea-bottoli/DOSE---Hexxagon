note
	description: "This class displays a pop-up containing a list of cards."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_REVEAL
inherit
	EV_UNTITLED_DIALOG

	G5_POP_UP_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end


create
	make
feature

	make(a_player: STRING; a_list_of_cards: ARRAY[STRING])
		--The constructor of the class
		require
			valid_arg: a_list_of_cards /= void
			valid_arg: a_player /= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			list_of_cards:= a_list_of_cards
			create list_of_displayed_cards.make (list_of_cards.count)
			player:= a_player

			-- create the window
			default_create

			-- the window should be centered in the screen
			set_x_position ((screen_width // 2) - (800 // 2))
			set_y_position ((screen_height // 2) - (550 // 2))

			-- set the size of the window
			set_height (550)
			set_width (800)

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

feature {NONE} -- application

	pointer_enter_card(a_card_id: STRING)
		-- the pointer enter in a card
		do
			zoom_box.set_zoomed_card (a_card_id)
		end

	pointer_leave_card
		-- the exit from a card
		do
			zoom_box.set_default_zoomed_card
		end

	ok_request
		-- the ok button has been pressed
		do
			-- ** NOTA ** come cazzo chiudo sta cosa???
			destroy
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

feature -- Variable

	list_of_cards: ARRAY[STRING]
		-- The list of cards to be displayed

	list_of_displayed_cards: ARRAYED_LIST[G5_GUI_CARD]
		-- the list of card displayed

	player:STRING
		-- the player that reveal cards

	pop_up_container: EV_FIXED
		-- the main container of the pop-up

	pop_up_container_background: EV_PIXMAP
		-- the background of the pop-up

	ok_button: EV_BUTTON
		-- the button used to confirm

	zoom_box: G5_ZOOMED_CARD_BOX
		-- the box that display the zoomed card

	description_label: EV_LABEL
		-- the label that discribe the pop-up
end
