note
	description: "Summary description for {BS_GAME_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_GAME_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	EV_FONT_CONSTANTS
		undefine
			copy,
			default_create
		end
	BS_GFX
		undefine
			copy,
			default_create
		end
	BS_GUI_COLORS
	BS_NET_COMMAND_LIST
		undefine
			copy,
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make(a_lobby : BS_LOBBY_WINDOW; a_game_connection: BS_NET_GAME_CONNECTION; a_game_connection_listener: BS_GAME_CONNECTION_LISTENER; a_player_list: ARRAY[TUPLE [id: INTEGER; name: STRING; type: INTEGER]])
		do
			lobby := a_lobby
			game_connection := a_game_connection
			game_connection_listener := a_game_connection_listener
			player_list := a_player_list
			make_with_title("Blokus")

			create command_executed_semaphore.make(0)
		end

	initialize
		local
			i : INTEGER
			lbl : EV_LABEL
			con : EV_FIXED
		do
			Precursor{EV_TITLED_WINDOW}

			set_size(800, 600)

			create con_main
			--con_main.set_background_color (col_light_blue)

			current_color := 0

			init_field
			init_log

			create pix_logo
			pix_logo.set_with_named_file (get_gfx_file_name ("logo"))
			con_main.extend (pix_logo)
			con_main.set_item_position (pix_logo, 520, 5)
			create lbl_help.make_with_text ("Just drag the tiles onto the field! To rotate a tile, left click on it; to flip it, right click on it.")
			lbl_help.align_text_left
			con_main.extend_with_position_and_size (lbl_help, 370, 250, 470, 30)

			create con_color_info.make_filled (Void, 1, n_colors)
			create lbl_player_name.make_filled (Void, 1, n_colors)
			create lbl_score.make_filled (Void, 1, n_colors)
			create lbl_remaining_time.make_filled (Void, 1, n_colors)
			from
				i := 1
			until
				i > n_colors
			loop
				create con
				create lbl.make_with_text (get_player_name (get_player_of_color(i)))
				lbl.align_text_left
				lbl.font.set_height_in_points (12)
				con.extend_with_position_and_size (lbl, 0, 0, 140, 20)
				lbl_player_name.put (lbl, i)
				create lbl.make_with_text ("0")
				lbl.align_text_right
				lbl.font.set_height_in_points (12)
				con.extend_with_position_and_size (lbl, 150, 0, 40, 20)
				lbl_score.put (lbl, i)
				create lbl
				lbl.align_text_left
				lbl.font.set_height_in_points (10)
				lbl.set_foreground_color (col_brown)
				con.extend_with_position_and_size (lbl, 200, 0, 150, 20)
				lbl_remaining_time.put (lbl, i)
				con_main.extend_with_position_and_size (con, 400, 90 + 30*i, 480, 40)
				con_color_info.put (con, i)
				i := i + 1
			end

			lbl_player_name.at (1).set_foreground_color (col_blue)
			lbl_player_name.at (2).set_foreground_color (col_yellow)
			lbl_player_name.at (3).set_foreground_color (col_red)
			lbl_player_name.at (4).set_foreground_color (col_green)

			create btn_pass.make_with_text_and_action ("Pass Move", agent confirm_or_pass)
			con_main.extend_with_position_and_size (btn_pass, 400, 300, 80, 20)
			create btn_surrender.make_with_text_and_action ("Surrender", agent surrender)
			con_main.extend_with_position_and_size (btn_surrender, 500, 300, 80, 20)
			create btn_rematch.make_with_text_and_action ("Request Rematch", agent request_rematch)
			con_main.extend_with_position_and_size (btn_rematch, 600, 300, 100, 20)
			btn_pass.disable_sensitive
			btn_surrender.disable_sensitive
			btn_rematch.hide

			create lbl_winner
			lbl_winner.font.set_height_in_points (22)
			lbl_winner.set_foreground_color (col_brown)
			lbl_winner.set_background_color (col_light_blue)
			con_main.extend_with_position_and_size (lbl_winner, 400, 500, 420, 60)
			lbl_winner.hide

			put (con_main)

			close_request_actions.extend (agent ask_for_quitting)
		end

	init_field
		local
			l_atom : BS_TILE_ATOM
			l_row, l_column : INTEGER
			l_pixmap : EV_PIXMAP
			l_bg : EV_MODEL_PICTURE
		do
			create con_field

			create l_pixmap
			l_pixmap.set_with_named_file (get_gfx_file_name("test-bg"))
			create l_bg.make_with_pixmap (l_pixmap)
			create game_world
			game_world.extend (l_bg)

			create field_atoms.make_filled (Void, 20, 20)
			-- position them right:
			from
				l_row := 1
			until
				l_row > 20
			loop
				from
					l_column := 1
				until
					l_column > 20
				loop
					create l_atom.make (0)
					game_world.extend (l_atom.get_model_picture)
					l_atom.set_pos (16*l_column, 16*l_row)
					field_atoms.put (l_atom, l_row, l_column)
					l_column := l_column + 1
				end
				l_row := l_row + 1
			end

			init_unplayed_pieces

			create game_area
			create projector.make_with_buffer (game_world, create {EV_PIXMAP}.make_with_size (360, 600), game_area)
			con_main.extend_with_position_and_size (game_area, 0, 0, 360, 600)
			projector.project
		end

	init_unplayed_pieces
		local
			j : INTEGER
			k : INTEGER
			l_hidden : BOOLEAN
			l_tile_set: BS_GUI_TILE_SET
			l_tile_array : LINKED_LIST[BS_DRAGGABLE_TILE]
		do
			create abstract_tiles.make_filled(Void, 1, n_colors)

			from
				j := 1
			until
				j > n_colors
			loop
				create l_tile_set.make_with_color(j)
				abstract_tiles.put (l_tile_set.get_tiles, j)

				j := j + 1
			end
		end

	init_log
		do
			create con_log
			create lbl_log.make_with_text ("Log")
			lbl_log.align_text_left
			lbl_log.font.set_height_in_points (12)
			con_log.extend_with_position_and_size (lbl_log, 5, 5, 50, 30)
			create lst_log
			con_log.extend_with_position_and_size (lst_log, 5, 35, 360, 230)
			con_main.extend_with_position_and_size (con_log, 420, 320, 380, 280)
		end

