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
	BS_TILE_SET
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
--	make_and_close_previous

feature {NONE} -- Initialization

	make(a_lobby : BS_LOBBY_WINDOW; a_game_connection: BS_NET_GAME_CONNECTION)
		do
			lobby := a_lobby
			game_connection := a_game_connection
			-- Set last command read time to 1970 since we have not read a command yet.
			create last_command_read.make_from_epoch (1)
			make_with_title("Blokus")

			key_press_actions.extend (agent key_pressed)
		end

--	make_and_close_previous(a_previous: BS_LOBBY_WINDOW; a_main_ui: MAIN_WINDOW)
--		do
--			make_with_title("Blokus")
--			main_ui := a_main_ui
--		end

	initialize
		local
			i : INTEGER
			lbl : EV_LABEL
			con : EV_FIXED
		do
			Precursor{EV_TITLED_WINDOW}

			set_size(800, 600)

			create con_main

			-- ! TODO: get n players from lobby or game connection !
			n_players := 2
			current_player := 1
			active_turn := True

			init_field
			init_log

			create con_color_info.make_filled (Void, 1, 2)
			create lbl_player_name.make_filled (Void, 1, 2)
			create lbl_score.make_filled (Void, 1, 2)
			create lbl_remaining_time.make_filled (Void, 1, 2)
			from
				i := 1
			until
				i > n_players
			loop
				create con
				create lbl
				lbl.font.set_height_in_points (12)
				con.extend_with_position_and_size (lbl, 0, 0, 60, 20)
				lbl_player_name.put (lbl, i)
				create lbl
				lbl.font.set_height_in_points (12)
				con.extend_with_position_and_size (lbl, 70, 0, 60, 20)
				lbl_score.put (lbl, i)
				create lbl
				lbl.font.set_height_in_points (10)
				con.extend_with_position_and_size (lbl, 130, 0, 150, 20)
				lbl_remaining_time.put (lbl, i)
				con_main.extend_with_position_and_size (con, 380, -20 + 40*i, 480, 40)
				con_color_info.put (con, i)
				i := i + 1
			end

			--con_color_info.at (1).set_background_color (col_reddish)
			lbl_player_name.at (1).set_foreground_color (col_blue)
			lbl_player_name.at (1).set_text ("Player 1")
			lbl_player_name.at (1).font.set_weight (Weight_bold)
			lbl_score.at (1).set_text ("0")
			lbl_score.at (1).font.set_weight (Weight_bold)
			lbl_remaining_time.at (1).set_text ("60 seconds remaining")
			lbl_remaining_time.at (1).font.set_weight (Weight_bold)
			lbl_player_name.at (2).set_foreground_color (col_yellow)
			lbl_player_name.at (2).set_text ("Player 2")
			lbl_score.at (2).set_text ("0")

			create btn_confirm_pass.make_with_text_and_action ("Pass Move", agent confirm_or_pass)
			con_main.extend_with_position_and_size (btn_confirm_pass, 600, 260, 80, 20)
			create btn_surrender.make_with_text_and_action ("Surrender", agent surrender)
			con_main.extend_with_position_and_size (btn_surrender, 600, 295, 80, 20)

			put (con_main)

			-- To be replaced by a timer or similar:
			-- maybe also: (?)
			--enable_capture
			pointer_motion_actions.extend (agent read_command)

			close_request_actions.extend (agent ask_for_quitting)
		end

	init_field
		local
			l_atom : BS_TILE_ATOM
			l_row, l_column : INTEGER
			l_projector : EV_MODEL_DRAWING_AREA_PROJECTOR
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
			create l_projector.make (game_world, game_area)
			con_main.extend_with_position_and_size (game_area, 0, 0, 360, 600)
			l_projector.project
		end

	init_unplayed_pieces
		local
			j : INTEGER
			k : INTEGER
			l_hidden : BOOLEAN
			l_tile_array : ARRAY[BS_DRAGGABLE_TILE]
		do
			create draggable_tiles.make_filled (Void, 1, n_players)

			from
				j := 1
			until
				j > n_players
			loop
				add_tile_set (j)
				create l_tile_array.make_filled (Void, 1, 21)
				draggable_tiles.put (l_tile_array, j)

				l_hidden := not (j = 1)

