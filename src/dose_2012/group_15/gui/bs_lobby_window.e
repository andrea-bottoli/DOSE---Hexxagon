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

inherit {NONE}
	BS_NET_COMMAND_LIST
	export {NONE} all
	undefine
		copy,
		default_create
	end
--	EXECUTION_ENVIRONMENT
--	rename put as putshit
--	export {NONE} ALL
--	undefine
--		default_create,
--		copy
--	end

create
	make

feature {NONE} -- Initialization

	make(a_main_ui : MAIN_WINDOW)
		do
			main_ui := a_main_ui

		--	io.put_string("Don't for get to remove the debug code!")
		--	player_list := create {ARRAY [ TUPLE [ id: INTEGER; name : STRING; type: INTEGER ]]}.make_filled ([1, "Goofy", 0], 1, 1)

			make_with_title("Blokus Game Lobby")
			player_name_valid := True
			new_player_type := 0
			num_players := 0
			next_player := 1
			create player_list.make_empty
			create player_info.make
			create command_executed_semaphore.make (0)
			--create player_infos.make
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

			create btn_add_player.make_with_text_and_action ("<- Add", agent add_button_handler)
			con_main.extend_with_position_and_size(btn_add_player, 320, 50, 60, 30)


--			create btn_rem_player.make_with_text_and_action ("Rem ->", agent rem_player_2)
--			con_main.extend_with_position_and_size(btn_rem_player, 320, 90, 60, 30)
--			btn_rem_player.disable_sensitive

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
			con_main.extend_with_position_and_size(txf_new_player_name, 500, 55, 150, 20)

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
			error_dialog: EV_WARNING_DIALOG
		do
			clear_player_list

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

						--create server first
						create game.make_with_server_parameters (l_dlg_new_game.network_port, 4, 42)
						if game.listening_successful then
							create game_connection.make ("localhost", l_dlg_new_game.network_port, 42)
							set_up_new_game(l_dlg_new_game.game_name, "localhost")
							create game_connection_listener.make (game_connection, agent game_connection_read_command_handler)
							game_connection_listener.launch()
							l_user_proceeding := True
						else
							create error_dialog.make_with_text ("Could not listen on the specified port. Please make sure that it is not in use by another process.")
							error_dialog.show_modal_to_window (current)
							-- And we don't set l_user_proceeding to true.
						end
					end
					-- Else return to welcome dialog

				elseif l_action.is_equal ("JOIN_GAME") then


					-- create l_dlg_confirm.make_with_text ("Are you sure you want to abort the game and return to the game lobby?")

--					create error_dialog.make_with_text ("Error")
--					error_dialog.show_modal_to_window (current)

					create l_dlg_join_game.make
					l_dlg_join_game.show_modal_to_window (Current)
					if l_dlg_join_game.has_user_cancelled = False then
						-- join_game(l_dlg_join_game.hostname, l_dlg_join_game.port)

						create game_connection.make (l_dlg_join_game.hostname, l_dlg_join_game.port, -1)

						if game_connection.is_accepted then
							set_up_new_game("Blokus game", l_dlg_join_game.hostname) -- There isn't really a way for knowing the game name in this case.
							create game_connection_listener.make (game_connection, agent game_connection_read_command_handler)
							game_connection_listener.launch()
							l_user_proceeding := True
						else
							create error_dialog.make_with_text ("Could not connect to the server. Please make sure that the host name or address and the port are correct.")
							error_dialog.show_modal_to_window (current)
							-- And we don't set l_user_proceeding to true.
						end


					end

					-- Else return to welcome dialog
				else -- User clicked on Quit or [X], so go back to DOSE main menu
					close_window
					l_user_proceeding := True
				end
			end
		end

feature {NONE} -- User actions

	request_close_window
			-- The user wants to close the window
		local
			l_dlg_confirm: EV_QUESTION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to close Blokus?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_yes) then
				game.shutdown()
				close_window()
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

			if next_player = 999 then
				next_player:= 1
			end

			inspect new_player_type
			when 0 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("human_player_50x50"))
				txf_new_player_name.set_text ("Player" + next_player.out)
			when 1 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("ai_player_easy_50x50"))
				txf_new_player_name.set_text ("AIEasyPlayer" +next_player.out)
			when 2 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("ai_player_medium_50x50"))
				txf_new_player_name.set_text ("AIMediumPlayer" +next_player.out)
			when 3 then
				l_pixmap_player_type.set_with_named_file (get_gfx_file_name("ai_player_hard_50x50"))
				txf_new_player_name.set_text ("AIHardPlayer" + next_player.out)
			else

			end
			btn_new_player_type.set_pixmap (l_pixmap_player_type)
		end

	add_button_handler
		local
			l_add_success : BOOLEAN
			l_new_player : BS_PLAYER
			l_msg_dialog : EV_MESSAGE_DIALOG
			l_p_name : STRING
		do
			l_p_name :=  txf_new_player_name.text
			--btn_rem_player.disable_sensitive
			game_connection.send_add_player(l_p_name, new_player_type)

			if next_player = 999 then
				next_player:= 1
				else if next_player >= num_players then
					next_player := next_player +1
					--next_player:=  num_players +1
					else
					--next_player:= num_players
					next_player:=  num_players +2
					end
			 end

			-- next_player:=  num_players +2
