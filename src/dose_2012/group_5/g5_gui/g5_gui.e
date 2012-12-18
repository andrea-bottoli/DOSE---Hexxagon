note
	description: "The implementation of the deferred class G5_IGUI_TO_NET."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"

class
	G5_GUI
inherit
	G5_IGUI_TO_NET
	redefine
		start_game
	end

create
	make, make_test

feature {G5_LAUNCHER} --Initialization performed by the G5_LAUNCHER

	make(main_ui_window: MAIN_WINDOW; a_launcher: G5_LAUNCHER)
		-- this constructor will initialize the base of the GUI: main_menu will be display and APIs will be available
		require
			valid_arg: main_ui_window/= void
			valid_arg: a_launcher/=void
		do
			main_ui:= main_ui_window
			app_launcher:= a_launcher

			create window_menu.make (main_ui, app_launcher)
			window_menu.show
		ensure
			-- the main menu will be displayed
			main_ui = main_ui_window
			app_launcher = a_launcher
		end

feature {G5_LAUNCHER,EQA_TEST_SET} -- the constructor used by test classes -- ** NOTA ** togliere G5_LAUNCHER

	make_test
		-- This feature is used by test classes, because with the real constructor form is impossibile to make tests
		require
			true
		do
		ensure
		end

feature {G5_NET_CONTROLLER_CLIENT}

	start_game (players_name: ARRAY [STRING]; my_name:STRING)
		-- this feature informs that the match is going to start and passes the list of players
		-- players_name, which contains all the names (also my_name)
		require else
			valid_arg: players_name /= void
			valid_name: my_name /= void and not(my_name.is_equal (""))
			game_not_already_started: main_view = void
			exists_waiting_room: player_waiting_room /= void
		do

			-- Destroy the waiting room
			player_waiting_room.destroy
			player_waiting_room:= void

			my_name_in_the_game:= my_name

			create main_view.make (players_name, my_name, current, main_ui)
			main_view.show
			main_view.refresh_now

			-- ** NOTA ** e questo??
			-- add reference of G5_GUI to the main launcher to avoid problem of garbage collection
			main_ui.add_reference_to_game (main_view)

		ensure then
			-- that the game will be initialized and will start with the players indicated
			main_view.amount_of_players = players_name.count
			player_waiting_room = void
		end


	pop_up_selection (cards_are_from: STRING; min_choice: INTEGER; max_choice: INTEGER; cards: ARRAY [STRING])
		-- the implementation of the feature that creates a pop_up with selection
		local
			coins_value: INTEGER
			supply_state: HASH_TABLE[INTEGER,STRING]
		do
			if (current_player_name.is_equal (my_name_in_the_game)) then

				if(cards_are_from.is_equal ("supply")) then

					if(main_view.board.current_phase.is_equal ("Buy")) then

						coins_value:= main_view.board.coins
						supply_state:= main_view.supply_state

						create a_pop_up_supply_selection.make_with_selection (cards, supply_state, max_choice, coins_value, current)
						a_pop_up_supply_selection.show_modal_to_window (main_view)

					else

						supply_state:= main_view.supply_state

						create a_pop_up_supply_selection.make_with_selection (cards, supply_state, max_choice, -1, current)
						a_pop_up_supply_selection.show_modal_to_window (main_view)

					end

				elseif (cards_are_from.is_equal ("hand")) then

					create a_pop_up_selection.make (cards_are_from, cards, min_choice, max_choice, current)
					a_pop_up_selection.show_modal_to_window (main_view)

				end
			else

				if(cards_are_from.is_equal ("hand")) then

					create a_pop_up_selection.make (cards_are_from, cards, min_choice, max_choice, current)
					a_pop_up_selection.show_modal_to_window (main_view_as_observer)

				elseif (cards_are_from.is_equal ("supply")) then

					coins_value:= main_view.board.coins
					supply_state:= main_view.supply_state

					create a_pop_up_supply_selection.make_with_selection (cards, supply_state, max_choice, coins_value, current)
					a_pop_up_supply_selection.show_modal_to_window (main_view_as_observer)

				end
			end
		end

	keep_or_not_card(card: STRING)
		-- the implementation of the feature that creates a pop_up keep or not
		do
			if (current_player_name.is_equal (my_name_in_the_game)) then
				create a_pop_up_keep.make (card, current)
				a_pop_up_keep.show_modal_to_window (main_view)
			else
				create a_pop_up_keep.make (card, current)
				a_pop_up_keep.show_modal_to_window (main_view_as_observer)
			end
		end

	pop_up_thief (player_that_played_thief: STRING; cards_revealed_by_players: HASH_TABLE[STRING, STRING]; pop_up_type: STRING)
		-- the implementation of the feature that creates pop-ups for thief
		local
			i: INTEGER
		do
			-- check if is the first request of the thief card
			if (pop_up_type.is_equal ("REVEAL_OR_SELECT")) then

				-- check if i'm the current player
				if (player_that_played_thief.is_equal(my_name_in_the_game)) then
					create a_pop_up_thief_as_owner.make_initial_request_as_owner (player_that_played_thief, cards_revealed_by_players, current)
					a_pop_up_thief_as_owner.show_modal_to_window (main_view)
				else
					create a_pop_up_thief.make_initial_request (player_that_played_thief, cards_revealed_by_players)
					a_pop_up_thief.show_modal_to_window (main_view_as_observer)
				end

			-- check if is an update_trash message 	
			elseif (pop_up_type.is_equal ("UPDATE_TRASH")) then

				-- check if i'm the current player
				if (player_that_played_thief.is_equal(my_name_in_the_game)) then
					create a_pop_up_thief_as_owner.make_after_update_as_owner (player_that_played_thief, cards_revealed_by_players, current)
					a_pop_up_thief_as_owner.show_modal_to_window (main_view)
				else
					create a_pop_up_thief.make_after_update (player_that_played_thief, cards_revealed_by_players)
					a_pop_up_thief.show_modal_to_window (main_view_as_observer)
				end

			elseif (pop_up_type.is_equal ("UPDATE_GAIN")) then

				if (current_player_name.is_equal (my_name_in_the_game)) then
					create a_pop_up_thief.make_after_update_gain (player_that_played_thief, cards_revealed_by_players)
					a_pop_up_thief.show_modal_to_window (main_view)

					-- wait an amout of time to display the pop-up
					from
						i:=1
					until
						i>10000000
					loop
						i:=i+1
					end

					a_pop_up_thief.destroy
				else
					create a_pop_up_thief.make_after_update_gain (player_that_played_thief, cards_revealed_by_players)
					a_pop_up_thief.show_modal_to_window (main_view_as_observer)

					-- wait an amout of time to display the pop-up
					from
						i:=1
					until
						i>10000000
					loop
						i:=i+1
					end

					a_pop_up_thief.destroy

				end
			end
		end