--				from
--					k := 1
--				until
--					k > 21
--				loop
--					draw_unplayed_tile(j, k, draggable_tiles_initial_position.at (k).at (1), draggable_tiles_initial_position.at (k).at (2), l_hidden)
--				end

				-- 1
				draw_unplayed_tile (j, 1, 10, 10, l_hidden)
				-- 2
				draw_unplayed_tile (j, 2, 50, 10, l_hidden)
				-- 3
				draw_unplayed_tile (j, 3, 100, 10, l_hidden)
				-- 4
				draw_unplayed_tile (j, 4, 150, 10, l_hidden)
				-- 5
				draw_unplayed_tile (j, 5, 220, 10, l_hidden)
				-- 6
				draw_unplayed_tile (j, 6, 270, 10, l_hidden)
				-- 7
				draw_unplayed_tile (j, 7, 10, 70, l_hidden)
				-- 8
				draw_unplayed_tile (j, 8, 80, 70, l_hidden)
				-- 9
				draw_unplayed_tile (j, 9, 150, 70, l_hidden)
				--10
				draw_unplayed_tile (j, 10, 220, 70, l_hidden)
				--11
				draw_unplayed_tile (j, 11, 295, 70, l_hidden)
				--12
				draw_unplayed_tile (j, 12, 10, 130, l_hidden)
				--13
				draw_unplayed_tile (j, 13, 80, 130, l_hidden)
				--14
				draw_unplayed_tile (j, 14, 150, 130, l_hidden)
				--15
				draw_unplayed_tile (j, 15, 250, 130, l_hidden)
				--16
				draw_unplayed_tile (j, 16, 300, 130, l_hidden)
				--17
				draw_unplayed_tile (j, 17, 10, 200, l_hidden)
				--18
				draw_unplayed_tile (j, 18, 70, 200, l_hidden)
				--19
				draw_unplayed_tile (j, 19, 130, 200, l_hidden)
				--20
				draw_unplayed_tile (j, 20, 190, 200, l_hidden)
				--21
				draw_unplayed_tile (j, 21, 270, 200, l_hidden)

				j := j + 1
			end
		end

	init_log
		do
			create con_log
			create lbl_log.make_with_text ("Log")
			con_log.extend_with_position_and_size (lbl_log, 5, 5, 50, 30)
			create lst_log
			add_log_entry ("Test Log Entry.")
			con_log.extend_with_position_and_size (lst_log, 5, 35, 380, 230)
			con_main.extend_with_position_and_size (con_log, 420, 320, 380, 280)
		end

feature {NONE} -- Game connection

	read_command(a_a, a_b : INTEGER; a_c, a_d, a_e : DOUBLE; a_f, a_g : INTEGER)
		local
			l_now : DATE_TIME
			l_1_second : TIME_DURATION
			l_command : BS_NET_COMMAND
			l_command_type : BS_NET_COMMAND
		do
			create l_1_second.make_by_seconds (1)
			create l_now.make_now

			if l_now.minus(last_command_read).duration >= l_1_second then

				l_command := game_connection.read_command
				if l_command /= Void then
					inspect l_command.command
						when command_getmove then
							switch_to_next_player

						-- only for lobby:

						--when command_updateplayerlist then

						--when command_startgame then

						when command_playermakesmove then
							draw_move(l_command.move)
						when command_removetilefromplayer then

						when command_badmove then
							tile_of_last_move.reset_position_to_initial
							tile_of_last_move.set_draggable
						when command_updatescores then

						when command_printlogmessage then
							add_log_entry(l_command.message)
						when command_setturn then

						when command_announcevictory then

						when command_closing then

					end
				end
			end
		end

feature -- Graphics and drawing

	-- TO BE REMOVED:
--	test_draw_move
--		local
--			tile : BS_TILE
--			state : ARRAY2[INTEGER]
--			position : BS_POSITION
--			move: BS_MOVE
--		do
--			create state.make_filled (1, 2, 2)
--			create tile.make (state, 2)
--			create position.make (1, 1)
--			create move.make (tile, position)

--			draw_move(move)
--		end

	draw_move(a_move : BS_MOVE)
		local
			l_pos : BS_POSITION
			l_tile : BS_DRAGGABLE_TILE
		do
			l_pos := a_move.get_position
			create l_tile.make_fixed (a_move.get_tile, 16*l_pos.x, 16*l_pos.y)
			game_world.extend (l_tile)
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
				-- note: only temporary (might be an invalid move!)
				a_tile.set_position_and_set_fixed (16*l_pos.x, 16*l_pos.y)

				create l_move_to_send.make (a_tile.get_tile, l_pos)
				-- In case of a bad move we will put the tile back to the stock:
				tile_of_last_move := a_tile
				game_connection.send_move (l_move_to_send)
				hide_draggable_tiles
			end
		end

	-- not yet working properly
	key_pressed(a_key : EV_KEY)
		local