--			if next_player > num_players then
--				next_player:=  next_player +1
--				else next_player:= num_players
--				end


			if num_players < 3 then
			inspect new_player_type
			when 0 then
				txf_new_player_name.set_text ("Player" + next_player.out)
			when 1 then
				txf_new_player_name.set_text ("AIEasyPlayer" + next_player.out)
			when 2 then
				txf_new_player_name.set_text ("AIMediumPlayer" +next_player.out)
			when 3 then
				txf_new_player_name.set_text ("AIHardPlayer"  +next_player.out)
			else
				txf_new_player_name.set_text ("")
			end
						else
				txf_new_player_name.set_text ("")
				btn_add_player.disable_sensitive
			end

			--create l_new_player.make_with_name (l_player_id_and_color, l_player_id_and_color, l_p_name)
			--create l_new_player.make (l_player_id_and_color, l_player_id_and_color)
			-- l_add_success := game.add_player (l_new_player)

			---------------- From now on, it's shit.

--			if l_add_success then
--				create l_player_info.make_with_info (new_player_type, l_p_name, "local", agent remove_button_handler)
--				num_players := num_players +1
--				player_infos.extend (l_player_info)
--				con_main.extend_with_position_and_size (l_player_info.get_container, 0, 45 + 52*(player_infos.count-1), 320, 50)
--				inspect num_players
--				when 1 then
--					create txf_new_player_name.make_with_text ("Player2")
--				when 2 then
--					create txf_new_player_name.make_with_text ("Player3")
--				when 3 then
--					create txf_new_player_name.make_with_text ("Player4")
--				else
--					create txf_new_player_name.make_with_text ("No More Player")
--				end
--				txf_new_player_name.change_actions.extend (agent validate_player_name)
--				con_main.extend_with_position_and_size(txf_new_player_name, 500, 55, 110, 20)

--			else
--				create l_msg_dialog.make_with_text ("Could not add player.")
--				l_msg_dialog.show_modal_to_window (Current)
--			end

--			if player_infos.count >= 4 then
--				btn_add_player.disable_sensitive
--			end

--			if player_infos.count = 2 or player_infos.count = 4 then
--				-- TODO: check other conditions, too
--				btn_start_game.enable_sensitive
--			else
--				btn_start_game.disable_sensitive
--			end
		end

	remove_button_handler(a_id : INTEGER)
		do
			game_connection.send_remove_player (a_id)
		end


	start_playing
		local
			l_msg_dialog : EV_MESSAGE_DIALOG
		do
			game_connection.send_start_game ()
			-- open_game_window
		end

	quit_to_welcome_screen
		local
			l_dlg_confirm: EV_CONFIRMATION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to leave the game?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				if attached {BS_NET_GAME_CONNECTION} game_connection as g then
					if g.is_accepted() then
						g.disconnect()
					end
				end
				-- game.shutdown()
			end
		end

feature {NONE} -- Input validation

validate_player_name
	do
		if (txf_new_player_name.text_length = 0 or txf_new_player_name.text_length > 15) or else not check_can_add_player(txf_new_player_name.text) then
			player_name_valid := False
			btn_add_player.disable_sensitive
			txf_new_player_name.set_background_color (col_reddish)
		else
			btn_add_player.enable_sensitive
			player_name_valid := True
			txf_new_player_name.set_background_color (col_white)
		end
	end

check_can_add_player(new_name: STRING) : BOOLEAN
	local
		i: INTEGER
	do
	-- want to also check against list of currently defined players but dont know how this code is not checked unless name is changed
		result := true
		from
			i := 1
		until
			i > player_list.count
		loop
			result := result and (player_list.item(i).name /~ new_name)
			i := i + i
		end
	end

feature {NONE} -- Game connection

	game_connection_read_command_handler(a_command: BS_NET_COMMAND)
	local
		x: EV_SHARED_APPLICATION
	do
		create x
		x.ev_application.do_once_on_idle (agent process_command (a_command)) -- This will later, asynchronously, return the token to the semaphore.
		command_executed_semaphore.wait() -- Not returning until it has been executed.
	end

process_command(a_command : BS_NET_COMMAND)
	require
		command_not_void: a_command /= void
	local
		dev_ex: DEVELOPER_EXCEPTION
	do
		inspect a_command.command
			when command_updateplayerlist then
				update_player_list(a_command.player_list)
			when command_startgame then
				open_game_window()
				game_connection_listener.set_command_received_agent (agent game_window.game_connection_read_command_handler)
			when command_closing then
				reset_lobby()
				set_up_game()
			else
				create dev_ex
				dev_ex.set_message ("Unexpected command received in the lobby.")
				dev_ex.raise()
		end
		command_executed_semaphore.post()
	rescue
		command_executed_semaphore.post()
	end

