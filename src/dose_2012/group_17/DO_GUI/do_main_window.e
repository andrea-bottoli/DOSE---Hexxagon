note
	description: "Main window of the game dominion."
	author: "Team Rio Cuarto9"
	date: "07/11/12"
	revision: "1.1"

class
	DO_MAIN_WINDOW

	inherit

	EV_TITLED_WINDOW
		export
			{EQA_TEST_SET} is_initialized
		redefine
			initialize,
			is_in_default_state
		end

	DO_INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

	EXECUTION_ENVIRONMENT
		rename
			put as put_exec
		undefine
			default_create,
			copy
		end

create
	make

feature {EQA_TEST_SET} -- make and Initialize

	make(main_ui: MAIN_WINDOW)
		do
			main_app := main_ui
			default_create
		end

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}

				-- Create and add the menu bar.
			build_standard_menu_bar
			set_menu_bar (standard_menu_bar)

				--Create the main container
			build_main_container_default
			extend (main_container)

				-- Execute `request_close_window' when the user clicks
				-- on the cross in the title bar.
			close_request_actions.extend (agent request_close_window)

				-- Set the title of the window
			set_title (Window_title)

				-- Set the initial size of the window
			set_size (Window_width, Window_height)

				-- The user can't resize the window, it's predefined
			disable_user_resize
		end

feature -- Status report

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
		do
			Result := ( (Window_title.is_equal("Dominion")) and (Window_width=1000) and (Window_height=700))
		end

feature {EQA_TEST_SET} -- Menu Implementation

	standard_menu_bar: EV_MENU_BAR
			-- Standard menu bar for this window.

	file_menu: EV_MENU
			-- "File" menu for this window (contains New, Create game, Join Game, Exit...)

	help_menu: EV_MENU
			-- "Help" menu for this window (contains About...)

	build_standard_menu_bar
			-- Create and populate `standard_menu_bar'.
		do
				-- Create the menu bar.
			create standard_menu_bar
				-- Add the "File" menu
			build_file_menu
			standard_menu_bar.extend (file_menu)

				-- Add the "Help" menu
			build_help_menu
			standard_menu_bar.extend (help_menu)
		end

	build_file_menu
			-- Create and populate `file_menu'.
		local
			menu_item: EV_MENU_ITEM
			separator_item: EV_MENU_SEPARATOR
		do
			create file_menu.make_with_text (Menu_file_item)
				--new game button
			create menu_item.make_with_text (Menu_file_new_item)
			menu_item.select_actions.extend (agent request_new_game_wraper)	--preguntar al naza el miercoles			
			file_menu.extend (menu_item)

				--new online game button
			create menu_item.make_with_text (Menu_file_new_online_item)
			menu_item.select_actions.extend (agent request_new_online_game_wraper)
			file_menu.extend (menu_item)

				--join online game
			create menu_item.make_with_text (Menu_file_join_game_item)
			menu_item.select_actions.extend (agent request_join_game_wraper)
			file_menu.extend (menu_item)
				--separator
			create separator_item.default_create
			file_menu.extend (separator_item)
				--Exit
			create menu_item.make_with_text (Menu_file_exit_item)
			menu_item.select_actions.extend (agent request_close_window)
			file_menu.extend (menu_item)
		end

	build_help_menu
			-- Create and populate `help_menu'.
		local
			menu_item: EV_MENU_ITEM
		do
			create help_menu.make_with_text (Menu_help_item)
				--on about
			create menu_item.make_with_text (Menu_help_about_item)
			menu_item.select_actions.extend (agent on_about)
			help_menu.extend (menu_item)
				--rules
			create menu_item.make_with_text (Menu_rules_item)
			menu_item.select_actions.extend (agent rules)
			help_menu.extend (menu_item)
				--help
			create menu_item.make_with_text (Menu_help_help_item)
			menu_item.select_actions.extend (agent help)
			help_menu.extend (menu_item)
		end