feature {G5_INET_TO_GUI, EQA_TEST_SET} -- connection initialization

	connection_failed(a_message: STRING)
		-- implementation of the feature
		local
			error_dialog: EV_INFORMATION_DIALOG
		do
			if player_waiting_room /= void then
				player_waiting_room.destroy
				player_waiting_room := void
			end

			--create window_menu.make (main_ui, app_launcher)
			window_menu.create_container_main_menu
			window_menu.show

			create error_dialog.make_with_text (a_message)
			error_dialog.set_title ("CONNECTION FAILED")
			error_dialog.show_modal_to_window (window_menu)
		end

	terminate_game(a_message: STRING)
		-- this feature is called when the game has to be terminated
		local
			error_dialog: EV_INFORMATION_DIALOG
		do
			-- destroy all the view
			main_view.destroy

			if (not(current.main_view_as_observer.is_destroyed)) then
				current.main_view_as_observer.destroy
			end

			if (not(current.a_pop_up_end.is_destroyed)) then
				current.a_pop_up_end.destroy
			end

			if (not(current.a_pop_up_keep.is_destroyed)) then
				current.a_pop_up_keep.destroy
			end

			if (not(current.a_pop_up_message.is_destroyed)) then
				current.a_pop_up_message.destroy
			end

			if (not(current.a_pop_up_reveal.is_destroyed)) then
				current.a_pop_up_reveal.destroy
			end

			if (not(current.a_pop_up_selection.is_destroyed)) then
				current.a_pop_up_selection.destroy
			end

			if (not(current.a_pop_up_thief.is_destroyed)) then
				current.a_pop_up_thief.destroy
			end

			if (not(current.a_pop_up_thief_as_owner.is_destroyed)) then
				current.a_pop_up_thief_as_owner.destroy
			end

			--create window_menu.make (main_ui, app_launcher)
			window_menu.create_container_main_menu
			window_menu.show

			create error_dialog.make_with_text (a_message)
			error_dialog.set_title ("CONNECTION FAILED")
			error_dialog.show_modal_to_window (window_menu)
		end

	end_game (scores: HASH_TABLE [INTEGER, STRING])
		do
			-- GESTIRE CON LE DUE VIEW

			main_view.hide
			main_view_as_observer.hide

			create a_pop_up_end.make(scores, current)
			a_pop_up_end.show


			-- ** NOTA ** cambiarla in base al rematch
	--		main_ui.restore
	--		main_ui.remove_reference_to_game (main_view)

	--		main_view.destroy
	--		main_view:= void
		end