feature {NONE} -- Implementation

	clear_player_list()
		local
			j: INTEGER
			k: INTEGER
		do
			from j := 1 until j > player_info.count
			loop
				k := con_main.index_of (player_info.at (j), 1)
				con_main.go_i_th (k)
				con_main.remove
				j := j + 1
			end
			player_info.wipe_out
			-- wipe out and all all over again:
		end

	update_player_list(new_list : ARRAY [ TUPLE [ id: INTEGER; name : STRING; type: INTEGER ]])
		local
			j: INTEGER
			k: INTEGER
			l_id: INTEGER
			l_name: STRING
			l_type: INTEGER
			--l_player_info: BS_LOBBY_PLAYER_INFO
			l_c: CURSOR
		do
			-- This is the external interface this will be automatically invoked when the server sends such a command
			-- I have to here clear out all the current players and put in the ones from my new list
			clear_player_list()

			player_list := new_list
			num_players := new_list.count

			create player_info.make

			from j := 1 until j > new_list.count
			loop
				l_id := new_list.at (j).id
				l_name := new_list.at (j).name
				l_type := new_list.at (j).type

				-- does not work yet?
				create_and_show_player_info(j, l_id, l_name, l_type)

				j := j + 1
			end

			if num_players = 4 then
				btn_add_player.disable_sensitive
			else
				validate_player_name
			end

			if num_players = 2 Or num_players = 4 then
				btn_start_game.enable_sensitive
			else
				btn_start_game.disable_sensitive
			end
		end

	create_and_show_player_info(a_pos, a_player_id: INTEGER; a_name: STRING; a_player_type : INTEGER)
		local
			l_con: EV_FIXED
			l_pix_player_type : EV_PIXMAP
			l_lbl_player_name : EV_LABEL
			l_lbl_machine_info : EV_LABEL
			l_btn_player_type : EV_BUTTON
			l_btn_rem_player : EV_BUTTON
		do
			create l_con
			create l_btn_rem_player.make_with_text_and_action ("Rem ->", agent remove_button_handler (a_player_id))

			create l_pix_player_type
			inspect a_player_type
				when 0 then
					l_pix_player_type.set_with_named_file (get_gfx_file_name("human_player_50x50"))
				when 1 then
					l_pix_player_type.set_with_named_file (get_gfx_file_name("ai_player_easy_50x50"))
				when 2 then
					l_pix_player_type.set_with_named_file (get_gfx_file_name("ai_player_medium_50x50"))
				when 3 then
					l_pix_player_type.set_with_named_file (get_gfx_file_name("ai_player_hard_50x50"))
			end

			create l_lbl_player_name.make_with_text (a_name)
			l_lbl_player_name.align_text_vertical_center
			l_lbl_player_name.align_text_left

			l_con.set_minimum_size(320, 50)
			l_con.set_background_color (col_white)
			l_con.extend_with_position_and_size(l_pix_player_type, 0, 0, 50, 50)
			l_con.extend_with_position_and_size (l_lbl_player_name, 55, 20, 120, 20)
			l_con.extend_with_position_and_size(l_btn_rem_player, 240, 10, 60, 30)

			con_main.extend_with_position_and_size (l_con, 0, 45 + 52*(a_pos-1), 320, 50)
			player_info.extend (l_con)
		end

	reset_lobby
		do
			clear_player_list()

			-- Remove BS_LOBBY_PLAYER_INFO's, recreate game and game connection need to update the lobby screen also somehow
			--should do some destroy initialize but dot kn ow how so am hard coding stuff now
			create txf_new_player_name.make_with_text ("Player1")
			txf_new_player_name.change_actions.extend (agent validate_player_name)
			con_main.extend_with_position_and_size(txf_new_player_name, 500, 55, 110, 20)
			num_players := 0
			player_info.wipe_out
			if attached {BS_GAME} game as g then
				-- #WORKINGPOINT
			end
			game := void
			btn_start_game.enable_sensitive
		end

	set_up_new_game(a_game_name, a_server : STRING)
		require
			game_name_valid: a_game_name.count > 0
			server_valid: a_server.count > 0
		do
			lbl_title.set_text ("Blokus Game " + a_game_name + "@" + a_server)
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
			create game_window.make(Current, game_connection, game_connection_listener, player_list)
			main_ui.add_reference_to_game (game_window)
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
	--btn_rem_player : EV_BUTTON
	btn_start_game : EV_BUTTON
	btn_abort : EV_BUTTON
	--player_infos : LINKED_LIST[BS_LOBBY_PLAYER_INFO]
	-- other GUI
	new_player_type : INTEGER
	num_players : INTEGER
	next_player : INTEGER
	-- one more than num_players

	-- Logic related objects
	game : BS_GAME
	game_connection : BS_NET_GAME_CONNECTION
	game_server : BS_NET_SERVER
	game_connection_listener: BS_GAME_CONNECTION_LISTENER
	command_executed_semaphore: SEMAPHORE


	command_list: BS_NET_COMMAND_LIST

	player_list: ARRAY[ TUPLE [id: INTEGER; name: STRING; type: INTEGER]]
	player_info: LINKED_LIST[EV_FIXED]

	-- Validation
	player_name_valid : BOOLEAN

invariant
	new_player_type_valid: new_player_type >= 0 and new_player_type <= 3
end
