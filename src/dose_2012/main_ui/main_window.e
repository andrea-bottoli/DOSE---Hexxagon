note
	description: "Class for the main window of the game selector application."
	author: "Christian Estler"
	date: "16.09.2012"
	revision: "$Revision$"

class
	MAIN_WINDOW

inherit

	EV_UNTITLED_DIALOG

	MAIN_WINDOW_CONSTANTS
		undefine
			default_create,
			copy
		end

create
	make_and_launch

feature {NONE} -- Initialization

	make_and_launch
			-- Initialize and launch application
		local
			l_box: EV_FIXED
			l_background: EV_PIXMAP
		do
				-- create the window
			default_create
				-- the window should be centered in the screen
			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))
				-- set the size of the window
			set_height (Window_height)
			set_width (Window_width)
				-- disable user resizing for the window
			disable_user_resize

				-- create a fixed size box
			create l_box
				-- create a pixmap to load the background
			create l_background
				-- set the pixmap to be the background of the box
			l_background.set_with_named_file (file_system.pathname_to_string (Mui_img_background))
			l_box.set_background_pixmap (l_background)

				-- set the list with the games and put in the box
			add_game_entries
				-- set the procedure that should be called when an item on the games list is selected
			games_list.select_actions.extend (agent load_description(games_list.selected_item))

				-- add the game list to the box-container
			l_box.extend_with_position_and_size (games_list, 30, 155, 250, 325)

				-- set the rich text area for the description an put it in the box
			l_box.extend_with_position_and_size (rich_text_area, 300, 155, 465, 325)

				-- the rich text area should not be editable by users
			rich_text_area.disable_edit

				-- create an EV_FIXED container for the "play" button, set its events etc.
			create play_area
			create play_pixmap_pointer_in
			create play_pixmap_pointer_out
			play_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (mui_img_play))
			play_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (mui_img_play_hover))
			play_area.set_background_pixmap (play_pixmap_pointer_out)
			play_area.pointer_enter_actions.extend (agent pointer_enter_area(play_area))
			play_area.pointer_leave_actions.extend (agent pointer_leave_area(play_area))
			play_area.pointer_button_release_actions.extend (agent start_a_game(?, ?, ?, ?, ?, ?, ?, ?))
			l_box.extend_with_position_and_size (play_area, 48, 502, 293, 84)

				-- create an EV_FIXED container for the "quit" button, set its events etc.
			create quit_area
			create quit_pixmap_pointer_in
			create quit_pixmap_pointer_out
			quit_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (mui_img_quit))
			quit_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (mui_img_quit_hover))
			quit_area.set_background_pixmap (quit_pixmap_pointer_out)
			quit_area.pointer_enter_actions.extend (agent pointer_enter_area(quit_area))
			quit_area.pointer_leave_actions.extend (agent pointer_leave_area(quit_area))
			quit_area.pointer_button_release_actions.extend (agent destroy_window(?, ?, ?, ?, ?, ?, ?, ?))
			l_box.extend_with_position_and_size (quit_area, 450, 502, 293, 84)

				-- add the box to the current window
			extend (l_box)

			create {LINKED_LIST [ANY]} game_windows.make
				-- create the list which holds references to the game windows
		end

