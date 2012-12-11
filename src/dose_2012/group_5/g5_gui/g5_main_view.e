note
	description: "This is the main view displayed during a match. It will contains other subview."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.1"

class
	G5_MAIN_VIEW
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	G5_MAIN_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make

feature {G5_GUI, EQA_TEST_SET} -- initialization

	make(players_name: ARRAY[STRING]; my_name_in_the_match: STRING; gui_manager: G5_GUI; a_main_ui: MAIN_WINDOW)
		do

			-- Create the main window.

			amount_of_players := players_name.count
			my_name:= my_name_in_the_match
			main_ui:= a_main_ui
			lock_state:= "LOCK"
			create players_name_list.make_from_array (players_name)


			make_with_title (window_title)
		end


	initialize
			-- Build the window
		local
			i: INTEGER
			a_player: G5_PLAYER_INFO
			new_players_name_list: ARRAYED_LIST[STRING]
		do
			Precursor {EV_TITLED_WINDOW}
			set_size(1020,725)
			close_request_actions.extend (agent request_close_window)

			-- create some parts of the main_view
			create main_container
			create players.make (0)
			create zoom_box.make
			create board.make
			create my_hand.make

			-- a temporary list used to initilize player
			create new_players_name_list.make (0)

			-- find and create my info
			from
				i:=1
			until
				(i> amount_of_players)
			loop
				if
					players_name_list[i].is_equal(my_name)
				then
					create me.make(my_name, "me", zoom_box)
					--players_name_list.prune (players_name_list[i])
				else
					new_players_name_list.force (players_name_list[i])
				end
				i:=i+1
			end

			-- create other players info
			from
				i:=1
			until
				i> new_players_name_list.count
			loop
				create a_player.make (new_players_name_list[i], i.out, zoom_box)

				-- of these set also the position
				main_container.extend_with_position_and_size (a_player, (((i-1)*235)+4), 0, 227, 188)
				players.force (a_player)
				i:=i+1
			end

			-- set the new list (without my name as the default list)
			players_name_list:= new_players_name_list

			--close_request_actions.extend (agent request_close_window)
			load_main_container

		end