feature {G5_MAIN_VIEW} -- feature used to communicate to the NET user actions

	clicked_card_notification(a_card_id: STRING)
		-- notify that a card has been clicked
		require
			valid_arg: a_card_id/= void
		do
			net_component.play_card (a_card_id)
		end

	next_phase_request_notification(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- notify that the player clicked the next_phase button
		do
			net_component.next_phase
		end

	quit_request_notification
		-- notify that the player wants to leave the game
		do
			net_component.leave_game
		end

feature {G5_POP_UP_WITH_SELECTION, G5_POP_UP_SUPPLY_WITH_SELECTION} -- feature called by pop_up

	selected_pop_up_response(a_place: STRING; selected_cards: ARRAY[STRING]; a_pop_up: G5_POP_UP)
		-- the feature called in respose to a pop-up with selection
		do
			a_pop_up.destroy

			if (a_place.is_equal ("hand")) then

				net_component.selected_from_hand (selected_cards)

			elseif (a_place.is_equal ("supply")) then

				net_component.selected_from_supply (selected_cards)

			end
		end

feature {G5_POP_UP_KEEP_OR_NOT} -- feature called by pop_up

	keep_or_not_card_response(cards: ARRAY[STRING]; a_pop_up: G5_POP_UP_KEEP_OR_NOT)
		-- the feature called in respose to a pop-up with selection
		do
			a_pop_up.destroy
			net_component.keep_or_not_card_response (cards)

		end

feature {G5_POP_UP_END_GAME} -- feature called by pop_up end game

	leave_request
		-- the feature called if a player doesn't want to rematch
		do
			net_component.rematch (false)
			window_menu.create_container_main_menu
			main_view.destroy

			if (not(current.main_view_as_observer.is_destroyed)) then
				current.main_view_as_observer.destroy
			end

			if (not(current.a_pop_up_keep.is_destroyed)) then
				current.a_pop_up_keep.destroy
			end

			if (not(current.a_pop_up_message.is_destroyed)) then
				current.a_pop_up_message.destroy
			end

			if (not(current.a_pop_up_reveal.is_destroyed)) then
				current.a_pop_up_reveal.destroy
			end

			if (not(current.a_pop_up_selection.is_destroyed)) then
				current.a_pop_up_selection.destroy
			end

			if (not(current.a_pop_up_thief.is_destroyed)) then
				current.a_pop_up_thief.destroy
			end

			if (not(current.a_pop_up_thief_as_owner.is_destroyed)) then
				current.a_pop_up_thief_as_owner.destroy
			end

			window_menu.raise

		end

	rematch_request
		-- the feature called if a player wants to rematch
		do
			net_component.rematch (true)
		end

feature {G5_POP_UP_THIEF_WITH_SELECTION} -- feature called by pop_up

	thief_response(cards: HASH_TABLE[ARRAY[STRING],STRING]; a_pop_up: G5_POP_UP_THIEF_WITH_SELECTION; response_type: STRING)
		-- the feature called in respose to a pop-up with selection
		do
			a_pop_up.destroy

			if (response_type.is_equal("TRASH")) then
				net_component.trashed_by_thief (cards)
			elseif (response_type.is_equal("GAIN")) then
				net_component.gained_by_thief (cards)
			end
		end

feature -- Attributes

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits tictactoe

	app_launcher: G5_LAUNCHER
		-- the instance of the application launcher, conserved to avoid garbage collection
end