feature {ANY} -- Implementation, Close event

	request_close_window
		-- Destroy the window
		require
			not_destroyed: not is_destroyed
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (Exit_message)
			question_dialog.show_modal_to_window (Current)
			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_app then
					main_app.restore
					main_app.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

feature {ANY} -- Implementation, New Game Event

	request_new_game_wraper
		--this is a wraper that needs to be defined for the request new game from the file menu
		--the agent of the pixmap pointer needs this parameters.
		do
			request_new_game(0,0,0,0,0,0,0,0)
		end

		--real request new game
	request_new_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		require
			not_destroyed: not is_destroyed
		local
			j : LINKED_LIST[INTEGER]
		do
			create settings.make_setting (True, False, j)
			settings.set_window(Current)
			settings.show
		ensure
			game_beign_setted: settings /=void
		end

	request_join_game_wraper
		--this is a wraper that needs to be defined for the request join game from the file menu
		--the agent of the pixmap pointer needs this parameters.
		do
			request_join_game(0,0,0,0,0,0,0,0)
		end

	--real request join game
	request_join_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		require
			not_destroyed: not is_destroyed
		local
			j : LINKED_LIST[INTEGER]
		do
			create settings.make_setting (False, True, j)
			settings.set_window(Current)
			settings.show
		end

	request_new_online_game_wraper
		--this is a wraper that needs to be defined for the request new game from the file menu
		--the agent of the pointer needs this parameters.
		do
			request_new_online_game(0,0,0,0,0,0,0,0)
		end

	--real request new online game
	request_new_online_game(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		require
			not_destroyed: not is_destroyed
		local
			j : LINKED_LIST[INTEGER]
		do
			create settings.make_setting (False, False, j)
			settings.set_window(Current)
			settings.show
--			create server.make(2000)
--			create client.make("127.0.0.1",2000)		ver, me parece q no va
		ensure
			online_game_created:
		end

feature {ANY} -- Implementation, About event

	on_about
			-- Display the About dialog.
		local
			dialog: DO_ON_ABOUT
		do
			create dialog.make (Files_path+"wallpapers\Dominion-logo-design.png", "ABOUT",On_about_message)
			dialog.show_modal_to_window (current)
		end

	rules
		-- Display the Rules dialog.
		local
			dialog: DO_USER_INFO_DIALOG
		do
			create dialog.make (Files_path+"wallpapers\Dominion-logo-design.png", "RULES", "rules.rtf")
			dialog.show_modal_to_window (current)
		end

	help
		-- Display the Help dialog.
	local
			dialog:  DO_USER_INFO_DIALOG
		do
			create dialog.make (Files_path+"wallpapers\Dominion-logo-design.png", "HELP", "help.rtf")
			dialog.show_modal_to_window (current)
		end

feature {EQA_TEST_SET} -- Implementation

	main_container: EV_FIXED
			-- Main container (contains all widgets displayed in this window)

	build_main_container_default
			-- Create and populate `default_main_container'.
		local

			image: EV_PIXMAP
		do

			create main_container
			create image.default_create
			image.set_with_named_file(Files_path+"wallpapers\backgroundBig.png")
			main_container.set_background_pixmap(image)

			-- ADD NEW GAME BUTTON TO THE MAIN CONTAINER
			-- create an EV_FIXED container for the "new game" button and set its events
			create new_game_area
			create new_game_pixmap_pointer
			create new_game_pixmap_pointer_in
			new_game_pixmap_pointer_in.set_with_named_file (Files_path+"game_buttons\newGameWhite.png")
			new_game_pixmap_pointer.set_with_named_file (Files_path+"game_buttons\newGameBlueSmall.png")		--cambiar la imagen
			new_game_area.set_background_pixmap (new_game_pixmap_pointer)
			new_game_area.pointer_enter_actions.extend (agent pointer_area(new_game_area,new_game_pixmap_pointer_in))
			new_game_area.pointer_leave_actions.extend (agent pointer_area(new_game_area,new_game_pixmap_pointer))
			new_game_area.pointer_button_release_actions.extend (agent request_new_game(?,?,?,?,?,?,?,?))
			main_container.extend_with_position_and_size (new_game_area, 440, 200, 150, 60)

			-- ADD JOIN GAME BUTTON TO THE MAIN CONTAINER
			-- create an EV_FIXED container for the "join game" button and set its events
			create join_game_area
			create join_game_pixmap_pointer
			create join_game_pixmap_pointer_in
			join_game_pixmap_pointer.set_with_named_file (Files_path+"game_buttons\joinGameSmall.png")	--cambiar la imagen
			join_game_pixmap_pointer_in.set_with_named_file (Files_path+"game_buttons\joinGameWhite.png")	--cambiar la imagen
			join_game_area.set_background_pixmap (join_game_pixmap_pointer)
			join_game_area.pointer_enter_actions.extend (agent pointer_area(join_game_area,join_game_pixmap_pointer_in))
			join_game_area.pointer_leave_actions.extend (agent pointer_area(join_game_area,join_game_pixmap_pointer))
			join_game_area.pointer_button_release_actions.extend (agent request_join_game(?,?,?,?,?,?,?,?))
			main_container.extend_with_position_and_size (join_game_area, 440, 380, 150, 60)

			-- ADD CREATE ONLINE GAME BUTTON TO THE MAIN CONTAINER
			-- create an EV_FIXED container for the "create online game" button and set its events
			create create_online_game_area
			create create_online_game_pixmap_pointer
			create create_online_game_pixmap_pointer_in
			create_online_game_pixmap_pointer.set_with_named_file (Files_path+"game_buttons\createGameSmall.png")	--cambiar la imagen
			create_online_game_pixmap_pointer_in.set_with_named_file (Files_path+"game_buttons\createGameWhite.png")	--cambiar la imagen
			create_online_game_area.set_background_pixmap (create_online_game_pixmap_pointer)
			create_online_game_area.pointer_enter_actions.extend (agent pointer_area(create_online_game_area,create_online_game_pixmap_pointer_in))
			create_online_game_area.pointer_leave_actions.extend (agent pointer_area(create_online_game_area,create_online_game_pixmap_pointer))
			create_online_game_area.pointer_button_release_actions.extend (agent request_new_online_game(?,?,?,?,?,?,?,?))
			main_container.extend_with_position_and_size (create_online_game_area, 440, 560, 150, 60)

		end

	-- the pointer is entering or leaving the area used as a button
	pointer_area (a_area: EV_FIXED; image:EV_PIXMAP)
	do
		a_area.set_background_pixmap (image)
	end


feature {EQA_TEST_SET} -- Implementation / Constants

		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits Bang!
	main_app: MAIN_WINDOW

	Window_title: STRING = "Dominion"
			-- Title of the window.

	Window_width: INTEGER = 1000
			-- Initial width for this window.

	Window_height: INTEGER = 700
			-- Initial height for this window.

	board: DO_BOARD
			-- Represent the board containing the mines

	settings: DO_SETTINGS
			--Settings for the game

		-- the new game button
	new_game_area: EV_FIXED
	new_game_pixmap_pointer: EV_PIXMAP
	new_game_pixmap_pointer_in: EV_PIXMAP

		-- the join game button
	join_game_area: EV_FIXED
	join_game_pixmap_pointer: EV_PIXMAP
	join_game_pixmap_pointer_in: EV_PIXMAP

		-- the create online game button
	create_online_game_area: EV_FIXED
	create_online_game_pixmap_pointer: EV_PIXMAP
	create_online_game_pixmap_pointer_in: EV_PIXMAP

feature {DO_GRAPHIC_CARD}	--that class needs this references to send the message

	server: DO_SERVER
			--Server of the online gaem

	client: DO_CLIENT
			--client that cominucates with server of the online game
			--when void and server /= Void, the online game was created by this computer
end
