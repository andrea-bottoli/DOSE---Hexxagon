note
	description: "Summary description for {G5_POP_UP_THIEF_WITH_SELECTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_POP_UP_THIEF_WITH_SELECTION
inherit
	G5_POP_UP_THIEF
	redefine
		ok_request, set_cards_of_a_player
	end

create
	make_initial_request_as_owner, make_after_update_as_owner

feature -- constructor

	make_initial_request_as_owner(owner_player: STRING; the_revealed_cards: HASH_TABLE[STRING,STRING]; a_gui: G5_GUI)
		-- the constructor of the class
		require
			valid_arg: owner_player/= void
			valid__arg: the_revealed_cards/= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			pop_up_type:= "SELECTION_TRASHED_CARDS"
			amount_of_players:= the_revealed_cards.count
			owner_thief_card:= owner_player
			revealed_cards:= the_revealed_cards
			gui:= a_gui

			create player_labels.make (0)
			create cards_first_player.make_empty
			create cards_second_player.make_empty
			create cards_third_player.make_empty

			-- create the window
			default_create

			-- initialize the view
			load_view

			-- create the main label
			create text_to_display.make_empty
			text_to_display.append ("Which cards do you want to trash?")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 300, 30)

			-- add the main container to the pop-up
			put (pop_up_container)

		end


	make_after_update_as_owner(owner_player: STRING; the_revealed_cards: HASH_TABLE[STRING,STRING]; a_gui: G5_GUI)
		-- the constructor of the class
		require
			valid_arg: owner_player/= void
			valid__arg: the_revealed_cards/= void
		local
			text_to_display: STRING
			font: EV_FONT
		do
			pop_up_type:= "SELECTION_GAINED_CARDS"
			amount_of_players:= the_revealed_cards.count
			owner_thief_card:= owner_player
			revealed_cards:= the_revealed_cards
			gui:= a_gui

			create player_labels.make (0)
			create cards_first_player.make_empty
			create cards_second_player.make_empty
			create cards_third_player.make_empty

			-- create the window
			default_create

			-- initialize the view
			load_view

			-- create the main label
			create text_to_display.make_empty
			text_to_display.append ("Which cards to you want to keep for yourself?")
			create description_label.make_with_text (text_to_display)
			create font.default_create
			font.set_height (20)
			description_label.set_font (font)
			pop_up_container.extend_with_position_and_size (description_label, 23, 15, 400, 30)


			-- add the main container to the pop-up
			put (pop_up_container)

		end


feature {NONE} -- Initialization

	set_cards_of_a_player(index_of_player: INTEGER; name_of_the_player: STRING)
		local
			i: INTEGER
			a_card: G5_GUI_CARD
			value: STRING
			temporary_list_of_value: LIST[STRING]
		do

			value:= revealed_cards.item (name_of_the_player)
			temporary_list_of_value:= value.split (';')

			from
				i:=1
			until
				i > temporary_list_of_value.count
			loop
				create a_card.make_mini (temporary_list_of_value.at (i), "pop-up")

				a_card.pointer_enter_actions.extend (agent pointer_enter_card(a_card.card_id))
				a_card.pointer_leave_actions.extend (agent pointer_leave_card)
				a_card.pointer_button_release_actions.extend (agent select_card(a_card, ?, ?, ?, ?, ?, ?, ?, ?))

				-- sets dimension of the card and add it to the container
				pop_up_container.extend (a_card)
				pop_up_container.set_item_size (a_card, 113, 42)

				if (index_of_player = 1) then

					cards_first_player.force (a_card, i)
					pop_up_container.set_item_x_position (a_card, (23+(150*(index_of_player-1))))
					pop_up_container.set_item_y_position (a_card, (105+((i-1)*70)))

				elseif (index_of_player = 2) then

					cards_second_player.force (a_card, i)
					pop_up_container.set_item_x_position (a_card, (23+(150*(index_of_player-1))))
					pop_up_container.set_item_y_position (a_card, (105+((i-1)*70)))

				else

					cards_third_player.force (a_card, i)
					pop_up_container.set_item_x_position (a_card, (23+(150*(index_of_player-1))))
					pop_up_container.set_item_y_position (a_card, (105+((i-1)*70)))

				end
				i:=i+1
			end
		end