feature {BS_LOBBY_WINDOW} -- Game connection. Needs to be available to the lobby for setting it as a target for the game connection listener.

	game_connection_read_command_handler(a_command: BS_NET_COMMAND)
	local
		x: EV_SHARED_APPLICATION
	do
		create x
		x.ev_application.do_once_on_idle (agent process_command (a_command)) -- This will later, asynchronously, return the token to the semaphore.
		command_executed_semaphore.wait() -- Not returning until it has been executed.
	end

	process_command(a_command: BS_NET_COMMAND)
		local
			l_command : BS_NET_COMMAND
			l_command_type : BS_NET_COMMAND
			l_win_dialog: EV_MESSAGE_DIALOG
		do
			l_command := a_command

			if l_command /= Void then
				inspect l_command.command
					when command_getmove then
						enable_draggable_tiles
						add_log_entry ("You may play now!")
						if not last_move_bad then
							seconds_remaining := 60
							create play_timeout.make_with_interval (1000)
						end
						play_timeout.actions.extend (agent timer_thread_action)
						lbl_remaining_time.at (current_color).set_text (seconds_remaining.out + " seconds remaining")
						last_move_bad := False
					when command_playermakesmove then
						if l_command.move.get_action = 1 then
							draw_move(l_command.move)
						elseif l_command.move.get_action = 2 then
							passing(l_command.player_id)
						elseif l_command.move.get_action = 3 then
							surrendering(l_command.player_id)
						end
					when command_removetilefromplayer then
						remove_tile(l_command.color_id, l_command.tile)
					when command_badmove then
						last_move_bad := True
						add_log_entry ("This move is not allowed! Please try again.")
						tile_of_last_move.reset_position_to_initial
						tile_of_last_move.set_draggable
						--enable_draggable_tiles
					when command_updatescores then
						update_scores(l_command.score_list)
					when command_printlogmessage then
						add_log_entry(l_command.message)
					when command_setturn then
						set_turn_to_player(l_command.color_id, l_command.player_id)
					when command_announcevictory then
						announce_victory(l_command.player_id)
					when command_startgame then
						start_new_game()
					when command_closing then
						closing_command_received
				end
			end
			command_executed_semaphore.post()
		rescue
			command_executed_semaphore.post()
		end