--			i : INTEGER
		do
--			if a_key.code = {EV_KEY_CONSTANTS}.Key_space then
--				from
--					i := 1
--				until
--					i > unplayed_tiles2.count
--				loop
--					unplayed_tiles2.at (i).rotate_tile
--				end
--			end
		end

	confirm_or_pass
		do

		end

	surrender
		do

		end

feature {NONE} -- General Implementation

	ask_for_quitting
		local
			l_dlg_confirm: EV_CONFIRMATION_DIALOG
		do
			create l_dlg_confirm.make_with_text ("Are you sure you want to abort the game and return to the game lobby?")
			l_dlg_confirm.show_modal_to_window (Current)

			if l_dlg_confirm.selected_button.is_equal((create {EV_DIALOG_CONSTANTS}).ev_ok) then
				quit_to_lobby
			end
		end

	quit_to_lobby
		do
			-- show lobby again, which had been hidden
			lobby.show
			destroy
			lobby.set_up_game
		end

	draw_unplayed_tile(a_player_index, a_tile_index, a_top_left_x, a_top_left_y : INTEGER; hidden : BOOLEAN)
		local
			l_tile : BS_DRAGGABLE_TILE
			l_tile_atom : BS_TILE_ATOM
		do
			create l_tile.make_draggable (tiles.at (a_tile_index), a_top_left_x, a_top_left_y + 340, agent tile_dropped)
			game_world.extend (l_tile)
			draggable_tiles.at (a_player_index).put (l_tile, a_tile_index)
			if hidden then
				l_tile.disable_sensitive
				l_tile.hide
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

	switch_to_next_player
		local
			j : INTEGER
		do
			current_player := current_player + 1
			if current_player > n_players then
				current_player := 1
			end

			-- reset all the other player's marks:
			from
				j := 1
			until
				j > n_players
			loop
				lbl_player_name.at (j).font.set_weight (weight_regular)
				lbl_score.at (j).font.set_weight (Weight_regular)
				lbl_remaining_time.at (j).font.set_weight (Weight_regular)

				j := j + 1
			end

			lbl_player_name.at (j).font.set_weight (Weight_bold)
			lbl_score.at (j).font.set_weight (Weight_bold)
			lbl_remaining_time.at (j).font.set_weight (Weight_bold)

			active_turn := True
			show_and_enable_tiles(current_player)
		end

	hide_draggable_tiles
		local
			j : INTEGER
		do
			from
				j := 1
			until
				j > 21
			loop
				draggable_tiles.at (current_player).at (j).disable_sensitive
				draggable_tiles.at (current_player).at (j).hide

				j := j + 1
			end
		end

	show_and_enable_tiles(a_player: INTEGER)
		local
			j : INTEGER
		do
			from
				j := 1
			until
				j > 21
			loop
				draggable_tiles.at (current_player).at (j).show
				draggable_tiles.at (current_player).at (j).enable_sensitive
			end
		end

	-- interface to logic (via network)
	game_connection : BS_NET_GAME_CONNECTION
	last_command_read : DATE_TIME
	-- game intrinsic (game logical) properties:
	n_players : INTEGER
	-- Is there a player whose turn it is and who can drag pieces?
	-- E. g. between sending a move and receiving accept/reject this is equal
	-- to false.
	active_turn : BOOLEAN
	current_player : INTEGER
	  -- might be a bad move:
	tile_of_last_move : BS_DRAGGABLE_TILE

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
	btn_confirm_pass : EV_BUTTON
	btn_surrender : EV_BUTTON
	field_atoms : ARRAY2[BS_TILE_ATOM]

	draggable_tiles : ARRAY[ARRAY[BS_DRAGGABLE_TILE]]

	lbl_player_name : ARRAY[EV_LABEL]
	lbl_score : ARRAY[EV_LABEL]
	lbl_remaining_time : ARRAY[EV_LABEL]

	-- drawing
	game_area : EV_DRAWING_AREA
	game_world : EV_MODEL_WORLD

end
