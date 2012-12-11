note
	description: "Summary description for {BS_LOBBY_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_LOBBY_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	BS_GUI_COLORS
	BS_GFX
		undefine
			copy,
			default_create
		end

create
	make, rem_player

feature {NONE} -- Initialization

	make(a_main_ui : MAIN_WINDOW)
		do
			main_ui := a_main_ui

			make_with_title("Blokus Game Lobby")
			player_name_valid := True
			new_player_type := 0
			num_players := 0
			create player_infos.make
		end

	initialize
		local
			l_px : EV_PIXMAP
		do
			Precursor {EV_TITLED_WINDOW}

			set_size(640, 300)

			close_request_actions.extend (agent request_close_window)

			create con_main

			create lbl_title.make_with_text ("Blokus Game")
			lbl_title.align_text_left
			lbl_title.font.set_height (21)
			lbl_title.set_foreground_color (col_brown)
			con_main.extend_with_position_and_size(lbl_title, 10, 5, 640, 40)

			create btn_add_player.make_with_text_and_action ("<- Add", agent add_player)
			con_main.extend_with_position_and_size(btn_add_player, 320, 50, 60, 30)


			create btn_rem_player.make_with_text_and_action ("Rem ->", agent rem_player_2)
			con_main.extend_with_position_and_size(btn_rem_player, 320, 90, 60, 30)
			btn_rem_player.disable_sensitive

			create btn_new_player_type
			create l_px
			l_px.set_with_named_file (get_gfx_file_name("human_player_50x50"))
			btn_new_player_type.set_pixmap (l_px)
			btn_new_player_type.select_actions.extend (agent toggle_new_player_type)
			con_main.extend_with_position_and_size(btn_new_player_type, 390, 40, 50, 50)

			create lbl_new_player_name.make_with_text ("Name: ")
			lbl_new_player_name.align_text_left
			con_main.extend_with_position_and_size(lbl_new_player_name, 450, 55, 50, 20)

			create txf_new_player_name.make_with_text ("Player1")
			txf_new_player_name.change_actions.extend (agent validate_player_name)
			con_main.extend_with_position_and_size(txf_new_player_name, 500, 55, 110, 20)

			create btn_start_game.make_with_text_and_action ("PLAY", agent start_playing)
			btn_start_game.disable_sensitive
			con_main.extend_with_position_and_size(btn_start_game, 430, 130, 100, 30)

			create btn_abort.make_with_text_and_action ("Abort Game", agent quit_to_welcome_screen)
			con_main.extend_with_position_and_size (btn_abort, 430, 180, 100, 30)

			put (con_main)

		end

feature {BS_LAUNCHER, BS_GAME_WINDOW} -- Interface for Launcher

	set_up_game
		local
			l_dlg_welcome : BS_WELCOME_WINDOW
			l_dlg_new_game : BS_NEW_GAME_WINDOW
			l_dlg_join_game : BS_JOIN_GAME_WINDOW
			l_action : STRING
			l_user_proceeding : BOOLEAN
		do

			from
				l_user_proceeding := False
			until
				l_user_proceeding = True
			loop
				create l_dlg_welcome.make
				l_dlg_welcome.show_modal_to_window(Current)

				l_action := l_dlg_welcome.get_user_action

				if l_action.is_equal ("NEW_GAME") then
					create l_dlg_new_game.make
					l_dlg_new_game.show_modal_to_window (Current)
					if l_dlg_new_game.has_user_cancelled = False then
						set_up_new_game(l_dlg_new_game.game_name, "localhost")
						l_user_proceeding := True
					end
					-- Else return to welcome dialog

				elseif l_action.is_equal ("JOIN_GAME") then
					create l_dlg_join_game.make
					l_dlg_join_game.show_modal_to_window (Current)
					if l_dlg_join_game.has_user_cancelled = False then
						join_game(l_dlg_join_game.hostname, l_dlg_join_game.port)
						l_user_proceeding := True
					end

					-- Else return to welcome dialog
				else -- User clicked on Quit or [X], so go back to DOSE main menu
					close_window
					l_user_proceeding := True
				end
			end
		end

feature -- Interface for LOGIC component

	update_players_list(players : ARRAY[BS_PLAYER])
		require
			players_size_small_enough: players.count <= 4
		do
		end

