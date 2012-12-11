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
		local
			window_menu: G5_MAIN_MENU
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
			exists_waiting_room: ((host_waiting_room /= void and common_player_waiting_room = void) or (host_waiting_room = void and common_player_waiting_room /= void))
		do
			create main_view.make (players_name, my_name, current, main_ui)
			main_view.show

			-- add reference of G5_GUI to the main launcher to avoid problem of garbage collection
			main_ui.add_reference_to_game (main_view)

			-- Destroy the waiting room
			if (host_waiting_room /= void) then
				host_waiting_room.destroy
			else
				common_player_waiting_room.destroy
			end

		ensure then
			-- that the game will be initialized and will start with the players indicated
			main_view.amount_of_players = players_name.count
			host_waiting_room = void
			common_player_waiting_room = void
		end

feature {G5_MAIN_VIEW} -- feature used to communicate to the NET user actions

	clicked_card_notification(a_card_id: STRING; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
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

	quit_request_notification(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- notify that the player wants to leave the game
		do
			net_component.leave_game
		end

feature -- Attributes

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits tictactoe

	app_launcher: G5_LAUNCHER
		-- the instance of the application launcher, conserved to avoid garbage collection
end