feature {NONE} -- Initialization container and internal object

	load_main_container
		-- initialize the container
		do
			main_container.set_background_pixmap (main_view_background)

			-- add the image that will be the "Quit" button
			create quit_button
			create quit_button_pixmap_pointer_in
			create quit_button_pixmap_pointer_out
			quit_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_quit_main_view))
			quit_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_quit_main_view_hover))
			quit_button.set_background_pixmap (quit_button_pixmap_pointer_out)
			quit_button.pointer_enter_actions.extend (agent pointer_enter_area(quit_button))
			quit_button.pointer_leave_actions.extend (agent pointer_leave_area(quit_button))
			main_container.extend_with_position_and_size (quit_button, 888, 499, 105, 50)
			quit_button.pointer_button_release_actions.extend (agent request_quitting(?, ?, ?, ?, ?, ?, ?, ?))


			-- add the image that will be the "net_phase/pass_turn" button
			create phase_turn_button
			create phase_turn_button_pixmap_pointer_in
			create phase_turn_button_pixmap_pointer_out
			phase_turn_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_next_phase_main_view))
			phase_turn_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_next_phase_main_view_hover))
			phase_turn_button.set_background_pixmap (phase_turn_button_pixmap_pointer_out)
			phase_turn_button.pointer_enter_actions.extend (agent pointer_enter_area(phase_turn_button))
			phase_turn_button.pointer_leave_actions.extend (agent pointer_leave_area(phase_turn_button))
			phase_turn_button.disable_sensitive
			main_container.extend_with_position_and_size (phase_turn_button, 753, 499, 105, 50)

			-- ** NOTA ** aggiungere chiamata alla feature new phase sullaNET
			--quit_button.pointer_button_release_actions.extend (agent request_quitting(?, ?, ?, ?, ?, ?, ?, ?))

			-- set dimension and position of other containers
			main_container.extend_with_position_and_size (me, 0, 502, 227, 188)
			main_container.extend_with_position_and_size (zoom_box, 716, 6, 296, 473)
			main_container.extend_with_position_and_size (my_hand, 244, 552, 776, 138)
			main_container.extend_with_position_and_size (board, 0, 193, 704, 300)

			-- add the main_container to the window
			put(main_container)

		end


	clicked_card(a_card_id: STRING; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- the action of click on a card
		local
			error_dialog: EV_INFORMATION_DIALOG
			test_string: STRING
		do
			if (a_card_id.at (1) = 'K') then
				if (lock_state.is_equal ("UNLOCK")) then

					last_played_card:= a_card_id
					my_hand.remove_card_from_hand (a_card_id)

					-- ** NOTA ** call the play card on the net, PARTE SOTTO TOGLIERE!
					test_string:= "clicked card: "
					test_string.append (a_card_id)
					create error_dialog.make_with_text (test_string)
					error_dialog.set_title ("CLICK!!!!")
					error_dialog.show_modal_to_window (current)

				else
					create error_dialog.make_with_text ("You can't play cards in this moment")
					error_dialog.set_title ("INVALID ACTION")
					error_dialog.show_modal_to_window (current)
				end
			else
				create error_dialog.make_with_text ("This is not a kingdom card, you can't play it.")
				error_dialog.set_title ("INVALID ACTION")
				error_dialog.show_modal_to_window (current)
			end
		end

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

	pointer_enter_area (a_area: EV_FIXED)
			-- the pointer is entering the area used as a button
		do
			if a_area = quit_button then
				quit_button.set_background_pixmap (quit_button_pixmap_pointer_in)
			elseif a_area = phase_turn_button then
				phase_turn_button.set_background_pixmap (phase_turn_button_pixmap_pointer_in)
			end
		end

	pointer_leave_area (a_area: EV_FIXED)
			-- the pointer is leaving the area used as a button
		do
			if a_area = quit_button then
				quit_button.set_background_pixmap (quit_button_pixmap_pointer_out)
			elseif a_area = phase_turn_button then
				phase_turn_button.set_background_pixmap (phase_turn_button_pixmap_pointer_out)
			end
		end

	request_close_window
		-- The user wants to close the window using X button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					main_ui.remove_reference_to_game (Current)
				end
				-- ** NOTA **  chiama il metodo che dice che il giocatore si è disconnesso sulla net
				-- Destroy the window
				destroy
			end
		end

	request_quitting(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
			-- The user wants to close the window using quit button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Quit_dialog_message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					--main_ui.remove_reference_to_game (Current)
				end

					-- ** NOTA **  chiama il metodo che dice che il giocatore si è disconnesso sulla net
					-- Destroy the window
				destroy
			end
		end


feature {G5_IGUI_TO_NET, G5_LAUNCHER, EQA_TEST_SET} -- feature called by the gui interface	** NOTA ** rimuovere launcher

	create_and_assign_card(a_place: STRING; cards: ARRAY[STRING])
		require
			valid_place: (a_place.is_equal ("PLAY") xor a_place.is_equal ("HAND"))
			valid_arg: cards/= void
			valid_size: cards.count >=1
		local
			a_card: G5_GUI_CARD
			i: INTEGER
		do
			from
				i:=1
			until
				i> cards.count
			loop
				if a_place.is_equal ("HAND") then
					if ((my_hand.cards_in_the_hand.count+1) <= 5) then
						create a_card.make_slim (cards[i],"hand")

						-- assign agent
						a_card.pointer_enter_actions.extend (agent pointer_enter_card(a_card.card_id))
						a_card.pointer_leave_actions.extend (agent pointer_leave_card)
						a_card.pointer_button_release_actions.extend (agent clicked_card(a_card.card_id, ?, ?, ?, ?, ?, ?, ?, ?))

						-- add the card to the hand
						my_hand.set_cards_in_the_hand (a_card)
					else
						create a_card.make_mini (cards[i],"hand")

						-- assign agent
						a_card.pointer_enter_actions.extend (agent pointer_enter_card(a_card.card_id))
						a_card.pointer_leave_actions.extend (agent pointer_leave_card)
						a_card.pointer_button_release_actions.extend (agent clicked_card(a_card.card_id, ?, ?, ?, ?, ?, ?, ?, ?))

						-- add the card to the hand
						my_hand.set_cards_in_the_hand (a_card)
					end
				else
					-- this lock cards and buttons
					quit_button.disable_capture
					phase_turn_button.disable_capture
					lock ("LOCK")


					create a_card.make_mini (cards[i],"played")

					-- assign agent
					a_card.pointer_enter_actions.extend (agent pointer_enter_card(a_card.card_id))
					a_card.pointer_leave_actions.extend (agent pointer_leave_card)

					-- add the card to the board
					board.put_card_in_play(a_card)
				end
				i:=i+1
			end
			--main_container.prune (my_hand)
			--main_container.extend_with_position_and_size (my_hand, 244, 552, 776, 138)
		end

	update_state_of_the_game(target_player: STRING; update_info: HASH_TABLE [INTEGER, STRING])
		require
			valid_name: check_players_name (target_player)
			valid_update: update_info.count = 5
		local
			an_integer_value: INTEGER
			--a_message: STRING
			i: INTEGER
		do
			if(target_player.is_equal (me.player_name)) then

				-- if i'm the current player

				-- update number of cards in the deck
				an_integer_value:= update_info.at ("DECK")
				me.set_number_of_cards_deck (an_integer_value)

				-- update number of cards in the hand
				an_integer_value:= update_info.at ("HAND")
				me.set_number_of_cards_hand (an_integer_value)

				-- update coins value
				an_integer_value:= update_info.at ("COIN")
				board.set_coins (an_integer_value)

				-- update action points value
				an_integer_value:= update_info.at ("ACTION")
				board.set_action_points (an_integer_value)

				-- update buy points value
				an_integer_value:= update_info.at ("BUY")
				board.set_buy_points (an_integer_value)

			else
				from
					i:=1
				until
					i> players.count
				loop
					if(target_player.is_equal (players[i].player_name)) then

						-- ** NOTA **  vedere come sistemare text box
						--a_message.make_empty
						--a_message.append (target_player)
						--a_message.append (": drew ")
						--a_message.append ((an_integer_value))
						--board.update_text_box ("")

						-- update number of cards in the deck
						an_integer_value:= update_info.at ("DECK")
						players[i].set_number_of_cards_deck (an_integer_value)

						-- update number of cards in the hand
						an_integer_value:= update_info.at ("HAND")
						players[i].set_number_of_cards_hand (an_integer_value)
					end
					i:=i+1
				end
			end
		end

	update_phase (new_phase_name: STRING)
		do
			-- set the new phase name
			board.set_current_phase(new_phase_name)

			-- lock buttons to evoid problem
			if (board.current_player_name.is_equal (me.player_name)) then
				if (new_phase_name.is_equal ("Action")) then
					lock("UNLOCK")
					quit_button.enable_sensitive
					phase_turn_button.enable_sensitive
					board.set_default
				elseif (new_phase_name.is_equal ("Buy")) then
					lock("LOCK")
				elseif (new_phase_name.is_equal ("Clean-up")) then
					--quit_button.disable_sensitive
					phase_turn_button.disable_sensitive

					--cleans hand and board
					board.clean_board
					my_hand.discard_all_cards
				end
			end
		end

	update_top_discard_pile(player_name: STRING; a_card: STRING)
		require
			valid_name: check_players_name (player_name)
			valid_card: a_card /= void
		local
			i: INTEGER
		do
			if(me.player_name.is_equal (player_name)) then
				me.set_top_card_discard_pile (a_card)
			else
				from
					i:=1
				until
					i > players.count
				loop
					if(players[i].player_name.is_equal (player_name)) then
						players[i].set_top_card_discard_pile (a_card)
					end
					i:=i+1
				end
			end
		end

	new_turn_update (new_current_player: STRING)
		require
			valid_name: check_players_name (new_current_player)
		do
			board.set_current_player_name (new_current_player)
			--if (new_current_player.is_equal (me.player_name)) then
				-- enable buttons
				--quit_button.enable_capture
			--	phase_turn_button.enable_sensitive
			--end
		end

	update_text_box (text: STRING)
		require
			valid_text: text/= void
		do
			board.update_text_box (text)
		end

	update_state_of_supply (new_supply_state: HASH_TABLE[INTEGER, STRING])
		require
			valid_arg: new_supply_state /= void
		do
			supply_state:= new_supply_state
		end

	resolved_card(card: STRING)
		require
			valid_arg: card /= void
		do
			-- if i'm the current player all cards and button will be enable
			if(me.player_name.is_equal (board.current_player_name)) then
				quit_button.enable_sensitive
				phase_turn_button.enable_sensitive
				last_played_card:= "NONE"
				if(board.action_points>0) then
					lock("UNLOCK")
				end
			end
		end

	remove_player_from_the_game(a_player_name: STRING)
		require
			valid_name: check_players_name (a_player_name)
		local
			new_players: ARRAYED_LIST[G5_PLAYER_INFO]
			i: INTEGER
		do
			create new_players.make (0)
			from
				i:=1
			until
				i > (amount_of_players-1)
			loop
				if (a_player_name.is_equal (players[i].player_name)) then
					--main_container.prune (players[i])
					players[i].player_disconnected
				--else
				--	new_players.force (players[i])
				end
				i:=i+1
			end
			--players:= new_players
			--amount_of_players:= amount_of_players-1
		end

	check_players_name(a_name: STRING): BOOLEAN
		-- this feature returns true if a_name in contained in the players_name
		require
			valid_arg: a_name/= void
		local
			i:INTEGER
		do
			from
				i:=1
			until
				i>(amount_of_players-1)
			loop
				if
					players[i].player_name.is_equal (a_name) or me.player_name.is_equal(a_name)
				then
					result:= TRUE
				end
				i:=i+1
			end
		end

feature {G5_MAIN_VIEW} -- lock, unlock

	lock (type: STRING)
		require
			valid_type: (type.is_equal ("LOCK") xor type.is_equal ("UNLOCK"))
		do
			lock_state:= type
		end

feature {NONE} -- Attributes

	main_container: EV_FIXED
		-- the container that contains all the element

	zoomed_card: EV_FIXED
		-- the container that display the card in zoomed version
	zoomed_card_pixmap: EV_PIXMAP

	main_view_background: EV_PIXMAP
		-- returns the background of the menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_background_main_view))
		end