feature -- Graphics and drawing

	enable_draggable_tiles
		local
			j : INTEGER
		do
			from
				j := 1
			until
				j > unplayed_tiles.count
			loop
				-- do not disable tiles that have already been played
				if unplayed_tiles.at(j).draggable then
					unplayed_tiles.at (j).enable_moving
				end

				j := j + 1
			end

			btn_pass.enable_sensitive
			btn_surrender.enable_sensitive

			projector.project

			active_turn := True
		end

	disable_draggable_tiles
		local
			j : INTEGER
		do
			active_turn := False

			from
				j := 1
			until
				j > unplayed_tiles.count
			loop
				-- do not disable tiles that have already been played
				if unplayed_tiles.at(j).draggable then
					unplayed_tiles.at (j).disable_moving
				end

				j := j + 1
			end

			btn_pass.disable_sensitive
			btn_surrender.disable_sensitive

			projector.project
		end

	show_draggable_tiles(a_color: INTEGER)
		local
			j : INTEGER
		do
			create unplayed_tiles.make

				-- 1
				draw_unplayed_tile (abstract_tiles.at (a_color).at (1), 10, 10)
				-- 2
				draw_unplayed_tile (abstract_tiles.at (a_color).at (2), 50, 10)
				-- 3
				draw_unplayed_tile (abstract_tiles.at (a_color).at (3), 100, 10)
				-- 4
				draw_unplayed_tile (abstract_tiles.at (a_color).at (4), 150, 10)
				-- 5
				draw_unplayed_tile (abstract_tiles.at (a_color).at (5), 220, 10)
				-- 6
				draw_unplayed_tile (abstract_tiles.at (a_color).at (6), 270, 10)
				-- 7
				draw_unplayed_tile (abstract_tiles.at (a_color).at (7), 10, 70)
				-- 8
				draw_unplayed_tile (abstract_tiles.at (a_color).at (8), 80, 70)
				-- 9
				draw_unplayed_tile (abstract_tiles.at (a_color).at (9), 150, 70)
				--10
				draw_unplayed_tile (abstract_tiles.at (a_color).at (10), 220, 70)
				--11
				draw_unplayed_tile (abstract_tiles.at (a_color).at (11), 295, 70)
				--12
				draw_unplayed_tile (abstract_tiles.at (a_color).at (12), 10, 130)
				--13
				draw_unplayed_tile (abstract_tiles.at (a_color).at (13), 80, 130)
				--14
				draw_unplayed_tile (abstract_tiles.at (a_color).at (14), 150, 130)
				--15
				draw_unplayed_tile (abstract_tiles.at (a_color).at (15), 230, 130)
				--16
				draw_unplayed_tile (abstract_tiles.at (a_color).at (16), 310, 130)
				--17
				draw_unplayed_tile (abstract_tiles.at (a_color).at (17), 10, 200)
				--18
				draw_unplayed_tile (abstract_tiles.at (a_color).at (18), 70, 200)
				--19
				draw_unplayed_tile (abstract_tiles.at (a_color).at (19), 130, 200)
				--20
				draw_unplayed_tile (abstract_tiles.at (a_color).at (20), 190, 200)
				--21
				draw_unplayed_tile (abstract_tiles.at (a_color).at (21), 270, 200)

			projector.project
		end

	hide_draggable_tiles
		local
			j: INTEGER
			k: INTEGER
		do
			from
				j := 1
			until
				j > unplayed_tiles.count
			loop
				k := game_world.index_of (unplayed_tiles.at (j), 1)
				game_world.go_i_th (k)
				game_world.remove

				j := j + 1
			end

			projector.project
		end

	draw_move(a_move : BS_MOVE)
		local
			l_pos : BS_POSITION
			l_tile : BS_DRAGGABLE_TILE
		do
			l_pos := a_move.get_position
			create l_tile.make_fixed (a_move.get_tile, 16*l_pos.x, 16*l_pos.y)
			game_world.extend (l_tile)

			projector.project
		end

	find_nearest_field_position (a_window_x, a_window_y : INTEGER) : BS_POSITION
		local
			l_game_field_x : INTEGER
			l_game_field_y : INTEGER
		do
			-- + 8 to emulate proper rounding
			l_game_field_x := (a_window_x + 8) // 16
			l_game_field_y := (a_window_y + 8) // 16
			if l_game_field_x >= 1 And l_game_field_x <= 20 And l_game_field_y >= 1 And l_game_field_y <= 20 then
				create Result.make (l_game_field_x, l_game_field_y)
			else
				Result := Void
			end
		end