feature {NONE} -- Implementation

	destroy_window (a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
			-- Destroy the window
			-- Arguments are ignored
		do
			destroy; -- here you MUST put a semicolon. Otherwise the parser complains!
				-- End the application
			(create {EV_ENVIRONMENT}).application.destroy
		end

	start_a_game (a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
			-- starts a game
		local
			l_warning_dialog: EV_WARNING_DIALOG
			l_any: ANY
			l_type: TYPE [LAUNCHER]
			l_internal: INTERNAL
		do
			if not attached games_list.selected_item then
				create l_warning_dialog.make_with_text (mui_message_string)
				l_warning_dialog.disable_user_resize
				l_warning_dialog.show_modal_to_window (Current)
			else
				game_entries.go_i_th (games_list.index_of (games_list.selected_item, 1))
				l_type := game_entries.item.launcher
				create l_internal
				l_any := l_internal.new_instance_of (l_type.type_id)
				if attached {LAUNCHER} l_any as l_launcher then
					l_launcher.launch (Current)
					minimize -- minimize the window
				end
			end
		end

	add_game_entries
			-- adds all game entries to the list
		local
			l_list_item: EV_LIST_ITEM
		do
			from
				Game_entries.start
			until
				Game_entries.after
			loop
				create l_list_item.make_with_text (Game_entries.item.game)
				Games_list.extend (l_list_item)
				Game_entries.forth
			end
		end

	load_description (a_item: EV_LIST_ITEM)
			-- loads the description from the given file path
		local
			i: INTEGER_32
			l_path: KL_PATHNAME
			l_path_string: STRING
		do
			i := games_list.index_of (games_list.selected_item, 1)
			game_entries.go_i_th (i)
			l_path := mui_description_prefix
			l_path.append_name (game_entries.item.description)
			l_path_string := file_system.pathname_to_string (l_path)
			rich_text_area.set_with_named_file (create {FILE_NAME}.make_from_string (l_path_string))
		end

	play_game (a_play_area: EV_FIXED)
			-- load the selected game
		local
			l_pixmap: EV_PIXMAP
		do
			create l_pixmap
			l_pixmap.set_with_named_file (file_system.pathname_to_string (mui_img_play_hover))
			a_play_area.set_background_pixmap (l_pixmap)
		end

	pointer_enter_area (a_area: EV_FIXED)
			-- the pointer is entering the area used as a button
		do
			if a_area = play_area then
				play_area.set_background_pixmap (play_pixmap_pointer_in)
			elseif a_area = quit_area then
				quit_area.set_background_pixmap (quit_pixmap_pointer_in)
			end
		end

	pointer_leave_area (a_area: EV_FIXED)
			-- the pointer is leaving the area used as a button
		do
			if a_area = play_area then
				play_area.set_background_pixmap (play_pixmap_pointer_out)
			elseif a_area = quit_area then
				quit_area.set_background_pixmap (quit_pixmap_pointer_out)
			end
		end

feature {ANY} -- Access

	add_reference_to_game (a_game_reference: ANY)
			-- adds the reference to of a game
			-- this can be, for example, the game main window
			-- otherwise, if there are windows which aren't reference bye the main UI, they might get garbage-collected
		require
			arg_not_void: a_game_reference /= Void
		do
			game_windows.extend (a_game_reference)
		end

	remove_reference_to_game (a_game_reference: ANY)
			-- removes the reference of a game window from the list of references
			-- if such a reference exists
		require
			arg_not_void: a_game_reference /= Void
		do
			if game_windows.has (a_game_reference) then
				game_windows.start
				game_windows.search (a_game_reference)
				game_windows.remove
			end
		end

feature {NONE} -- Attributes

	play_area: EV_FIXED
			-- the area where the play "button" is located (it's acutally a pixmap)

	play_pixmap_pointer_in: EV_PIXMAP

	play_pixmap_pointer_out: EV_PIXMAP

	quit_area: EV_FIXED
			-- the area were the quit "button" is locaed

	quit_pixmap_pointer_in: EV_PIXMAP

	quit_pixmap_pointer_out: EV_PIXMAP

	Window_width: INTEGER = 800
			-- Initial width for this window.

	Window_height: INTEGER = 600
			-- Initial height for this window.

	games_list: EV_LIST
			-- A list where each entry is a game
		once
			Result := (create {EV_LIST})
		end

	game_windows: LIST [ANY]
			-- A list of the game windows that are currently opened

	rich_text_area: EV_RICH_TEXT
			-- A rich text area for the description of the game
		once
			Result := (create {EV_RICH_TEXT})
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

	Game_entries: attached LINKED_LIST [TUPLE [game, description: attached STRING; launcher: attached TYPE [LAUNCHER]]]
			-- Entries of the selection list.
		once
			create Result.make

				-- ** Replace the dummy entries with an entry for your game **
				-- First element: Game name
				-- Second element: File name of the game description (rtf file)
				-- Third element: Type of your launcher class (which has to inherit from LAUNCHER)

				-- Entries:
			Result.extend (["Monopoly", "group_01.rtf", {G1_LAUNCHER}])
			Result.extend (["Triple Triad New Generation", "ttng_description.rtf", {G2_LAUNCHER}])
			Result.extend (["Tichu", "Tichu_group03.rtf", {TICHU_LAUNCHER}])
			Result.extend (["Bang!", "bang.rtf", {BANG_LAUNCHER}])
			Result.extend (["Dominion", "group_05.rtf", {G5_LAUNCHER}])
			Result.extend (["MONOPOLY", "dummy_description.rtf", {G6_LAUNCHER}])
			Result.extend (["ZOMBIES!!!", "zb_description.rtf", {ZB_LAUNCHER}])
			Result.extend (["Blokus - Group 8", "group_8.rtf", {B8_LAUNCHER}])
			Result.extend (["Risk - Group 9", "group_09.rtf", {RI_LAUNCHER}])
			Result.extend (["Carcassonne", "group_10_Carcassonne.rtf", {G10_CARCASSONNE_LAUNCHER}])
			Result.extend (["Battle Beyond Space", "group_11.rtf", {DUMMY_LAUNCHER}])
			Result.extend (["Hive", "hive.rtf", {HIVE12_LAUNCHER}])
			Result.extend (["Cluedo", "group_13.rtf", {CU_LAUNCHER}])
			Result.extend (["Hexxagon (Group 14)", "hexxagon_group14.rtf", {HX_LAUNCHER}])
			Result.extend (["Blokus", "group_15.rtf", {BS_LAUNCHER}])
			Result.extend (["Ingenious", "ing_description.rtf", {IG_LAUNCHER}])
			Result.extend (["Dominion 17", "group17.rtf", {DOM17_LAUNCHER}])
			Result.extend (["Hexxagon (Group 18)", "hexxagon_group18.rtf", {XX_LAUNCHER}])
			Result.extend (["Kingdom Builder", "dummy_description.rtf", {KINGDOM_BUILDER_LAUNCHER}])
			Result.extend (["Ingenious 20-12", "group_20.rtf", {DUMMY_LAUNCHER}])
			Result.extend (["Triple Triad Gold", "group_21.rtf", {DUMMY_LAUNCHER}])
			Result.extend (["TicTacToe", "ttt_description.rtf", {TTT_LAUNCHER}])
		end

end