feature {NONE} -- Application

	ok_request
		-- the ok button has been pressed
		local
			i: INTEGER
			error_dialog: EV_INFORMATION_DIALOG
			selected_cards_first_player: ARRAYED_LIST[STRING]
			selected_cards_second_player: ARRAYED_LIST[STRING]
			selected_cards_third_player:ARRAYED_LIST[STRING]

			selected_card_for_each_player: ARRAY[INTEGER]
			table_to_return: HASH_TABLE[ARRAY[STRING],STRING]
		do
			-- create the array of selected_cards
			--create selected_cards.make (0)
			create selected_card_for_each_player.make_filled (0, 1, 3)
			create selected_cards_first_player.make (0)
			create selected_cards_second_player.make (0)
			create selected_cards_third_player.make (0)

			from
				i:=1
			until
				i> cards_first_player.count
			loop
				if (not(cards_first_player.is_empty)) then
					if ((cards_first_player[i].selection_label/= void)) then
						selected_cards_first_player.force (cards_first_player[i].card_id)
						selected_card_for_each_player[1] := selected_card_for_each_player[1]+1
					end
				end

				if (not(cards_second_player.is_empty)) then
					if (cards_second_player[i].selection_label/= void) then
						selected_cards_second_player.force (cards_second_player[i].card_id)
						selected_card_for_each_player[2] := selected_card_for_each_player[2]+1
					end
				end
				if (not(cards_third_player.is_empty)) then
					if (cards_third_player[i].selection_label/= void) then
						selected_cards_third_player.force (cards_third_player[i].card_id)
						selected_card_for_each_player[3] := selected_card_for_each_player[3]+1
					end
				end
				i:=i+1
			end

			-- checks if selected cards are in the correct number
			if((selected_card_for_each_player[1]<=1) and (selected_card_for_each_player[2]<=1) and (selected_card_for_each_player[3]<=1)) then

				create table_to_return.make (amount_of_players)

				if (not(cards_first_player.is_empty)) then
					table_to_return.put (selected_cards_first_player.to_array, player_labels[1].text)
				end

				if (not(cards_second_player.is_empty)) then
					table_to_return.put (selected_cards_second_player.to_array, player_labels[2].text)
				end

				if (not(cards_third_player.is_empty)) then
					table_to_return.put (selected_cards_third_player.to_array, player_labels[3].text)
				end

				-- send the response to the main gui
				if (pop_up_type.is_equal ("SELECTION_TRASHED_CARDS")) then
					gui.thief_response (table_to_return, current, "TRASH")
				elseif (pop_up_type.is_equal ("SELECTION_GAINED_CARDS")) then
					gui.thief_response (table_to_return, current, "GAIN")
				end
			else
				create error_dialog.make_with_text ("Number of selected cards is not correct")
				error_dialog.set_title ("NOT VALID")
				error_dialog.show_modal_to_window (current)
			end
		end

	select_card(a_card: G5_GUI_CARD; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- a cards has bee n clicked and selected from the list
		local
			error_dialog: EV_INFORMATION_DIALOG
		do
			-- checks if the card is already selected or not
			if(a_card.card_id.at (1)= 'T') then
				if (a_card.selection_label= void) then

					a_card.select_unselect_request

				elseif (a_card.selection_label.text.is_equal ("SELECTED")) then

					a_card.select_unselect_request

				end
			else
				create error_dialog.make_with_text ("This is not a treasure card.")
				error_dialog.set_title ("INVALID ACTION")
				error_dialog.show_modal_to_window (current)
			end
		end

feature -- Attributes

	gui: G5_GUI
		-- the reference to the gui used to send user choice

	pop_up_type: STRING
		-- this can be "TRASH" or "GAIN"

end