feature {NONE} -- User actions

	tile_dropped (a_x, a_y : INTEGER; a_tile : BS_DRAGGABLE_TILE)
		local
			l_pos : BS_POSITION
			l_move_to_send : BS_MOVE
		do
			l_pos := find_nearest_field_position(a_x, a_y)
			if l_pos = Void then
				a_tile.reset_position_to_initial
			elseif (l_pos.x + a_tile.get_tile.get_state.width - 1 > 20) Or (l_pos.y + a_tile.get_tile.get_state.height - 1 > 20) then
				a_tile.reset_position_to_initial
			else
				play_timeout.actions.wipe_out
				-- note: only temporary (might be an invalid move!)
				a_tile.set_position_and_set_fixed (16*l_pos.x, 16*l_pos.y)

				create l_move_to_send.make (a_tile.get_tile, l_pos)
				-- In case of a bad move we will put the tile back to the stock:
				tile_of_last_move := a_tile
				disable_draggable_tiles
				game_connection.send_move (l_move_to_send)
			end
		end

	tile_action(a_tile: BS_TILE; a_action: INTEGER)
		do
			disable_draggable_tiles
			hide_draggable_tiles

			if a_action = 1 then
				a_tile.rotate_left
			elseif a_action = 2 then
				a_tile.flip_horizontally
			elseif a_action = 3 then
				a_tile.flip_vertically
			end

			show_draggable_tiles (current_color)
			enable_draggable_tiles
		end

	confirm_or_pass
		local
			l_pass_move: BS_MOVE
		do
			play_timeout.actions.wipe_out
			disable_draggable_tiles
			create l_pass_move.make_with_action (2, Void, Void) -- 2 = pass
			game_connection.send_move (l_pass_move)
		end

	surrender
		local
			l_surrender_move: BS_MOVE
		do
			play_timeout.actions.wipe_out
			create l_surrender_move.make_with_action (3, Void, Void) -- 3 = surrender
			game_connection.send_move (l_surrender_move)
			disable_draggable_tiles
		end

	request_rematch
		do
			btn_rematch.disable_sensitive
			game_connection.send_rematch
			add_log_entry ("You requested a rematch. Waiting for the other players...")
		end