feature {NONE} -- User actions

	request_close_window
			-- The user wants to close the window
		local
			l_dlg_confirm: EV_CONFIRMATION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to close Blokus?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				close_window
			end
		end

	toggle_new_player_type
		local
			l_pixmap_player_type : EV_PIXMAP
		do
			new_player_type := new_player_type + 1
			if new_player_type = 4 then
				new_player_type := 0
			end

			create l_pixmap_player_type

			inspect new_player_type
			when 0 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("human_player_50x50"))
			when 1 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("ai_player_easy_50x50"))
			when 2 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("ai_player_medium_50x50"))
			when 3 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("ai_player_hard_50x50"))
			else

			end

			btn_new_player_type.set_pixmap (l_pixmap_player_type)
		end

	add_player
		local
			l_add_success : BOOLEAN
			l_new_player : BS_PLAYER
			l_msg_dialog : EV_MESSAGE_DIALOG
			l_player_info : BS_LOBBY_PLAYER_INFO
			l_player_id_and_color : INTEGER
			l_p_name : STRING
		do
			-- TODO: replace 0s by current number of players
			check_can_add_player
			l_player_id_and_color := 1 + player_infos.count
			l_p_name :=  txf_new_player_name.text
			btn_rem_player.disable_sensitive

			--create l_new_player.make_with_name (l_player_id_and_color, l_player_id_and_color, l_p_name)
			--create l_new_player.make (l_player_id_and_color, l_player_id_and_color)
			l_add_success := game.add_player (l_new_player)
			if l_add_success then
				create l_player_info.make_with_info (new_player_type, l_p_name, "local")
				num_players := num_players +1
				player_infos.extend (l_player_info)
				con_main.extend_with_position_and_size (l_player_info.get_container, 0, 45 + 52*(player_infos.count-1), 320, 50)
				inspect num_players
				when 1 then
					create txf_new_player_name.make_with_text ("Player2")
				when 2 then
					create txf_new_player_name.make_with_text ("Player3")
				when 3 then
					create txf_new_player_name.make_with_text ("Player4")
				else
					create txf_new_player_name.make_with_text ("No More Player")
				end
				txf_new_player_name.change_actions.extend (agent validate_player_name)
				con_main.extend_with_position_and_size(txf_new_player_name, 500, 55, 110, 20)

			else
				create l_msg_dialog.make_with_text ("Could not add player.")
				l_msg_dialog.show_modal_to_window (Current)
			end

			if player_infos.count >= 4 then
				btn_add_player.disable_sensitive
			end

			if player_infos.count = 2 or player_infos.count = 4 then
				-- TODO: check other conditions, too
				btn_start_game.enable_sensitive
			else
				btn_start_game.disable_sensitive
			end
		end

	rem_player
		do
			--btn_rem_player.enable_sensitive

		end

	rem_player_2
		do
			--btn_rem_player.enable_sensitive

		end
	start_playing
		do
			open_game_window
		end

	quit_to_welcome_screen
		local
			l_dlg_confirm: EV_CONFIRMATION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to abort the game?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				reset_lobby
				set_up_game
			end
		end

feature {NONE} -- Input validation

validate_player_name
	do
		if txf_new_player_name.text_length = 0 or txf_new_player_name.text_length > 15 then
			player_name_valid := False
			btn_add_player.disable_sensitive
			txf_new_player_name.set_background_color (col_reddish)
		else
			btn_add_player.enable_sensitive
			player_name_valid := True
			txf_new_player_name.set_background_color (col_white)
			check_can_add_player
		end
	end

check_can_add_player
	do
	-- want to also check against list of currently defined players but dont know how this code is not checked unless name is changed
		if not player_infos.is_empty then

		end
	end

feature {NONE} -- Implementation

	reset_lobby
		do
			-- Remove BS_LOBBY_PLAYER_INFO's, recreate game and game connection need to update the lobby screen also somehow
			--should do some destroy initialize but dot kn ow how so am hard coding stuff now
			create txf_new_player_name.make_with_text ("Player1")
			txf_new_player_name.change_actions.extend (agent validate_player_name)
			con_main.extend_with_position_and_size(txf_new_player_name, 500, 55, 110, 20)
			num_players := 0
			player_infos.wipe_out
			game := void
			btn_start_game.enable_sensitive
		end

	set_up_new_game(a_game_name, a_server : STRING)
		require
			game_name_valid: a_game_name.count > 0
			server_valid: a_server.count > 0
		local
			l_localhost : NETWORK_SOCKET_ADDRESS
		do
			lbl_title.set_text ("Blokus Game " + a_game_name + "@" + a_server)
			-- connect to local game (not working yet)
--			create l_localhost.make_localhost(8000)
--			create game_connection.make(l_localhost)
			create game.make
		end

	join_game(a_hostname : STRING; a_network_port : INTEGER)
		require
			valid_hostname: a_hostname.count > 0
			valid_port: 1024 <= a_network_port and a_network_port <= 65535
		local
			l_socket_address : NETWORK_SOCKET_ADDRESS
		do
			-- TODO: connect to remote game
			create l_socket_address.make_from_hostname_and_port (a_hostname, a_network_port)
			lbl_title.set_text ("Blokus Game " + "@" + a_hostname)
		end

	open_game_window
		do
			-- TODO: changes; maybe use other constructor
			create game_window.make(Current, game_connection)
			-- Hide lobby while playing. Since Blokus will return to the lobby
			-- before quitting, we do not destroy the lobby window.
			hide
			game_window.show

		end

	close_window
		do
			-- Restore the main UI which is currently minimized
			if attached main_ui then
				-- TODO: STRANGE: the main window is not minimized on starting Blokus,
				--                however when we want to return from Blokus...
				main_ui.restore
				main_ui.remove_reference_to_game (Current)
			end
				-- Destroy the window
			destroy
		end

	-- GUI: other windows
	main_ui : MAIN_WINDOW
	game_window : BS_GAME_WINDOW
	-- GUI: controls
	con_main : EV_FIXED
	lbl_title : EV_LABEL
	btn_new_player_type : EV_BUTTON
	lbl_new_player_name : EV_LABEL
	txf_new_player_name : EV_TEXT_FIELD
	btn_add_player : EV_BUTTON
	btn_rem_player : EV_BUTTON
	btn_start_game : EV_BUTTON
	btn_abort : EV_BUTTON
	player_infos : LINKED_LIST[BS_LOBBY_PLAYER_INFO]
	-- other GUI
	new_player_type : INTEGER
	num_players : INTEGER

	-- Logic related objects
	game : BS_GAME
	game_connection : BS_NET_GAME_CONNECTION

	-- Validation
	player_name_valid : BOOLEAN

invariant
	new_player_type_valid: new_player_type >= 0 and new_player_type <= 3
end
