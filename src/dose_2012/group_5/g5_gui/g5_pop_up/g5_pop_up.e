note
	description: "Summary description for {G5_POP_UP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP
inherit
	EV_DIALOG

	G5_POP_UP_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

feature

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

	list_of_displayed_cards: ARRAYED_LIST[G5_GUI_CARD]
		-- the list of card displayed

	list_of_cards: ARRAY[STRING]
		-- The list of cards to be displayed

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