feature {NONE} -- General Implementation

	ask_for_quitting
		local
			l_dlg_confirm: EV_QUESTION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to quit this game?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_yes) then
				game_connection.send_bye_and_close()
				quit_to_lobby
			end
		end

	quit_to_lobby
		do
			-- show lobby again, which had been hidden
			--game_connection.disconnect
			lobby.show
			destroy
			lobby.set_up_game
		end

	draw_unplayed_tile(a_tile: BS_TILE; a_top_left_x, a_top_left_y : INTEGER)
		local
			l_tile : BS_DRAGGABLE_TILE
			l_tile_atom : BS_TILE_ATOM
		do
			if a_tile /= Void then
				create l_tile.make_draggable (a_tile, a_top_left_x, a_top_left_y + 340, agent tile_dropped, agent tile_action)
				game_world.extend (l_tile)
				unplayed_tiles.extend (l_tile)
				l_tile.disable_moving
			end
		end

	add_log_entry(a_text : STRING)
		do
			lst_log.put_front (create {EV_LIST_ITEM}.make_with_text (get_current_timestamp_string + " : " + a_text))
		end

	get_current_timestamp_string : STRING
		local
			l_now : TIME
		do
			create l_now.make_now
			Result := l_now.formatted_out ("hh:[0]mi:[0]ss")
		end

	set_turn_to_player(a_color, a_player_id : INTEGER)
		local
			j : INTEGER
		do
			-- first hide the previous player's tiles:
			if current_color /= 0 then
				hide_draggable_tiles
			end

			-- TODO: this is a temporary workaround due to unexpected received commands.
			-- To be removed later on.
			current_color := a_color
			show_draggable_tiles(a_color)
--			current_color := current_color + 1
--			if current_color = 4 then
--				current_color := 1
--			end


			add_log_entry ("It's " + get_player_name(current_color) + "'s turn now.")

			-- reset all the other player's marks:
			from
				j := 1
			until
				j > n_colors
			loop
--				lbl_player_name.at (j).font.set_weight (weight_regular)
--				lbl_score.at (j).font.set_weight (Weight_regular)
--				lbl_remaining_time.at (j).font.set_weight (Weight_regular)
				lbl_remaining_time.at (j).set_text ("")

				j := j + 1
			end

--			lbl_player_name.at (current_color).font.set_weight (Weight_bold)
--			lbl_score.at (current_color).font.set_weight (Weight_bold)
--			lbl_remaining_time.at (current_color).font.set_weight (Weight_bold)
		end

	remove_tile(a_color_id : INTEGER; a_tile : BS_TILE)
		local
			j : INTEGER
			l_found : BOOLEAN
		do
			hide_draggable_tiles
			from j := 1
			l_found := False
			until
				(j > abstract_tiles.at (a_color_id).count) Or l_found
			loop
				if abstract_tiles.at (a_color_id).at (j) ~ a_tile then
					abstract_tiles.at (a_color_id).at (j) := Void
					l_found := True
				end

				j := j + 1
			end

			show_draggable_tiles (current_color)
		end

	update_scores(a_scores : ARRAY [TUPLE [id: INTEGER; name: STRING; score: INTEGER]])
		local
			j: INTEGER
		do
			if player_list.count = 4 then
				from j := 1	until j > a_scores.count
				loop
					lbl_score.at (j).set_text (a_scores.at (j).score.out)
					j := j + 1
				end
			elseif player_list.count = 2 then
				lbl_score.at (1).set_text (a_scores.at (1).score.out)
				lbl_score.at (3).set_text (a_scores.at (1).score.out)
				lbl_score.at (2).set_text (a_scores.at (2).score.out)
				lbl_score.at (4).set_text (a_scores.at (2).score.out)
			end
		end

	passing(a_player_id: INTEGER)
		do
			add_log_entry (get_player_name(a_player_id) + " has passed his move.")
		end

	surrendering(a_player_id: INTEGER)
		do
			add_log_entry (get_player_name(a_player_id) + " has surrendered the game.")
		end

	announce_victory(a_player_id: INTEGER)

		local
--			l_dlg_confirm: EV_QUESTION_DIALOG
		do
			add_log_entry (get_player_name(a_player_id) + " has won the game! Congratulations!")
			lbl_winner.set_text (get_player_name(a_player_id) + " has won!")
			lbl_winner.show
			btn_rematch.show
			btn_rematch.enable_sensitive

			current_color := 0

--			create l_dlg_confirm.make_with_text (get_player_name(a_player_id) + " has won the game! Do you want a rematch?")

--			l_dlg_confirm.show_relative_to_window (Current)