-- ### buttons
	quit_button: EV_FIXED
		-- the button used to join an existing game

	quit_button_pixmap_pointer_out: EV_PIXMAP
	quit_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button

	phase_turn_button: EV_FIXED
		-- the button used to join an existing game

	phase_turn_button_pixmap_pointer_out: EV_PIXMAP
	phase_turn_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button

	supply_button: EV_FIXED
		-- button that opens the supply list
	supply_button_pixmap: EV_PIXMAP

	trash_button: EV_FIXED
		-- button that opens the trash pile
	trash_button_pixmap: EV_PIXMAP
-- ### buttons END

feature -- Players info variable

	supply_state: HASH_TABLE[INTEGER, STRING]
		-- it contains number of a supply card and his ID

	trash_state: ARRAY[STRING]
		-- it contains the list of cards trashed during the match by all the players

	lock_state: STRING
		-- if it's true cards can be played, elso not!

	last_played_card: STRING
		-- the last card that has been played by the current player

	main_ui: MAIN_WINDOW
		-- the ref to the main ui (general launcher)

	me: G5_PLAYER_INFO
		-- my name in this match

	players: ARRAYED_LIST[G5_PLAYER_INFO]
		-- the list of players with info

	amount_of_players: INTEGER
		-- the number of players

	players_name_list: ARRAYED_LIST[STRING]
		-- ** NOTA ** modificare codice per

	my_name: STRING
		-- contains my name in the game

	board: G5_CURRENT_PLAYER_AND_BOARD
		-- the instance of the state of the current player

	my_hand: G5_HAND_BOX
		-- the box that contains my hand

	zoom_box: G5_ZOOMED_CARD_BOX
		-- the box that contains the zoomed card

end