--			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_yes) then
--				game_connection.send_rematch
--			else
--				quit_to_lobby
--			end
		end

	-- only for rematch !
	start_new_game
		local
			j: INTEGER
		do
			add_log_entry ("A new game has started!")
			-- remove game area:
			j := con_main.index_of (game_area, 1)
			con_main.go_i_th (j)
			con_main.remove

			init_field

			from j := 1	until j > n_colors
			loop
				lbl_score.at (j).set_text ("0")
				j := j + 1
			end

			btn_rematch.hide
			lbl_winner.hide
		end

	closing_command_received
		local
			l_dlg: EV_INFORMATION_DIALOG
		do
			add_log_entry ("The server has closed the game.")
			create l_dlg.make_with_text ("The server has closed the game. You will return to the main menu.")
			l_dlg.show_relative_to_window (Current)
			quit_to_lobby
		end

	get_player_name(a_player_id: INTEGER): STRING
		local
			j: INTEGER
		do
			-- in case we cannot find the player in the list:
			create Result.make_from_string ("Player " + a_player_id.out)
			from j := 1 until j > player_list.count
			loop
				if player_list.at (j).id = a_player_id then
					Result := player_list.at (j).name
				end

				j := j + 1
			end
		end

	get_player_of_color(a_color_id: INTEGER): INTEGER
		local
			j: INTEGER
		do
			if player_list.count = 4 then
				Result := a_color_id
			elseif player_list.count = 2 then
				Result := (a_color_id + 1) \\ 2 + 1
			end
		end

	timer_thread_action
		do
			if active_turn then
				seconds_remaining := seconds_remaining - 1
				lbl_remaining_time.at (current_color).set_text (seconds_remaining.out + " seconds remaining")
				if seconds_remaining = 0 then
					-- remove this action handler:
					play_timeout.actions.wipe_out

					add_log_entry ("Your time is up!")
					confirm_or_pass
				end
			end
		end

feature -- Fields

	-- interface to logic (via network)
	game_connection : BS_NET_GAME_CONNECTION
	game_connection_listener : BS_GAME_CONNECTION_LISTENER
	command_executed_semaphore : SEMAPHORE

	-- game intrinsic (game logical) properties:
	player_list: ARRAY[TUPLE [id: INTEGER; name: STRING; type: INTEGER]]
	n_colors : INTEGER = 4
	-- Is there a player whose turn it is and who can drag pieces?
	-- E. g. between sending a move and receiving accept/reject this is equal
	-- to false.
	active_turn : BOOLEAN
	current_color : INTEGER
	  -- might be a bad move:
	tile_of_last_move : BS_DRAGGABLE_TILE
	time_of_set_turn: DATE_TIME

	-- timing
	seconds_remaining: INTEGER
	play_timeout: EV_TIMEOUT
	last_move_bad: BOOLEAN

	-- other windows
	lobby : BS_LOBBY_WINDOW
	-- containers
	con_main : EV_FIXED
	con_field : EV_FIXED
	con_log : EV_FIXED
	con_unplayed_pieces : EV_FIXED
	con_color_info : ARRAY[EV_FIXED]
	-- controls
	lst_log : EV_LIST
	lbl_remaining_pieces : EV_LABEL
	lbl_log : EV_LABEL
	btn_pass : EV_BUTTON
	btn_surrender : EV_BUTTON
	btn_rematch: EV_BUTTON
	field_atoms : ARRAY2[BS_TILE_ATOM]

	lbl_winner: EV_LABEL

	abstract_tiles: ARRAY[LINKED_LIST[BS_TILE]]
	unplayed_tiles : LINKED_LIST[BS_DRAGGABLE_TILE]

	lbl_player_name : ARRAY[EV_LABEL]
	lbl_score : ARRAY[EV_LABEL]
	lbl_remaining_time : ARRAY[EV_LABEL]

	pix_logo: EV_PIXMAP
	lbl_help: EV_LABEL

	-- drawing
	game_area : EV_DRAWING_AREA
	game_world : EV_MODEL_WORLD
	projector: EV_MODEL_DRAWING_AREA_PROJECTOR

end
