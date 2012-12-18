note
	description: "3rd layer window (main window)"
	author: "Dimitris Deyannis,George Vardakis"
	date: "15/12/2012"
	revision: "1.4.4"

class
	B8_3RD_LAYER_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	B8_GUI_CONST
		export
			{NONE} all
		undefine
			default_create, copy
		end

	SED_STORABLE_FACILITIES
		undefine
			default_create,copy
		end

create
	make

feature {NONE}	-- Initialization
	make (a_client_server:B8_GAME_MODE;a_logic:B8_LOGIC)
	local
		i:INTEGER
		do
			logic:=a_logic
			if(a_client_server.mode=0) then --if it's the server or the client
				server:=a_client_server.server
				from
					i:=1
				until
					i=logic.get_game_mode.get_num_players
				loop
					server.threads[i].set_3rd_layer (Current)
					i:=i+1
				end
			else
				client:=a_client_server.client
				client.thread.set_3rd_layer (Current)
			end
			--client_server:=a_client_server
			make_with_title("Blokus")
			create blokus_menu_bar

			-- Setting Menu
			create blokus_menu
			blokus_menu.set_text ("Menu")
			create menu_leave
			menu_leave.set_text ("Leave")
			menu_leave.select_actions.extend (agent leave_is_pressed)
			create menu_separator
			create menu_exit
			menu_exit.set_text ("Exit")
			menu_exit.select_actions.extend (agent exit_is_pressed)

			blokus_menu_bar.extend (blokus_menu)
			blokus_menu.extend (menu_leave)
			blokus_menu.extend (menu_separator)
			blokus_menu.extend (menu_exit)

			-- Setting Help
			create blokus_help
			blokus_help.set_text ("Help")
			create help_info
			help_info.set_text ("Info")
			help_info.select_actions.extend (agent info_is_pressed)
			create help_how_to_play
			help_how_to_play.set_text ("How to play")
			help_how_to_play.select_actions.extend (agent how_to_play_is_pressed)
			create help_separator
			create help_report_problem
			help_report_problem.set_text ("Report a problem")
			help_report_problem.select_actions.extend (agent report_problem_is_pressed)

			blokus_menu_bar.extend (blokus_help)
			blokus_help.extend (help_info)
			blokus_help.extend (help_how_to_play)
			blokus_help.extend (help_separator)
			blokus_help.extend (help_report_problem)

			-- Addding menu bar to window
			set_menu_bar (blokus_menu_bar)
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(1025,710)

		close_request_actions.extend (agent request_close_window)
		create_container_3rd_layer
	end

create_container_3rd_layer
		-- the constructor of the 3rd_layer container
	do
		-- Set the container
		create con_3rd_layer
		put(con_3rd_layer)

		-- Set bottom box
		create bot_box
		create pix_bot_tile_box
		pix_bot_tile_box.set_with_named_file (file_system.pathname_to_string (img_3rd_layer_bot))
		bot_box.set_background_pixmap (pix_bot_tile_box)
		con_3rd_layer.extend_with_position_and_size (bot_box, 780, 260, 240, 405)

		-- Set the main board
		create blokus_board
		con_3rd_layer.extend_with_position_and_size (blokus_board, 0, 0, 780, 665)

		-- Set the Message board
		create message_board
		message_board.set_text ("You can see your messages%NHere")
		message_board.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 255, 128))
		con_3rd_layer.extend_with_position_and_size (message_board, 780, 0, 240, 120)

		-- Set Rotate Left button
		create rotate_left_button
		create pix_rotate_left
		create pix_rotate_left_enter
		pix_rotate_left.set_with_named_file (file_system.pathname_to_string (img_rotate_left))
		pix_rotate_left_enter.set_with_named_file (file_system.pathname_to_string (img_rotate_left_enter))
		rotate_left_button.pointer_button_release_actions.extend (agent rotate_left_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		rotate_left_button.set_background_pixmap (pix_rotate_left)
		rotate_left_button.pointer_enter_actions.extend(agent pointer_enter(rotate_left_button))
		rotate_left_button.pointer_leave_actions.extend (agent pointer_leave(rotate_left_button))
		con_3rd_layer.extend_with_position_and_size (rotate_left_button, 780, 120, 120, 40)

		-- Set Rotate Right button
		create rotate_right_button
		create pix_rotate_right
		create pix_rotate_right_enter
		pix_rotate_right.set_with_named_file (file_system.pathname_to_string (img_rotate_right))
		pix_rotate_right_enter.set_with_named_file (file_system.pathname_to_string (img_rotate_right_enter))

		rotate_right_button.set_background_pixmap (pix_rotate_right)
		rotate_right_button.pointer_enter_actions.extend(agent pointer_enter(rotate_right_button))
		rotate_right_button.pointer_leave_actions.extend (agent pointer_leave(rotate_right_button))
		rotate_right_button.pointer_button_press_actions.extend (agent rotate_right_is_pressed(?,?,?,?,?,?,?,?))
		con_3rd_layer.extend_with_position_and_size (rotate_right_button, 900, 120, 120, 40)

		-- Set timer board
		create timer_board
		timer_board.set_text ("Timer!")
		timer_board.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 255, 128))
		con_3rd_layer.extend_with_position_and_size (timer_board, 780, 160, 240, 60)
		if server/=Void then
			create timer_thread.make(Current)
			timer_thread.launch
		end

		-- Set Undo button
		create undo_button
		create pix_undo
		create pix_undo_enter
		pix_undo.set_with_named_file (file_system.pathname_to_string (img_undo))
		pix_undo_enter.set_with_named_file (file_system.pathname_to_string (img_undo_enter))

		undo_button.set_background_pixmap (pix_undo)
		undo_button.pointer_enter_actions.extend(agent pointer_enter(undo_button))
		undo_button.pointer_leave_actions.extend (agent pointer_leave(undo_button))
		undo_button.pointer_button_press_actions.extend (agent undo_is_pressed(?,?,?,?,?,?,?,?))
		con_3rd_layer.extend_with_position_and_size (undo_button, 780, 220, 120, 40)

		-- Set Ready button
		create ready_button
		create pix_ready
		create pix_ready_enter
		pix_ready.set_with_named_file (file_system.pathname_to_string (img_ready))
		pix_ready_enter.set_with_named_file (file_system.pathname_to_string (img_ready_enter))

		ready_button.set_background_pixmap (pix_ready)
		ready_button.pointer_enter_actions.extend(agent pointer_enter(ready_button))
		ready_button.pointer_leave_actions.extend (agent pointer_leave(ready_button))
		ready_button.pointer_button_press_actions.extend (agent ready_is_pressed(?,?,?,?,?,?,?,?))
		con_3rd_layer.extend_with_position_and_size (ready_button, 900, 220, 120, 40)

		-- Initialising functional board
		create board_background
		create pix_blokus_board
		pix_blokus_board.set_with_named_file (file_system.pathname_to_string (img_blokus_board))
		board_background.set_pixmap(pix_blokus_board)

		create world
		world.extend (board_background)
		board_background.set_point_position (280, 0)

		-- Initializing tiles
		if(logic.get_game_mode.get_num_players=2)then
			init_tiles(logic.get_player_id+1, logic.get_player_id+3)
		else
			init_tiles(logic.get_player_id+1, 0)
		end

		create projector.make(world, blokus_board)
		projector.project

		-- Info about the last played tile
		create last_played_tile
		create last_played_handle
		world.extend (last_played_handle)
		last_x := -100 -- No tile played
		last_y := -100 -- No tile played
	end


feature {NONE} -- Implementation / Agents

request_close_window
			-- The user wants to close the window using X button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Exit Blokus?")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
			--		main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

-- Monomino maker
create_monomino (a_x, a_y: INTEGER; a_pix: EV_PIXMAP) : EV_MODEL_PICTURE
	local
		l_x: INTEGER
		l_y: INTEGER
	do
		l_x := a_x
		l_y := a_y
		create temp_monomino
		temp_monomino.set_pixmap (a_pix)
		temp_monomino.set_point_position (l_x, l_y)
		Result := temp_monomino
	end

-- Tile initialiser
init_tiles(a_color, a_color_1: INTEGER)
	do
		create pix_monomino
		create pix_monomino_1
		create pix_monomino_2
		create pix_monomino_3

		pix_monomino.set_with_named_file (file_system.pathname_to_string (img_blue_monomino))
		pix_monomino_1.set_with_named_file (file_system.pathname_to_string (img_yellow_monomino))
		pix_monomino_2.set_with_named_file (file_system.pathname_to_string (img_red_monomino))
		pix_monomino_3.set_with_named_file (file_system.pathname_to_string (img_green_monomino))


		-- Tile 0
		create move_handle_0
		create tile_group_0
		draw_tile(tile_group_0, 0, pix_monomino)
		move_handle_0.extend (tile_group_0)
		tile_group_0.set_point_position (-100,-100)
		world.extend(move_handle_0)

		-- Tile 1
		create move_handle_1
		create tile_group_1
		draw_tile(tile_group_1, 1, pix_monomino)
		move_handle_1.extend (tile_group_1)
		tile_group_1.set_point_position (-100, -100)
		world.extend (move_handle_1)

		-- Tile 2
		create move_handle_2
		create tile_group_2
		draw_tile(tile_group_2, 2, pix_monomino)
		move_handle_2.extend (tile_group_2)
		tile_group_2.set_point_position (-100, -100)
		world.extend (move_handle_2)

		-- Tile 3
		create move_handle_3
		create tile_group_3
		draw_tile(tile_group_3, 3, pix_monomino)
		move_handle_3.extend (tile_group_3)
		tile_group_3.set_point_position (-100, -100)
		world.extend (move_handle_3)

		-- Tile 4
		create move_handle_4
		create tile_group_4
		draw_tile(tile_group_4, 4, pix_monomino)
		move_handle_4.extend (tile_group_4)
		tile_group_4.set_point_position (-100, -100)
		world.extend (move_handle_4)

		-- Tile 5
		create move_handle_5
		create tile_group_5
		draw_tile(tile_group_5, 5, pix_monomino)
		move_handle_5.extend (tile_group_5)
		tile_group_5.set_point_position (-100, -100)
		world.extend (move_handle_5)

		-- Tile 6
		create move_handle_6
		create tile_group_6
		draw_tile(tile_group_6, 6, pix_monomino)
		move_handle_6.extend (tile_group_6)
		tile_group_6.set_point_position (-100, -100)
		world.extend (move_handle_6)

		-- Tile 7
		create move_handle_7
		create tile_group_7
		draw_tile(tile_group_7, 7, pix_monomino)
		move_handle_7.extend (tile_group_7)
		tile_group_7.set_point_position (-100, -100)
		world.extend (move_handle_7)

		-- Tile_8
		create move_handle_8
		create tile_group_8
		draw_tile(tile_group_8, 8, pix_monomino)
		move_handle_8.extend (tile_group_8)
		tile_group_8.set_point_position (-100, -100)
		world.extend (move_handle_8)

		-- Tile 9
		create move_handle_9
		create tile_group_9
		draw_tile(tile_group_9, 9, pix_monomino)
		move_handle_9.extend (tile_group_9)
		tile_group_9.set_point_position (-100, -100)
		world.extend (move_handle_9)

		-- Tile 10
		create move_handle_10
		create tile_group_10
		draw_tile(tile_group_10, 10 ,pix_monomino)
		move_handle_10.extend (tile_group_10)
		tile_group_10.set_point_position (-100, -100)
		world.extend (move_handle_10)

		-- Tile 11
		create move_handle_11
		create tile_group_11
		draw_tile(tile_group_11, 11, pix_monomino)
		move_handle_11.extend (tile_group_11)
		tile_group_11.set_point_position (-100, -100)
		world.extend (move_handle_11)

		-- Tile 12
		create move_handle_12
		create tile_group_12
		draw_tile(tile_group_12, 12, pix_monomino)
		move_handle_12.extend (tile_group_12)
		tile_group_12.set_point_position (-100, -100)
		world.extend (move_handle_12)

		-- Tile 13
		create move_handle_13
		create tile_group_13
		draw_tile(tile_group_13, 13, pix_monomino)
		move_handle_13.extend (tile_group_13)
		tile_group_13.set_point_position (-100, -100)
		world.extend (move_handle_13)

		-- Tile 14
		create move_handle_14
		create tile_group_14
		draw_tile(tile_group_14, 14, pix_monomino)
		move_handle_14.extend (tile_group_14)
		tile_group_14.set_point_position (-100, -100)
		world.extend (move_handle_14)

		-- Tile 15
		create move_handle_15
		create tile_group_15
		draw_tile(tile_group_15, 15, pix_monomino)
		move_handle_15.extend (tile_group_15)
		tile_group_15.set_point_position (-100, -100)
		world.extend (move_handle_15)

		-- Tile 16
		create move_handle_16
		create tile_group_16
		draw_tile(tile_group_16, 16, pix_monomino)
		move_handle_16.extend (tile_group_16)
		tile_group_16.set_point_position (-100, -100)
		world.extend (move_handle_16)

		-- Tile 17
		create move_handle_17
		create tile_group_17
		draw_tile(tile_group_17, 17, pix_monomino)
		move_handle_17.extend (tile_group_17)
		tile_group_17.set_point_position (-100, -100)
		world.extend (move_handle_17)

		-- Tile 18
		create move_handle_18
		create tile_group_18
		draw_tile(tile_group_18, 18, pix_monomino)
		move_handle_18.extend (tile_group_18)
		tile_group_18.set_point_position (-100, -100)
		world.extend (move_handle_18)

		-- Tile 19
		create move_handle_19
		create tile_group_19
		draw_tile(tile_group_19, 19, pix_monomino)
		move_handle_19.extend (tile_group_19)
		tile_group_19.set_point_position (-100, -100)
		world.extend (move_handle_19)

		-- Tile 20
		create move_handle_20
		create tile_group_20
		draw_tile(tile_group_20, 20, pix_monomino)
		move_handle_20.extend (tile_group_20)
		tile_group_20.set_point_position (-100, -100)
		world.extend (move_handle_20)

		-- Change color
		-- Tile 0_1
		create move_handle_0_1
		create tile_group_0_1
		draw_tile(tile_group_0_1, 0, pix_monomino_1)
		move_handle_0_1.extend (tile_group_0_1)
		tile_group_0_1.set_point_position (-100, -100)
		world.extend(move_handle_0_1)

		-- Tile 1_1
		create move_handle_1_1
		create tile_group_1_1
		draw_tile(tile_group_1_1, 1, pix_monomino_1)
		move_handle_1_1.extend (tile_group_1_1)
		tile_group_1_1.set_point_position (-100, -100)
		world.extend (move_handle_1_1)

		-- Tile 2_1
		create move_handle_2_1
		create tile_group_2_1
		draw_tile(tile_group_2_1, 2, pix_monomino_1)
		move_handle_2_1.extend (tile_group_2_1)
		tile_group_2_1.set_point_position (-100, -100)
		world.extend (move_handle_2_1)

		-- Tile 3_1
		create move_handle_3_1
		create tile_group_3_1
		draw_tile(tile_group_3_1, 3, pix_monomino_1)
		move_handle_3_1.extend (tile_group_3_1)
		tile_group_3_1.set_point_position (-100, -100)
		world.extend (move_handle_3_1)

		-- Tile 4_1
		create move_handle_4_1
		create tile_group_4_1
		draw_tile(tile_group_4_1, 4, pix_monomino_1)
		move_handle_4_1.extend (tile_group_4_1)
		tile_group_4_1.set_point_position (-100, -100)
		world.extend (move_handle_4_1)

		-- Tile 5_1
		create move_handle_5_1
		create tile_group_5_1
		draw_tile(tile_group_5_1, 5, pix_monomino_1)
		move_handle_5_1.extend (tile_group_5_1)
		tile_group_5_1.set_point_position (-100, -100)
		world.extend (move_handle_5_1)

		-- Tile 6_1
		create move_handle_6_1
		create tile_group_6_1
		draw_tile(tile_group_6_1, 6, pix_monomino_1)
		move_handle_6_1.extend (tile_group_6_1)
		tile_group_6_1.set_point_position (-100, -100)
		world.extend (move_handle_6_1)

		-- Tile 7_1
		create move_handle_7_1
		create tile_group_7_1
		draw_tile(tile_group_7_1, 7, pix_monomino_1)
		move_handle_7_1.extend (tile_group_7_1)
		tile_group_7_1.set_point_position (-100, -100)
		world.extend (move_handle_7_1)

		-- Tile_8_1
		create move_handle_8_1
		create tile_group_8_1
		draw_tile(tile_group_8_1, 8, pix_monomino_1)
		move_handle_8_1.extend (tile_group_8_1)
		tile_group_8_1.set_point_position (-100, -100)
		world.extend (move_handle_8_1)

		-- Tile 9_1
		create move_handle_9_1
		create tile_group_9_1
		draw_tile(tile_group_9_1, 9, pix_monomino_1)
		move_handle_9_1.extend (tile_group_9_1)
		tile_group_9_1.set_point_position (-100, -100)
		world.extend (move_handle_9_1)

		-- Tile 10_1
		create move_handle_10_1
		create tile_group_10_1
		draw_tile(tile_group_10_1, 10 ,pix_monomino_1)
		move_handle_10_1.extend (tile_group_10_1)
		tile_group_10_1.set_point_position (-100, -100)
		world.extend (move_handle_10_1)

		-- Tile 11_1
		create move_handle_11_1
		create tile_group_11_1
		draw_tile(tile_group_11_1, 11, pix_monomino_1)
		move_handle_11_1.extend (tile_group_11_1)
		tile_group_11_1.set_point_position (-100, -100)
		world.extend (move_handle_11_1)

		-- Tile 12_1
		create move_handle_12_1
		create tile_group_12_1
		draw_tile(tile_group_12_1, 12, pix_monomino_1)
		move_handle_12_1.extend (tile_group_12_1)
		tile_group_12_1.set_point_position (-100, -100)
		world.extend (move_handle_12_1)

		-- Tile 13_1
		create move_handle_13_1
		create tile_group_13_1
		draw_tile(tile_group_13_1, 13, pix_monomino_1)
		move_handle_13_1.extend (tile_group_13_1)
		tile_group_13_1.set_point_position (-100, -100)
		world.extend (move_handle_13_1)

		-- Tile 14_1
		create move_handle_14_1
		create tile_group_14_1
		draw_tile(tile_group_14_1, 14, pix_monomino_1)
		move_handle_14_1.extend (tile_group_14_1)
		tile_group_14_1.set_point_position (-100, -100)
		world.extend (move_handle_14_1)

		-- Tile 15_1
		create move_handle_15_1
		create tile_group_15_1
		draw_tile(tile_group_15_1, 15, pix_monomino_1)
		move_handle_15_1.extend (tile_group_15_1)
		tile_group_15_1.set_point_position (-100, -100)
		world.extend (move_handle_15_1)

		-- Tile 16_1
		create move_handle_16_1
		create tile_group_16_1
		draw_tile(tile_group_16_1, 16, pix_monomino_1)
		move_handle_16_1.extend (tile_group_16_1)
		tile_group_16_1.set_point_position (-100, -100)
		world.extend (move_handle_16_1)

		-- Tile 17_1
		create move_handle_17_1
		create tile_group_17_1
		draw_tile(tile_group_17_1, 17, pix_monomino_1)
		move_handle_17_1.extend (tile_group_17_1)
		tile_group_17_1.set_point_position (-100, -100)
		world.extend (move_handle_17_1)

		-- Tile 18_1
		create move_handle_18_1
		create tile_group_18_1
		draw_tile(tile_group_18_1, 18, pix_monomino_1)
		move_handle_18_1.extend (tile_group_18_1)
		tile_group_18_1.set_point_position (-100, -100)
		world.extend (move_handle_18_1)

		-- Tile 19_1
		create move_handle_19_1
		create tile_group_19_1
		draw_tile(tile_group_19_1, 19, pix_monomino_1)
		move_handle_19_1.extend (tile_group_19_1)
		tile_group_19_1.set_point_position (-100, -100)
		world.extend (move_handle_19_1)

		-- Tile 20_1
		create move_handle_20_1
		create tile_group_20_1
		draw_tile(tile_group_20_1, 20, pix_monomino_1)
		move_handle_20_1.extend (tile_group_20_1)
		tile_group_20_1.set_point_position (-100, -100)
		world.extend (move_handle_20_1)

		-- Change color
		-- Tile 0_2
		create move_handle_0_2
		create tile_group_0_2
		draw_tile(tile_group_0_2, 0, pix_monomino_2)
		move_handle_0_2.extend (tile_group_0_2)
		tile_group_0_2.set_point_position (-100, -100)
		world.extend(move_handle_0_2)

		-- Tile 1_2
		create move_handle_1_2
		create tile_group_1_2
		draw_tile(tile_group_1_2, 1, pix_monomino_2)
		move_handle_1_2.extend (tile_group_1_2)
		tile_group_1_2.set_point_position (-100, -100)
		world.extend (move_handle_1_2)

		-- Tile 2_2
		create move_handle_2_2
		create tile_group_2_2
		draw_tile(tile_group_2_2, 2, pix_monomino_2)
		move_handle_2_2.extend (tile_group_2_2)
		tile_group_2_2.set_point_position (-100, -100)
		world.extend (move_handle_2_2)

		-- Tile 3_2
		create move_handle_3_2
		create tile_group_3_2
		draw_tile(tile_group_3_2, 3, pix_monomino_2)
		move_handle_3_2.extend (tile_group_3_2)
		tile_group_3_2.set_point_position (-100, -100)
		world.extend (move_handle_3_2)

		-- Tile 4_2
		create move_handle_4_2
		create tile_group_4_2
		draw_tile(tile_group_4_2, 4, pix_monomino_2)
		move_handle_4_2.extend (tile_group_4_2)
		tile_group_4_2.set_point_position (-100, -100)
		world.extend (move_handle_4_2)

		-- Tile 5_2
		create move_handle_5_2
		create tile_group_5_2
		draw_tile(tile_group_5_2, 5, pix_monomino_2)
		move_handle_5_2.extend (tile_group_5_2)
		tile_group_5_2.set_point_position (-100, -100)
		world.extend (move_handle_5_2)

		-- Tile 6_2
		create move_handle_6_2
		create tile_group_6_2
		draw_tile(tile_group_6_2, 6, pix_monomino_2)
		move_handle_6_2.extend (tile_group_6_2)
		tile_group_6_2.set_point_position (-100, -100)
		world.extend (move_handle_6_2)

		-- Tile 7_2
		create move_handle_7_2
		create tile_group_7_2
		draw_tile(tile_group_7_2, 7, pix_monomino_2)
		move_handle_7_2.extend (tile_group_7_2)
		tile_group_7_2.set_point_position (-100, -100)
		world.extend (move_handle_7_2)

		-- Tile_8_2
		create move_handle_8_2
		create tile_group_8_2
		draw_tile(tile_group_8_2, 8, pix_monomino_2)
		move_handle_8_2.extend (tile_group_8_2)
		tile_group_8_2.set_point_position (-100, -100)
		world.extend (move_handle_8_2)

		-- Tile 9_2
		create move_handle_9_2
		create tile_group_9_2
		draw_tile(tile_group_9_2, 9, pix_monomino_2)
		move_handle_9_2.extend (tile_group_9_2)
		tile_group_9_2.set_point_position (-100, -100)
		world.extend (move_handle_9_2)

		-- Tile 10_2
		create move_handle_10_2
		create tile_group_10_2
		draw_tile(tile_group_10_2, 10 ,pix_monomino_2)
		move_handle_10_2.extend (tile_group_10_2)
		tile_group_10_2.set_point_position (-100, -100)
		world.extend (move_handle_10_2)

		-- Tile 11_2
		create move_handle_11_2
		create tile_group_11_2
		draw_tile(tile_group_11_2, 11, pix_monomino_2)
		move_handle_11_2.extend (tile_group_11_2)
		tile_group_11_2.set_point_position (-100, -100)
		world.extend (move_handle_11_2)

		-- Tile 12_2
		create move_handle_12_2
		create tile_group_12_2
		draw_tile(tile_group_12_2, 12, pix_monomino_2)
		move_handle_12_2.extend (tile_group_12_2)
		tile_group_12_2.set_point_position (-100, -100)
		world.extend (move_handle_12_2)

		-- Tile 13_2
		create move_handle_13_2
		create tile_group_13_2
		draw_tile(tile_group_13_2, 13, pix_monomino_2)
		move_handle_13_2.extend (tile_group_13_2)
		tile_group_13_2.set_point_position (-100, -100)
		world.extend (move_handle_13_2)

		-- Tile 14_2
		create move_handle_14_2
		create tile_group_14_2
		draw_tile(tile_group_14_2, 14, pix_monomino_2)
		move_handle_14_2.extend (tile_group_14_2)
		tile_group_14_2.set_point_position (-100, -100)
		world.extend (move_handle_14_2)

		-- Tile 15_2
		create move_handle_15_2
		create tile_group_15_2
		draw_tile(tile_group_15_2, 15, pix_monomino_2)
		move_handle_15_2.extend (tile_group_15_2)
		tile_group_15_2.set_point_position (-100, -100)
		world.extend (move_handle_15_2)

		-- Tile 16_2
		create move_handle_16_2
		create tile_group_16_2
		draw_tile(tile_group_16_2, 16, pix_monomino_2)
		move_handle_16_2.extend (tile_group_16_2)
		tile_group_16_2.set_point_position (-100, -100)
		world.extend (move_handle_16_2)

		-- Tile 17_2
		create move_handle_17_2
		create tile_group_17_2
		draw_tile(tile_group_17_2, 17, pix_monomino_2)
		move_handle_17_2.extend (tile_group_17_2)
		tile_group_17_2.set_point_position (-100, -100)
		world.extend (move_handle_17_2)

		-- Tile 18_2
		create move_handle_18_2
		create tile_group_18_2
		draw_tile(tile_group_18_2, 18, pix_monomino_2)
		move_handle_18_2.extend (tile_group_18_2)
		tile_group_18_2.set_point_position (-100, -100)
		world.extend (move_handle_18_2)

		-- Tile 19_2
		create move_handle_19_2
		create tile_group_19_2
		draw_tile(tile_group_19_2, 19, pix_monomino_2)
		move_handle_19_2.extend (tile_group_19_2)
		tile_group_19_2.set_point_position (-100, -100)
		world.extend (move_handle_19_2)

		-- Tile 20_2
		create move_handle_20_2
		create tile_group_20_2
		draw_tile(tile_group_20_2, 20, pix_monomino_2)
		move_handle_20_2.extend (tile_group_20_2)
		tile_group_20_2.set_point_position (-100, -100)
		world.extend (move_handle_20_2)

		-- Change color
				-- Tile 0_3
		create move_handle_0_3
		create tile_group_0_3
		draw_tile(tile_group_0_3, 0, pix_monomino_3)
		move_handle_0_3.extend (tile_group_0_3)
		tile_group_0_3.set_point_position (-100, -100)
		world.extend(move_handle_0_3)

		-- Tile 1_3
		create move_handle_1_3
		create tile_group_1_3
		draw_tile(tile_group_1_3, 1, pix_monomino_3)
		move_handle_1_3.extend (tile_group_1_3)
		tile_group_1_3.set_point_position (-100, -100)
		world.extend (move_handle_1_3)

		-- Tile 2_3
		create move_handle_2_3
		create tile_group_2_3
		draw_tile(tile_group_2_3, 2, pix_monomino_3)
		move_handle_2_3.extend (tile_group_2_3)
		tile_group_2_3.set_point_position (-100, -100)
		world.extend (move_handle_2_3)

		-- Tile 3_3
		create move_handle_3_3
		create tile_group_3_3
		draw_tile(tile_group_3_3, 3, pix_monomino_3)
		move_handle_3_3.extend (tile_group_3_3)
		tile_group_3_3.set_point_position (-100, -100)
		world.extend (move_handle_3_3)

		-- Tile 4_3
		create move_handle_4_3
		create tile_group_4_3
		draw_tile(tile_group_4_3, 4, pix_monomino_3)
		move_handle_4_3.extend (tile_group_4_3)
		tile_group_4_3.set_point_position (-100, -100)
		world.extend (move_handle_4_3)

		-- Tile 5_3
		create move_handle_5_3
		create tile_group_5_3
		draw_tile(tile_group_5_3, 5, pix_monomino_3)
		move_handle_5_3.extend (tile_group_5_3)
		tile_group_5_3.set_point_position (-100, -100)
		world.extend (move_handle_5_3)

		-- Tile 6_3
		create move_handle_6_3
		create tile_group_6_3
		draw_tile(tile_group_6_3, 6, pix_monomino_3)
		move_handle_6_3.extend (tile_group_6_3)
		tile_group_6_3.set_point_position (-100, -100)
		world.extend (move_handle_6_3)

		-- Tile 7_3
		create move_handle_7_3
		create tile_group_7_3
		draw_tile(tile_group_7_3, 7, pix_monomino_3)
		move_handle_7_3.extend (tile_group_7_3)
		tile_group_7_3.set_point_position (-100, -100)
		world.extend (move_handle_7_3)

		-- Tile_8_3
		create move_handle_8_3
		create tile_group_8_3
		draw_tile(tile_group_8_3, 8, pix_monomino_3)
		move_handle_8_3.extend (tile_group_8_3)
		tile_group_8_3.set_point_position (-100, -100)
		world.extend (move_handle_8_3)

		-- Tile 9_3
		create move_handle_9_3
		create tile_group_9_3
		draw_tile(tile_group_9_3, 9, pix_monomino_3)
		move_handle_9_3.extend (tile_group_9_3)
		tile_group_9_3.set_point_position (-100, -100)
		world.extend (move_handle_9_3)

		-- Tile 10_3
		create move_handle_10_3
		create tile_group_10_3
		draw_tile(tile_group_10_3, 10 ,pix_monomino_3)
		move_handle_10_3.extend (tile_group_10_3)
		tile_group_10_3.set_point_position (-100, -100)
		world.extend (move_handle_10_3)

		-- Tile 11_3
		create move_handle_11_3
		create tile_group_11_3
		draw_tile(tile_group_11_3, 11, pix_monomino_3)
		move_handle_11_3.extend (tile_group_11_3)
		tile_group_11_3.set_point_position (-100, -100)
		world.extend (move_handle_11_3)

		-- Tile 12_3
		create move_handle_12_3
		create tile_group_12_3
		draw_tile(tile_group_12_3, 12, pix_monomino_3)
		move_handle_12_3.extend (tile_group_12_3)
		tile_group_12_3.set_point_position (-100, -100)
		world.extend (move_handle_12_3)

		-- Tile 13_3
		create move_handle_13_3
		create tile_group_13_3
		draw_tile(tile_group_13_3, 13, pix_monomino_3)
		move_handle_13_3.extend (tile_group_13_3)
		tile_group_13_3.set_point_position (-100, -100)
		world.extend (move_handle_13_3)

		-- Tile 14_3
		create move_handle_14_3
		create tile_group_14_3
		draw_tile(tile_group_14_3, 14, pix_monomino_3)
		move_handle_14_3.extend (tile_group_14_3)
		tile_group_14_3.set_point_position (-100, -100)
		world.extend (move_handle_14_3)

		-- Tile 15_3
		create move_handle_15_3
		create tile_group_15_3
		draw_tile(tile_group_15_3, 15, pix_monomino_3)
		move_handle_15_3.extend (tile_group_15_3)
		tile_group_15_3.set_point_position (-100, -100)
		world.extend (move_handle_15_3)

		-- Tile 16_3
		create move_handle_16_3
		create tile_group_16_3
		draw_tile(tile_group_16_3, 16, pix_monomino_3)
		move_handle_16_3.extend (tile_group_16_3)
		tile_group_16_3.set_point_position (-100, -100)
		world.extend (move_handle_16_3)

		-- Tile 17_3
		create move_handle_17_3
		create tile_group_17_3
		draw_tile(tile_group_17_3, 17, pix_monomino_3)
		move_handle_17_3.extend (tile_group_17_3)
		tile_group_17_3.set_point_position (-100, -100)
		world.extend (move_handle_17_3)

		-- Tile 18_3
		create move_handle_18_3
		create tile_group_18_3
		draw_tile(tile_group_18_3, 18, pix_monomino_3)
		move_handle_18_3.extend (tile_group_18_3)
		tile_group_18_3.set_point_position (-100, -100)
		world.extend (move_handle_18_3)

		-- Tile 19_3
		create move_handle_19_3
		create tile_group_19_3
		draw_tile(tile_group_19_3, 19, pix_monomino_3)
		move_handle_19_3.extend (tile_group_19_3)
		tile_group_19_3.set_point_position (-100, -100)
		world.extend (move_handle_19_3)

		-- Tile 20_3
		create move_handle_20_3
		create tile_group_20_3
		draw_tile(tile_group_20_3, 20, pix_monomino_3)
		move_handle_20_3.extend (tile_group_20_3)
		tile_group_20_3.set_point_position (-100, -100)
		world.extend (move_handle_20_3)


		-- Enabling the correct tiles
		if a_color = 1 then
			-- Inserting on board
			tile_group_0.set_point_position (-10,-10)
			tile_group_1.set_point_position (25, -10)
			tile_group_2.set_point_position (195, 415)
			tile_group_3.set_point_position (85, -10)
			tile_group_4.set_point_position (-10, 70)
			tile_group_5.set_point_position (50, 70)
			tile_group_6.set_point_position (-10, 30)
			tile_group_7.set_point_position (135, 70)
			tile_group_8.set_point_position (-10, 135)
			tile_group_9.set_point_position (70, 135)
			tile_group_10.set_point_position (-10, 200)
			tile_group_11.set_point_position (75, 200)
			tile_group_12.set_point_position (80, 415)
			tile_group_13.set_point_position (125, 5)
			tile_group_14.set_point_position (220, 30)
			tile_group_15.set_point_position (160, 200)
			tile_group_16.set_point_position (160, 290)
			tile_group_17.set_point_position (-10, 290)
			tile_group_18.set_point_position (65, 290)
			tile_group_19.set_point_position (-10, 390)
			tile_group_20.set_point_position (100, 355)

			-- Enabling agents
			move_handle_0.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,-10,tile_group_0, move_handle_0))
			move_handle_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,25,-10,tile_group_1,move_handle_1))
			move_handle_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,415,tile_group_2,move_handle_2 ))
			move_handle_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,85,-10,tile_group_3,move_handle_3 ))
			move_handle_4.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,70,tile_group_4,move_handle_4 ))
			move_handle_5.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,50,70,tile_group_5, move_handle_5 ))
			move_handle_6.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,30,tile_group_6, move_handle_6 ))
			move_handle_7.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,70,tile_group_7,move_handle_7 ))
			move_handle_8.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,135,tile_group_8,move_handle_8 ))
			move_handle_9.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,70,135,tile_group_9, move_handle_9 ))
			move_handle_10.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,200,tile_group_10, move_handle_10 ))
			move_handle_11.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,200,tile_group_11,move_handle_11 ))
			move_handle_12.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,80,415,tile_group_12,move_handle_12 ))
			move_handle_13.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,125,5,tile_group_13,move_handle_13))
			move_handle_14.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,220,30,tile_group_14,move_handle_14))
			move_handle_15.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,200,tile_group_15,move_handle_15 ))
			move_handle_16.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,290,tile_group_16,move_handle_16))
			move_handle_17.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,290,tile_group_17,move_handle_17))
			move_handle_18.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,65,290,tile_group_18,move_handle_18))
			move_handle_19.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,390,tile_group_19,move_handle_19))
			move_handle_20.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,355,tile_group_20,move_handle_20 ))

		elseif a_color = 2 then
			-- Inserting on board
			tile_group_0_1.set_point_position (-10,-10)
			tile_group_1_1.set_point_position (25, -10)
			tile_group_2_1.set_point_position (195, 415)
			tile_group_3_1.set_point_position (85, -10)
			tile_group_4_1.set_point_position (-10, 70)
			tile_group_5_1.set_point_position (50, 70)
			tile_group_6_1.set_point_position (-10, 30)
			tile_group_7_1.set_point_position (135, 70)
			tile_group_8_1.set_point_position (-10, 135)
			tile_group_9_1.set_point_position (70, 135)
			tile_group_10_1.set_point_position (-10, 200)
			tile_group_11_1.set_point_position (75, 200)
			tile_group_12_1.set_point_position (80, 415)
			tile_group_13_1.set_point_position (125, 5)
			tile_group_14_1.set_point_position (220, 30)
			tile_group_15_1.set_point_position (160, 200)
			tile_group_16_1.set_point_position (160, 290)
			tile_group_17_1.set_point_position (-10, 290)
			tile_group_18_1.set_point_position (65, 290)
			tile_group_19_1.set_point_position (-10, 390)
			tile_group_20_1.set_point_position (100, 355)

			-- Enabling Agents
			move_handle_0_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,-10,tile_group_0_1, move_handle_0_1))
			move_handle_1_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,25,-10,tile_group_1_1,move_handle_1_1))
			move_handle_2_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,415,tile_group_2_1,move_handle_2_1 ))
			move_handle_3_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,85,-10,tile_group_3_1,move_handle_3_1 ))
			move_handle_4_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,70,tile_group_4_1,move_handle_4_1 ))
			move_handle_5_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,50,70,tile_group_5_1, move_handle_5_1 ))
			move_handle_6_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,30,tile_group_6_1, move_handle_6_1 ))
			move_handle_7_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,70,tile_group_7_1,move_handle_7_1 ))
			move_handle_8_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,135,tile_group_8_1,move_handle_8_1 ))
			move_handle_9_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,70,135,tile_group_9_1, move_handle_9_1 ))
			move_handle_10_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,200,tile_group_10_1, move_handle_10_1 ))
			move_handle_11_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,200,tile_group_11_1,move_handle_11_1 ))
			move_handle_12_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,80,415,tile_group_12_1,move_handle_12_1 ))
			move_handle_13_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,125,5,tile_group_13_1,move_handle_13_1))
			move_handle_14_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,220,30,tile_group_14_1,move_handle_14_1))
			move_handle_15_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,200,tile_group_15_1,move_handle_15_1 ))
			move_handle_16_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,290,tile_group_16_1,move_handle_16_1))
			move_handle_17_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,290,tile_group_17_1,move_handle_17_1))
			move_handle_18_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,65,290,tile_group_18_1,move_handle_18_1))
			move_handle_19_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,390,tile_group_19_1,move_handle_19_1))
			move_handle_20_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,355,tile_group_20_1,move_handle_20_1 ))

		elseif a_color = 3 then
			-- Inserting on board
			tile_group_0_2.set_point_position (-10,-10)
			tile_group_1_2.set_point_position (25, -10)
			tile_group_2_2.set_point_position (195, 415)
			tile_group_3_2.set_point_position (85, -10)
			tile_group_4_2.set_point_position (-10, 70)
			tile_group_5_2.set_point_position (50, 70)
			tile_group_6_2.set_point_position (-10, 30)
			tile_group_7_2.set_point_position (135, 70)
			tile_group_8_2.set_point_position (-10, 135)
			tile_group_9_2.set_point_position (70, 135)
			tile_group_10_2.set_point_position (-10, 200)
			tile_group_11_2.set_point_position (75, 200)
			tile_group_12_2.set_point_position (80, 415)
			tile_group_13_2.set_point_position (125, 5)
			tile_group_14_2.set_point_position (220, 30)
			tile_group_15_2.set_point_position (160, 200)
			tile_group_16_2.set_point_position (160, 290)
			tile_group_17_2.set_point_position (-10, 290)
			tile_group_18_2.set_point_position (65, 290)
			tile_group_19_2.set_point_position (-10, 390)
			tile_group_20_2.set_point_position (100, 355)

			-- Enabling Agents
			move_handle_0_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,-10,tile_group_0_2, move_handle_0_2))
			move_handle_1_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,25,-10,tile_group_1_2,move_handle_1_2))
			move_handle_2_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,415,tile_group_2_2,move_handle_2_2 ))
			move_handle_3_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,85,-10,tile_group_3_2,move_handle_3_2 ))
			move_handle_4_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,70,tile_group_4_2,move_handle_4_2 ))
			move_handle_5_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,50,70,tile_group_5_2, move_handle_5_2 ))
			move_handle_6_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,30,tile_group_6_2, move_handle_6_2 ))
			move_handle_7_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,70,tile_group_7_2,move_handle_7_2 ))
			move_handle_8_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,135,tile_group_8_2,move_handle_8_2 ))
			move_handle_9_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,70,135,tile_group_9_2, move_handle_9_2 ))
			move_handle_10_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,200,tile_group_10_2, move_handle_10_2 ))
			move_handle_11_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,200,tile_group_11_2,move_handle_11_2 ))
			move_handle_12_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,80,415,tile_group_12_2,move_handle_12_2 ))
			move_handle_13_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,125,5,tile_group_13_2,move_handle_13_2))
			move_handle_14_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,220,30,tile_group_14_2,move_handle_14_2))
			move_handle_15_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,200,tile_group_15_2,move_handle_15_2 ))
			move_handle_16_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,290,tile_group_16_2,move_handle_16_2))
			move_handle_17_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,290,tile_group_17_2,move_handle_17_2))
			move_handle_18_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,65,290,tile_group_18_2,move_handle_18_2))
			move_handle_19_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,390,tile_group_19_2,move_handle_19_2))
			move_handle_20_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,355,tile_group_20_2,move_handle_20_2 ))

		elseif a_color = 4 then
			-- Inserting on board
			tile_group_0_3.set_point_position (-10,-10)
			tile_group_1_3.set_point_position (25, -10)
			tile_group_2_3.set_point_position (195, 415)
			tile_group_3_3.set_point_position (85, -10)
			tile_group_4_3.set_point_position (-10, 70)
			tile_group_5_3.set_point_position (50, 70)
			tile_group_6_3.set_point_position (-10, 30)
			tile_group_7_3.set_point_position (135, 70)
			tile_group_8_3.set_point_position (-10, 135)
			tile_group_9_3.set_point_position (70, 135)
			tile_group_10_3.set_point_position (-10, 200)
			tile_group_11_3.set_point_position (75, 200)
			tile_group_12_3.set_point_position (80, 415)
			tile_group_13_3.set_point_position (125, 5)
			tile_group_14_3.set_point_position (220, 30)
			tile_group_15_3.set_point_position (160, 200)
			tile_group_16_3.set_point_position (160, 290)
			tile_group_17_3.set_point_position (-10, 290)
			tile_group_18_3.set_point_position (65, 290)
			tile_group_19_3.set_point_position (-10, 390)
			tile_group_20_3.set_point_position (100, 355)

			-- Enabling Agents
			move_handle_0_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,-10,tile_group_0_3, move_handle_0_3))
			move_handle_1_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,25,-10,tile_group_1_3,move_handle_1_3))
			move_handle_2_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,415,tile_group_2_3,move_handle_2_3 ))
			move_handle_3_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,85,-10,tile_group_3_3,move_handle_3_3 ))
			move_handle_4_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,70,tile_group_4_3,move_handle_4_3 ))
			move_handle_5_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,50,70,tile_group_5_3, move_handle_5_3 ))
			move_handle_6_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,30,tile_group_6_3, move_handle_6_3 ))
			move_handle_7_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,70,tile_group_7_3,move_handle_7_3 ))
			move_handle_8_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,135,tile_group_8_3,move_handle_8_3 ))
			move_handle_9_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,70,135,tile_group_9_3, move_handle_9_3 ))
			move_handle_10_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,200,tile_group_10_3, move_handle_10_3))
			move_handle_11_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,200,tile_group_11_3,move_handle_11_3 ))
			move_handle_12_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,80,415,tile_group_12_3,move_handle_12_3 ))
			move_handle_13_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,125,5,tile_group_13_3,move_handle_13_3))
			move_handle_14_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,220,30,tile_group_14_3,move_handle_14_3))
			move_handle_15_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,200,tile_group_15_3,move_handle_15_3 ))
			move_handle_16_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,290,tile_group_16_3,move_handle_16_3))
			move_handle_17_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,290,tile_group_17_3,move_handle_17_3))
			move_handle_18_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,65,290,tile_group_18_3,move_handle_18_3))
			move_handle_19_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,390,tile_group_19_3,move_handle_19_3))
			move_handle_20_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,355,tile_group_20_3,move_handle_20_3 ))
		end

		-- 42 tile mode
		if a_color_1 = 1 then
			-- Inserting on board
			tile_group_0.set_point_position (705, 610)
			tile_group_1.set_point_position (210, 490)
			tile_group_2.set_point_position (545, 550)
			tile_group_3.set_point_position (585, 490)
			tile_group_4.set_point_position (270, 490)
			tile_group_5.set_point_position (330, 490)
			tile_group_6.set_point_position (160, 525)
			tile_group_7.set_point_position (415, 490)
			tile_group_8.set_point_position (500, 490)
			tile_group_9.set_point_position (510, 585)
			tile_group_10.set_point_position (255, 560)
			tile_group_11.set_point_position (620, 560)
			tile_group_12.set_point_position (100, 490)
			tile_group_13.set_point_position (425, 560)
			tile_group_14.set_point_position (705, 480)
			tile_group_15.set_point_position (135, 560)
			tile_group_16.set_point_position (340, 560)
			tile_group_17.set_point_position (75, 560)
			tile_group_18.set_point_position (195, 560)
			tile_group_19.set_point_position (-10, 560)
			tile_group_20.set_point_position (-10, 490)

			--Enabling Agents
			move_handle_0.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,610,tile_group_0, move_handle_0))
			move_handle_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,210,490,tile_group_1,move_handle_1))
			move_handle_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,545,550,tile_group_2,move_handle_2))
			move_handle_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,585,490,tile_group_3,move_handle_3))
			move_handle_4.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,270,490,tile_group_4,move_handle_4))
			move_handle_5.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,330,490,tile_group_5, move_handle_5 ))
			move_handle_6.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,525,tile_group_6, move_handle_6))
			move_handle_7.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,415,490,tile_group_7,move_handle_7 ))
			move_handle_8.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,500,490,tile_group_8,move_handle_8 ))
			move_handle_9.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,510,585,tile_group_9, move_handle_9 ))
			move_handle_10.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,255,560,tile_group_10, move_handle_10 ))
			move_handle_11.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,620,560,tile_group_11,move_handle_11 ))
			move_handle_12.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,490,tile_group_12,move_handle_12 ))
			move_handle_13.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,425,560,tile_group_13,move_handle_13))
			move_handle_14.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,480,tile_group_14,move_handle_14))
			move_handle_15.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,560,tile_group_15,move_handle_15 ))
			move_handle_16.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,340,560,tile_group_16,move_handle_16))
			move_handle_17.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,560,tile_group_17,move_handle_17))
			move_handle_18.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,560,tile_group_18,move_handle_18))
			move_handle_19.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,560,tile_group_19,move_handle_19))
			move_handle_20.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,490,tile_group_20,move_handle_20 ))

		elseif a_color_1 = 2 then
			-- Inserting on board
			tile_group_0_1.set_point_position (705, 610)
			tile_group_1_1.set_point_position (210, 490)
			tile_group_2_1.set_point_position (545, 550)
			tile_group_3_1.set_point_position (585, 490)
			tile_group_4_1.set_point_position (270, 490)
			tile_group_5_1.set_point_position (330, 490)
			tile_group_6_1.set_point_position (160, 525)
			tile_group_7_1.set_point_position (415, 490)
			tile_group_8_1.set_point_position (500, 490)
			tile_group_9_1.set_point_position (510, 585)
			tile_group_10_1.set_point_position (255, 560)
			tile_group_11_1.set_point_position (620, 560)
			tile_group_12_1.set_point_position (100, 490)
			tile_group_13_1.set_point_position (425, 560)
			tile_group_14_1.set_point_position (705, 480)
			tile_group_15_1.set_point_position (135, 560)
			tile_group_16_1.set_point_position (340, 560)
			tile_group_17_1.set_point_position (75, 560)
			tile_group_18_1.set_point_position (195, 560)
			tile_group_19_1.set_point_position (-10, 560)
			tile_group_20_1.set_point_position (-10, 490)

			-- Enabling Agents
			move_handle_0_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,610,tile_group_0_1, move_handle_0_1))
			move_handle_1_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,210,490,tile_group_1_1,move_handle_1_1))
			move_handle_2_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,545,550,tile_group_2_1,move_handle_2_1))
			move_handle_3_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,585,490,tile_group_3_1,move_handle_3_1))
			move_handle_4_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,270,490,tile_group_4_1,move_handle_4_1))
			move_handle_5_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,330,490,tile_group_5_1, move_handle_5_1 ))
			move_handle_6_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,525,tile_group_6_1, move_handle_6_1))
			move_handle_7_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,415,490,tile_group_7_1,move_handle_7_1 ))
			move_handle_8_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,500,490,tile_group_8_1,move_handle_8_1 ))
			move_handle_9_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,510,585,tile_group_9_1, move_handle_9_1 ))
			move_handle_10_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,255,560,tile_group_10_1, move_handle_10_1 ))
			move_handle_11_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,620,560,tile_group_11_1,move_handle_11_1 ))
			move_handle_12_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,490,tile_group_12_1,move_handle_12_1 ))
			move_handle_13_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,425,560,tile_group_13_1,move_handle_13_1))
			move_handle_14_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,480,tile_group_14_1,move_handle_14_1))
			move_handle_15_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,560,tile_group_15_1,move_handle_15_1 ))
			move_handle_16_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,340,560,tile_group_16_1,move_handle_16_1))
			move_handle_17_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,560,tile_group_17_1,move_handle_17_1))
			move_handle_18_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,560,tile_group_18_1,move_handle_18_1))
			move_handle_19_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,560,tile_group_19_1,move_handle_19_1))
			move_handle_20_1.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,490,tile_group_20_1,move_handle_20_1 ))

		elseif a_color_1 = 3 then
			--Inserting on board
			tile_group_0_2.set_point_position (705, 610)
			tile_group_1_2.set_point_position (210, 490)
			tile_group_2_2.set_point_position (545, 550)
			tile_group_3_2.set_point_position (585, 490)
			tile_group_4_2.set_point_position (270, 490)
			tile_group_5_2.set_point_position (330, 490)
			tile_group_6_2.set_point_position (160, 525)
			tile_group_7_2.set_point_position (415, 490)
			tile_group_8_2.set_point_position (500, 490)
			tile_group_9_2.set_point_position (510, 585)
			tile_group_10_2.set_point_position (255, 560)
			tile_group_11_2.set_point_position (620, 560)
			tile_group_12_2.set_point_position (100, 490)
			tile_group_13_2.set_point_position (425, 560)
			tile_group_14_2.set_point_position (705, 480)
			tile_group_15_2.set_point_position (135, 560)
			tile_group_16_2.set_point_position (340, 560)
			tile_group_17_2.set_point_position (75, 560)
			tile_group_18_2.set_point_position (195, 560)
			tile_group_19_2.set_point_position (-10, 560)
			tile_group_20_2.set_point_position (-10, 490)

			--Enabling Agents
			move_handle_0_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,610,tile_group_0_2, move_handle_0_2))
			move_handle_1_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,210,490,tile_group_1_2,move_handle_1_2))
			move_handle_2_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,545,550,tile_group_2_2,move_handle_2_2))
			move_handle_3_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,585,490,tile_group_3_2,move_handle_3_2))
			move_handle_4_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,270,490,tile_group_4_2,move_handle_4_2))
			move_handle_5_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,330,490,tile_group_5_2, move_handle_5_2 ))
			move_handle_6_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,525,tile_group_6_2, move_handle_6_2))
			move_handle_7_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,415,490,tile_group_7_2,move_handle_7_2 ))
			move_handle_8_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,500,490,tile_group_8_2,move_handle_8_2 ))
			move_handle_9_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,510,585,tile_group_9_2, move_handle_9_2 ))
			move_handle_10_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,255,560,tile_group_10_2, move_handle_10_2 ))
			move_handle_11_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,620,560,tile_group_11_2,move_handle_11_2 ))
			move_handle_12_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,490,tile_group_12_2,move_handle_12_2 ))
			move_handle_13_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,425,560,tile_group_13_2,move_handle_13_2))
			move_handle_14_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,480,tile_group_14_2,move_handle_14_2))
			move_handle_15_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,560,tile_group_15_2,move_handle_15_2 ))
			move_handle_16_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,340,560,tile_group_16_2,move_handle_16_2))
			move_handle_17_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,560,tile_group_17_2,move_handle_17_2))
			move_handle_18_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,560,tile_group_18_2,move_handle_18_2))
			move_handle_19_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,560,tile_group_19_2,move_handle_19_2))
			move_handle_20_2.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,490,tile_group_20_2,move_handle_20_2 ))

		elseif a_color_1 = 4 then
			-- Insert on board
			tile_group_0_3.set_point_position (705, 610)
			tile_group_1_3.set_point_position (210, 490)
			tile_group_2_3.set_point_position (545, 550)
			tile_group_3_3.set_point_position (585, 490)
			tile_group_4_3.set_point_position (270, 490)
			tile_group_5_3.set_point_position (330, 490)
			tile_group_6_3.set_point_position (160, 525)
			tile_group_7_3.set_point_position (415, 490)
			tile_group_8_3.set_point_position (500, 490)
			tile_group_9_3.set_point_position (510, 585)
			tile_group_10_3.set_point_position (255, 560)
			tile_group_11_3.set_point_position (620, 560)
			tile_group_12_3.set_point_position (100, 490)
			tile_group_13_3.set_point_position (425, 560)
			tile_group_14_3.set_point_position (705, 480)
			tile_group_15_3.set_point_position (135, 560)
			tile_group_16_3.set_point_position (340, 560)
			tile_group_17_3.set_point_position (75, 560)
			tile_group_18_3.set_point_position (195, 560)
			tile_group_19_3.set_point_position (-10, 560)
			tile_group_20_3.set_point_position (-10, 490)

			-- Enabling Agents
			move_handle_0_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,610,tile_group_0_3, move_handle_0_3))
			move_handle_1_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,210,490,tile_group_1_3,move_handle_1_3))
			move_handle_2_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,545,550,tile_group_2_3,move_handle_2_3))
			move_handle_3_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,585,490,tile_group_3_3,move_handle_3_3))
			move_handle_4_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,270,490,tile_group_4_3,move_handle_4_3))
			move_handle_5_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,330,490,tile_group_5_3, move_handle_5_3 ))
			move_handle_6_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,160,525,tile_group_6_3, move_handle_6_3))
			move_handle_7_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,415,490,tile_group_7_3,move_handle_7_3 ))
			move_handle_8_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,500,490,tile_group_8_3,move_handle_8_3 ))
			move_handle_9_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,510,585,tile_group_9_3, move_handle_9_3 ))
			move_handle_10_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,255,560,tile_group_10_3, move_handle_10_3 ))
			move_handle_11_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,620,560,tile_group_11_3,move_handle_11_3 ))
			move_handle_12_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,100,490,tile_group_12_3,move_handle_12_3 ))
			move_handle_13_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,425,560,tile_group_13_3,move_handle_13_3))
			move_handle_14_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,705,480,tile_group_14_3,move_handle_14_3))
			move_handle_15_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,135,560,tile_group_15_3,move_handle_15_3 ))
			move_handle_16_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,340,560,tile_group_16_3,move_handle_16_3))
			move_handle_17_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,75,560,tile_group_17_3,move_handle_17_3))
			move_handle_18_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,195,560,tile_group_18_3,move_handle_18_3))
			move_handle_19_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,560,tile_group_19_3,move_handle_19_3))
			move_handle_20_3.pointer_button_release_actions.extend (agent tile_drop(?,?,?,?,?,?,?,?,-10,490,tile_group_20_3,move_handle_20_3 ))
		end
	end

-- Tile code finder
find_tile_id(a_tile: EV_MODEL_GROUP): INTEGER
	local
		l_tile: INTEGER
	do
		if a_tile = tile_group_0 or a_tile = tile_group_0_1 or a_tile = tile_group_0_2 or a_tile = tile_group_0_3 then
			l_tile := 0
		elseif a_tile = tile_group_1 or a_tile = tile_group_1_1 or a_tile = tile_group_1_2 or a_tile = tile_group_1_3 then
			l_tile := 1
		elseif a_tile = tile_group_2 or a_tile = tile_group_2_1 or a_tile = tile_group_2_2 or a_tile = tile_group_2_3 then
			l_tile := 2
		elseif a_tile = tile_group_3 or a_tile = tile_group_3_1 or a_tile = tile_group_3_2 or a_tile = tile_group_3_3 then
			l_tile := 3
		elseif a_tile = tile_group_4 or a_tile = tile_group_4_1 or a_tile = tile_group_4_2 or a_tile = tile_group_4_3 then
			l_tile := 4
		elseif a_tile = tile_group_5 or a_tile = tile_group_5_1 or a_tile = tile_group_5_2 or a_tile = tile_group_5_3 then
			l_tile := 5
		elseif a_tile = tile_group_6 or a_tile = tile_group_6_1 or a_tile = tile_group_6_2 or a_tile = tile_group_6_3 then
			l_tile := 6
		elseif a_tile = tile_group_7 or a_tile = tile_group_7_1 or a_tile = tile_group_7_2 or a_tile = tile_group_7_3 then
			l_tile := 7
		elseif a_tile = tile_group_8 or a_tile = tile_group_8_1 or a_tile = tile_group_8_2 or a_tile = tile_group_8_3 then
			l_tile := 8
		elseif a_tile = tile_group_9 or a_tile = tile_group_9_1 or a_tile = tile_group_9_2 or a_tile = tile_group_9_3 then
			l_tile := 9
		elseif a_tile = tile_group_10 or a_tile = tile_group_10_1 or a_tile = tile_group_10_2 or a_tile = tile_group_10_3 then
			l_tile := 10
		elseif a_tile = tile_group_11 or a_tile = tile_group_11_1 or a_tile = tile_group_11_2 or a_tile = tile_group_11_3 then
			l_tile := 11
		elseif a_tile = tile_group_12 or a_tile = tile_group_12_1 or a_tile = tile_group_12_2 or a_tile = tile_group_12_3 then
			l_tile := 12
		elseif a_tile = tile_group_13 or a_tile = tile_group_13_1 or a_tile = tile_group_13_2 or a_tile = tile_group_13_3 then
			l_tile := 13
		elseif a_tile = tile_group_14 or a_tile = tile_group_14_1 or a_tile = tile_group_14_2 or a_tile = tile_group_14_3 then
			l_tile := 14
		elseif a_tile = tile_group_15 or a_tile = tile_group_15_1 or a_tile = tile_group_15_2 or a_tile = tile_group_15_3 then
			l_tile := 15
		elseif a_tile = tile_group_16 or a_tile = tile_group_16_1 or a_tile = tile_group_16_2 or a_tile = tile_group_16_3  then
			l_tile := 16
		elseif a_tile = tile_group_17 or a_tile = tile_group_17_1 or a_tile = tile_group_17_2 or a_tile = tile_group_17_3 then
			l_tile := 17
		elseif a_tile = tile_group_18 or a_tile = tile_group_18_1 or a_tile = tile_group_18_2 or a_tile = tile_group_18_3 then
			l_tile := 18
		elseif a_tile = tile_group_19 or a_tile = tile_group_19_1 or a_tile = tile_group_19_2 or a_tile = tile_group_19_3  then
			l_tile := 19
		elseif a_tile = tile_group_20 or a_tile = tile_group_20_1 or a_tile = tile_group_20_2 or a_tile = tile_group_20_3  then
			l_tile := 20
		end

		Result:= l_tile
	end


-- Tile color finder
find_tile_color(a_tile: EV_MODEL_GROUP): INTEGER
	local
		l_tile: INTEGER
	do
		if a_tile = tile_group_0 then
			l_tile := 0
		elseif a_tile = tile_group_1 then
			l_tile := 1
		elseif a_tile = tile_group_2 then
			l_tile := 2
		elseif a_tile = tile_group_3 then
			l_tile := 3
		elseif a_tile = tile_group_4 then
			l_tile := 4
		elseif a_tile = tile_group_5 then
			l_tile := 5
		elseif a_tile = tile_group_6 then
			l_tile := 6
		elseif a_tile = tile_group_7 then
			l_tile := 7
		elseif a_tile = tile_group_8 then
			l_tile := 8
		elseif a_tile = tile_group_9 then
			l_tile := 9
		elseif a_tile = tile_group_10 then
			l_tile := 10
		elseif a_tile = tile_group_11 then
			l_tile := 11
		elseif a_tile = tile_group_12 then
			l_tile := 12
		elseif a_tile = tile_group_13 then
			l_tile := 13
		elseif a_tile = tile_group_14 then
			l_tile := 14
		elseif a_tile = tile_group_15 then
			l_tile := 15
		elseif a_tile = tile_group_16 then
			l_tile := 16
		elseif a_tile = tile_group_17 then
			l_tile := 17
		elseif a_tile = tile_group_18 then
			l_tile := 18
		elseif a_tile = tile_group_19 then
			l_tile := 19
		elseif a_tile = tile_group_20 then
			l_tile := 20

		elseif a_tile = tile_group_0_1 then
			l_tile := 21
		elseif a_tile = tile_group_1_1 then
			l_tile := 22
		elseif a_tile = tile_group_2_1 then
			l_tile := 23
		elseif a_tile = tile_group_3_1 then
			l_tile := 24
		elseif a_tile = tile_group_4_1 then
			l_tile := 25
		elseif a_tile = tile_group_5_1 then
			l_tile := 26
		elseif a_tile = tile_group_6_1 then
			l_tile := 27
		elseif a_tile = tile_group_7_1 then
			l_tile := 28
		elseif a_tile = tile_group_8_1 then
			l_tile := 29
		elseif a_tile = tile_group_9_1 then
			l_tile := 30
		elseif a_tile = tile_group_10_1 then
			l_tile := 31
		elseif a_tile = tile_group_11_1 then
			l_tile := 32
		elseif a_tile = tile_group_12_1 then
			l_tile := 33
		elseif a_tile = tile_group_13_1 then
			l_tile := 34
		elseif a_tile = tile_group_14_1 then
			l_tile := 35
		elseif a_tile = tile_group_15_1 then
			l_tile := 36
		elseif a_tile = tile_group_16_1 then
			l_tile := 37
		elseif a_tile = tile_group_17_1 then
			l_tile := 38
		elseif a_tile = tile_group_18_1 then
			l_tile := 39
		elseif a_tile = tile_group_19_1 then
			l_tile := 40
		elseif a_tile = tile_group_20_1 then
			l_tile := 41

		elseif a_tile = tile_group_0_2 then
			l_tile := 42
		elseif a_tile = tile_group_1_2 then
			l_tile := 43
		elseif a_tile = tile_group_2_2 then
			l_tile := 44
		elseif a_tile = tile_group_3_2 then
			l_tile := 45
		elseif a_tile = tile_group_4_2 then
			l_tile := 46
		elseif a_tile = tile_group_5_2 then
			l_tile := 47
		elseif a_tile = tile_group_6_2 then
			l_tile := 48
		elseif a_tile = tile_group_7_2 then
			l_tile := 49
		elseif a_tile = tile_group_8_2 then
			l_tile := 50
		elseif a_tile = tile_group_9_2 then
			l_tile := 51
		elseif a_tile = tile_group_10_2 then
			l_tile := 52
		elseif a_tile = tile_group_11_2 then
			l_tile := 53
		elseif a_tile = tile_group_12_2 then
			l_tile := 54
		elseif a_tile = tile_group_13_2 then
			l_tile := 55
		elseif a_tile = tile_group_14_2 then
			l_tile := 56
		elseif a_tile = tile_group_15_2 then
			l_tile := 57
		elseif a_tile = tile_group_16_2 then
			l_tile := 58
		elseif a_tile = tile_group_17_2 then
			l_tile := 59
		elseif a_tile = tile_group_18_2 then
			l_tile := 60
		elseif a_tile = tile_group_19_2 then
			l_tile := 61
		elseif a_tile = tile_group_20_2 then
			l_tile := 62

		elseif a_tile = tile_group_0_3 then
			l_tile := 63
		elseif a_tile = tile_group_1_3 then
			l_tile := 64
		elseif a_tile = tile_group_2_3 then
			l_tile := 65
		elseif a_tile = tile_group_3_3 then
			l_tile := 66
		elseif a_tile = tile_group_4_3 then
			l_tile := 67
		elseif a_tile = tile_group_5_3 then
			l_tile := 68
		elseif a_tile = tile_group_6_3 then
			l_tile := 69
		elseif a_tile = tile_group_7_3 then
			l_tile := 70
		elseif a_tile = tile_group_8_3 then
			l_tile := 71
		elseif a_tile = tile_group_9_3 then
			l_tile := 72
		elseif a_tile = tile_group_10_3 then
			l_tile := 73
		elseif a_tile = tile_group_11_3 then
			l_tile := 74
		elseif a_tile = tile_group_12_3 then
			l_tile := 75
		elseif a_tile = tile_group_13_3 then
			l_tile := 76
		elseif a_tile = tile_group_14_3 then
			l_tile := 77
		elseif a_tile = tile_group_15_3 then
			l_tile := 78
		elseif a_tile = tile_group_16_3 then
			l_tile := 79
		elseif a_tile = tile_group_17_3 then
			l_tile := 80
		elseif a_tile = tile_group_18_3 then
			l_tile := 81
		elseif a_tile = tile_group_19_3 then
			l_tile := 82
		elseif a_tile = tile_group_20_3 then
			l_tile := 83
		end

		if l_tile <= 20 then
			l_tile := 1
		elseif l_tile <=41 then
			l_tile := 2
		elseif l_tile <= 62 then
			l_tile := 3
		elseif l_tile <= 83 then
			l_tile :=4
		end

		Result := l_tile
	end

-- Tile drawer
draw_tile(a_tile_group: EV_MODEL_GROUP; a_tile_code: INTEGER; a_pix_monomino: EV_PIXMAP)
	do
		if a_tile_code = 0 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
		elseif a_tile_code = 1 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
		elseif a_tile_code = 2 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
		elseif a_tile_code = 3 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
		elseif a_tile_code = 4 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
		elseif a_tile_code = 5 then
			a_tile_group.extend (create_monomino(25, 50 , a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50 , a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 50 , a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
		elseif a_tile_code = 6 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(100, 25, a_pix_monomino))
		elseif a_tile_code = 7 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
		elseif a_tile_code = 8 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
		elseif a_tile_code = 9 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(100, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
		elseif a_tile_code = 10 then
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
		elseif a_tile_code = 11 then
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 75, a_pix_monomino))
		elseif a_tile_code = 12 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(100, 25, a_pix_monomino))
		elseif a_tile_code = 13 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
		elseif a_tile_code = 14 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 100, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 125, a_pix_monomino))
		elseif a_tile_code = 15 then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 75, a_pix_monomino))
		elseif a_tile_code = 16 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
		elseif a_tile_code = 17  then
			a_tile_group.extend (create_monomino(25, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 75, a_pix_monomino))
		elseif a_tile_code = 18  then
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 25, a_pix_monomino))
		elseif a_tile_code = 19  then
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 75, a_pix_monomino))
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 50, a_pix_monomino))
		elseif a_tile_code = 20 then
			a_tile_group.extend (create_monomino(25, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(75, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(100, 50, a_pix_monomino))
			a_tile_group.extend (create_monomino(50, 25, a_pix_monomino))
		end
	end

-- Creates logic board coordinates
board_position(a_x, a_y: INTEGER; a_tile: EV_MODEL_GROUP)
	local
		l_midle_x: INTEGER
		l_midle_y: INTEGER
	do
		-- Finding the x of the midle
		l_midle_x := ((a_x - 280+25 ) // 25)

		-- Finding the y of the midle
		if a_tile = tile_group_0 or a_tile = tile_group_1 or a_tile = tile_group_3 or a_tile = tile_group_6 or a_tile = tile_group_14 then
			l_midle_y := ((a_y + 25) // 25)

		elseif a_tile = tile_group_0_1 or a_tile = tile_group_1_1 or a_tile = tile_group_3_1 or a_tile = tile_group_6_1 or a_tile = tile_group_14_1 then
			l_midle_y := ((a_y + 25) // 25)

		elseif a_tile = tile_group_0_2 or a_tile = tile_group_1_2 or a_tile = tile_group_3_2 or a_tile = tile_group_6_2 or a_tile = tile_group_14_2 then
			l_midle_y := ((a_y + 25) // 25)

		elseif a_tile = tile_group_0_3 or a_tile = tile_group_1_3 or a_tile = tile_group_3_3 or a_tile = tile_group_6_3 or a_tile = tile_group_14_3 then
			l_midle_y := ((a_y + 25) // 25)

		else
			l_midle_y := ((a_y +50 )// 25)
		end

		-- Calculating position on logic board
		if a_tile = tile_group_2 or a_tile = tile_group_4 or a_tile = tile_group_9 or a_tile = tile_group_11 or a_tile = tile_group_15 or a_tile = tile_group_17 then
			logic_x := l_midle_x
			logic_y := l_midle_y - 1
		elseif a_tile = tile_group_0 or a_tile = tile_group_1 or a_tile = tile_group_3 or a_tile = tile_group_6 or a_tile = tile_group_14 then
			logic_x := l_midle_x
			logic_y := l_midle_y
		elseif a_tile = tile_group_7 or a_tile = tile_group_8 or a_tile = tile_group_13 then
			logic_x := l_midle_x + 2
			logic_y := l_midle_y - 1

		elseif a_tile = tile_group_2_1 or a_tile = tile_group_4_1 or a_tile = tile_group_9_1 or a_tile = tile_group_11_1 or a_tile = tile_group_15_1 or a_tile = tile_group_17_1 then
			logic_x := l_midle_x
			logic_y := l_midle_y - 1
		elseif a_tile = tile_group_0_1 or a_tile = tile_group_1_1 or a_tile = tile_group_3_1 or a_tile = tile_group_6_1 or a_tile = tile_group_14_1 then
			logic_x := l_midle_x
			logic_y := l_midle_y
		elseif a_tile = tile_group_7_1 or a_tile = tile_group_8_1 or a_tile = tile_group_13_1 then
			logic_x := l_midle_x + 2
			logic_y := l_midle_y - 1

		elseif a_tile = tile_group_2_2 or a_tile = tile_group_4_2 or a_tile = tile_group_9_2 or a_tile = tile_group_11_2 or a_tile = tile_group_15_2 or a_tile = tile_group_17_2 then
			logic_x := l_midle_x
			logic_y := l_midle_y - 1
		elseif a_tile = tile_group_0_2 or a_tile = tile_group_1_2 or a_tile = tile_group_3_2 or a_tile = tile_group_6_2 or a_tile = tile_group_14_2 then
			logic_x := l_midle_x
			logic_y := l_midle_y
		elseif a_tile = tile_group_7_2 or a_tile = tile_group_8_2 or a_tile = tile_group_13_2 then
			logic_x := l_midle_x + 2
			logic_y := l_midle_y - 1

		elseif a_tile = tile_group_2_3 or a_tile = tile_group_4_3 or a_tile = tile_group_9_3 or a_tile = tile_group_11_3 or a_tile = tile_group_15_3 or a_tile = tile_group_17_3 then
			logic_x := l_midle_x
			logic_y := l_midle_y - 1
		elseif a_tile = tile_group_0_3 or a_tile = tile_group_1_3 or a_tile = tile_group_3_3 or a_tile = tile_group_6_3 or a_tile = tile_group_14_3 then
			logic_x := l_midle_x
			logic_y := l_midle_y
		elseif a_tile = tile_group_7_3 or a_tile = tile_group_8_3 or a_tile = tile_group_13_3 then
			logic_x := l_midle_x + 2
			logic_y := l_midle_y - 1

		else
			logic_x := l_midle_x + 1
			logic_y := l_midle_y - 1
		end
			-- uncomment to debug
			--		io.putstring ("x given to logic: ")
			--		io.putint (logic_x)
			--		io.putstring ("%Ny given to logic: ")
			--		io.putint (logic_y)
			--		io.putstring ("%N--------------%N")
	end

--A tile is picked and droped somewhere
tile_drop(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32; a_init_x, a_init_y :INTEGER;a_tile: EV_MODEL_GROUP; a_handle: EV_MODEL_MOVE_HANDLE)
	local
		l_fix_x: INTEGER
		l_fix_y: INTEGER
		l_tile: INTEGER
		l_color: INTEGER
		l_valid_move: BOOLEAN
	do
		last_played_tile := a_tile
		last_played_handle := a_handle
		last_x := a_init_x
		last_y := a_init_y

		-- Fixing x
		if a_tile = tile_group_0 or a_tile = tile_group_14 then
			l_fix_x := ((a_tile.x // 25) *25)-20
		elseif a_tile = tile_group_6 or a_tile = tile_group_9 or  a_tile = tile_group_12 or a_tile = tile_group_20 then
			l_fix_x :=  ((a_tile.x // 25) *25)-20 -50

		elseif a_tile = tile_group_0_1 or a_tile = tile_group_14_1 then
			l_fix_x := ((a_tile.x // 25) *25)-20
		elseif a_tile = tile_group_6_1 or a_tile = tile_group_9_1 or  a_tile = tile_group_12_1 or a_tile = tile_group_20_1 then
			l_fix_x :=  ((a_tile.x // 25) *25)-20 -50

		elseif a_tile = tile_group_0_2 or a_tile = tile_group_14_2 then
			l_fix_x := ((a_tile.x // 25) *25)-20
		elseif a_tile = tile_group_6_2 or a_tile = tile_group_9_2 or  a_tile = tile_group_12_2 or a_tile = tile_group_20_2 then
			l_fix_x :=  ((a_tile.x // 25) *25)-20 -50

		elseif a_tile = tile_group_0_3 or a_tile = tile_group_14_3 then
			l_fix_x := ((a_tile.x // 25) *25)-20
		elseif a_tile = tile_group_6_3 or a_tile = tile_group_9_3 or  a_tile = tile_group_12_3 or a_tile = tile_group_20_3 then
			l_fix_x :=  ((a_tile.x // 25) *25)-20 -50

		else
			l_fix_x :=  ((a_tile.x // 25) *25)-20-25
		end


		-- fixing y
		if a_tile = tile_group_0 or a_tile = tile_group_1 or a_tile = tile_group_3 or a_tile = tile_group_6 then
			l_fix_y := ((a_tile.y // 25) *25)-25
		elseif a_tile = tile_group_14  then
			l_fix_y := ((a_tile.y // 25) *25)-25-50

		elseif a_tile = tile_group_0_1 or a_tile = tile_group_1_1 or a_tile = tile_group_3_1 or a_tile = tile_group_6_1 then
			l_fix_y := ((a_tile.y // 25) *25)-25
		elseif a_tile = tile_group_14_1  then
			l_fix_y := ((a_tile.y // 25) *25)-25-50

		elseif a_tile = tile_group_0_2 or a_tile = tile_group_1_2 or a_tile = tile_group_3_2 or a_tile = tile_group_6_2 then
			l_fix_y := ((a_tile.y // 25) *25)-25
		elseif a_tile = tile_group_14_2  then
			l_fix_y := ((a_tile.y // 25) *25)-25-50

		elseif a_tile = tile_group_0_3 or a_tile = tile_group_1_3 or a_tile = tile_group_3_3 or a_tile = tile_group_6_3 then
			l_fix_y := ((a_tile.y // 25) *25)-25
		elseif a_tile = tile_group_14_3  then
			l_fix_y := ((a_tile.y // 25) *25)-25-50

		else
			l_fix_y := ((a_tile.y // 25) *25)-25-25
		end

		-- Calculating the position to inform logic
		board_position(l_fix_x, l_fix_y, a_tile)

		-- Generating tile id for logic
		l_tile := find_tile_id(a_tile)

		-- Calculating color
		l_color := find_tile_color(a_tile)

		-- Checking the rules               the players id      the coordinates   the tile             the colour       the type
		l_valid_move := logic.make_a_move (logic.get_player_id, logic_x, logic_y, logic.get_game_tile (l_color-1, l_tile))

		-- Fixing tile correctly to board or reseting position
		if l_fix_x < 255 or l_fix_y > 450 or l_valid_move = FALSE then
			a_tile.set_point_position (a_init_x, a_init_y)
			-- Reseting last played coordinates to 'no move made'
			last_x := -100
			last_y := -100
			message_board.set_text ("You placed the tile out of the board!%NPlease try again!")
		else
			a_tile.set_point_position (l_fix_x, l_fix_y)
			message_board.set_text ("You have made a move!%NPress 'Ready' to confirm it")

			-- Uncomment to debug
			--			io.putint (l_fix_x)
			--			io.putstring ("%N")
			--			io.putint (l_fix_y)
			--			io.putstring ("%N--------------%N")

			-- Shutting down movements
			--world.enable_capture
		end
	end

-- Menu bar agents

leave_is_pressed
		-- User klicked on Leave under Menu option
	local
		question_dialog: EV_CONFIRMATION_DIALOG
	do
		create question_dialog.make_with_text ("Leave current game?")
		question_dialog.show_modal_to_window (Current)

		if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
			destroy
			create l_1st_layer.make (main_ui,Void)
			l_1st_layer.show
		end
	end

exit_is_pressed
		-- User klicked on Exit under Menu option
	do
		request_close_window
	end

info_is_pressed
		-- User klicked on Info under Help option
	do
		create l_info.make
		l_info.show
	end

how_to_play_is_pressed
		-- User klicked on How to play under Help option
	do
		create l_how_to_play.make
		l_how_to_play.show

	end

report_problem_is_pressed
		-- User klicked on Report a problem under Help option
	do
		create l_report_problem.make
		l_report_problem.show
	end

-- Button Agents

rotate_left_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on rotate left button
	do
		-- To be implemented soon.
		message_board.set_text ("Sorry, rotation not supported yet!")
		rotate_to(-1)
	end

rotate_right_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on rotate right button
	do
		-- To be implemented soon.
		message_board.set_text ("Sorry, rotation not supported yet!")
		rotate_to(1)
	end

ready_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on ready button
		local
			l_message:STRING
			i:INTEGER
	do
		if logic.get_turn=logic.get_player_id then
			l_message:=logic.confirm_last_move
			last_played_handle.disable_moving

				if l_message/=Void then
					message_board.set_text ("You have made your move!%NPlease wait for your turn!")
					timer_thread.reset_timer
					if server/=Void then
						from
							i:=1
						until
							--i=logic.get_players.capacity -----!!!!!!!!!!!!!!!!!!!!MAYBE WRONG!!!!!!!!!!
							--Stefano: yes it is wrong
							i=logic.get_game_mode.get_num_players
						loop
							server.sockets.at (i).set_for_writing
							store (l_message,server.sockets.at (i))
							server.sockets.at (i).set_for_reading
							i:=i+1
						end

					else
						client.l_medium.set_for_writing
						store (l_message,client.l_medium)
						client.l_medium.set_for_reading
					end
				else
					message_board.set_text ("You must make a move before pressing the ready button!!")
				end
		end
	end

undo_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on Undo button
	do
		if last_x = -100 or last_y = -100 then
			message_board.set_text ("You have not made a move yet!")
		else
			last_played_tile.set_point_position (last_x, last_y)
			-- Enabling movement again
			--world.disable_capture
			-- Reseting last played coordinates to 'no move done'
			last_x := -100
			last_y := -100
			logic.undo_last_move
			message_board.set_text ("Your last move was undone!%NThe tile will be reseted soon!")
		end
	end

pointer_enter (a_area: EV_FIXED)
		-- the pointer is entering the area used as a button
	do
		if a_area = rotate_left_button then
			rotate_left_button.set_background_pixmap(pix_rotate_left_enter)
		elseif a_area = rotate_right_button then
			rotate_right_button.set_background_pixmap(pix_rotate_right_enter)
		elseif a_area = undo_button then
			undo_button.set_background_pixmap (pix_undo_enter)
		elseif a_area = ready_button then
			ready_button.set_background_pixmap (pix_ready_enter)
		end
	end

pointer_leave (a_area: EV_FIXED)
		-- the pointer is leaving the area used as a button
	do
		if a_area = rotate_left_button then
			rotate_left_button.set_background_pixmap(pix_rotate_left)
		elseif a_area = rotate_right_button then
			rotate_right_button.set_background_pixmap(pix_rotate_right)
		elseif a_area = undo_button then
			undo_button.set_background_pixmap (pix_undo)
		elseif a_area = ready_button then
			ready_button.set_background_pixmap (pix_ready)
		end
	end


feature {NONE}	-- Attributes

main_ui: MAIN_WINDOW
l_1st_layer: B8_1ST_LAYER_WINDOW
l_4rth_layer: B8_4RTH_LAYER_WINDOW
l_info: B8_INFO_WINDOW
l_how_to_play: B8_HOW_TO_PLAY_WINDOW
l_report_problem: B8_REPORT_PROBLEM_WINDOW
j:INTEGER

-- Containers

	-- the main, fixed-size container to which all other widgets are added
	con_3rd_layer: EV_FIXED

-- Buttons

	-- Rotate Left button
	rotate_left_button: EV_FIXED

	-- Rotate Right button
	rotate_right_button: EV_FIXED

	-- Undo button
	undo_button: EV_FIXED

	-- Ready button
	ready_button: EV_FIXED

-- Menu Bar

	-- The menu bar
	blokus_menu_bar: EV_MENU_BAR

		-- Menu option
		blokus_menu: EV_MENU

			-- Under Menu option
			menu_leave: EV_MENU_ITEM
			menu_separator: EV_MENU_SEPARATOR
			menu_exit: EV_MENU_ITEM

		-- help option
		blokus_help: EV_MENU

			-- Under Help option
			help_info: EV_MENU_ITEM
			help_how_to_play: EV_MENU_ITEM
			help_separator: EV_MENU_SEPARATOR
			help_report_problem: EV_MENU_ITEM

-- Boxes

	-- Bottom box
	bot_box: EV_HORIZONTAL_BOX

-- Drawing areas

	-- The main board
	blokus_board: EV_DRAWING_AREA

-- Labels

	-- Message board
	message_board: EV_LABEL

	-- Timer board
	timer_board: EV_LABEL

-- Pix

	-- Bottom tile box background
	pix_bot_tile_box: EV_PIXMAP

	-- Main Board
	pix_blokus_board: EV_PIXMAP

	-- Rotate Left button background
	pix_rotate_left: EV_PIXMAP

	-- Rotate Left button background on pointer enter
	pix_rotate_left_enter: EV_PIXMAP

	-- Rotate Right button background
	pix_rotate_right: EV_PIXMAP

	-- Rotate Right button background on pointer enter
	pix_rotate_right_enter: EV_PIXMAP

	-- Undo button background
	pix_undo: EV_PIXMAP

	-- Undo button background on pointer enter
	pix_undo_enter: EV_PIXMAP

	--Ready button background
	pix_ready: EV_PIXMAP

	-- Ready button background on pointer enter
	pix_ready_enter: EV_PIXMAP

-- Monomino Background

	-- Monomino background
	pix_monomino: EV_PIXMAP
	pix_monomino_1: EV_PIXMAP
	pix_monomino_2: EV_PIXMAP
	pix_monomino_3: EV_PIXMAP

	pix_draw_monomino: EV_PIXMAP

	pix_rotate: EV_PIXMAP

-- World

	-- The figure world
	world: EV_MODEL_WORLD

	-- The board Background
	board_background: EV_MODEL_PICTURE

	-- The projector
	projector: EV_MODEL_DRAWING_AREA_PROJECTOR

-- Temp Monomino

	temp_monomino:EV_MODEL_PICTURE

	-- Monomino Coordinates
	point_a: EV_COORDINATE
	point_b: EV_COORDINATE

	rot_x: INTEGER
	rot_y: INTEGER

-- Tiles

	tile_group_0: EV_MODEL_GROUP
	tile_group_1: EV_MODEL_GROUP
	tile_group_2: EV_MODEL_GROUP
	tile_group_3: EV_MODEL_GROUP
	tile_group_4: EV_MODEL_GROUP
	tile_group_5: EV_MODEL_GROUP
	tile_group_6: EV_MODEL_GROUP
	tile_group_7: EV_MODEL_GROUP
	tile_group_8: EV_MODEL_GROUP
	tile_group_9: EV_MODEL_GROUP
	tile_group_10: EV_MODEL_GROUP
	tile_group_11: EV_MODEL_GROUP
	tile_group_12: EV_MODEL_GROUP
	tile_group_13: EV_MODEL_GROUP
	tile_group_14: EV_MODEL_GROUP
	tile_group_15: EV_MODEL_GROUP
	tile_group_16: EV_MODEL_GROUP
	tile_group_17: EV_MODEL_GROUP
	tile_group_18: EV_MODEL_GROUP
	tile_group_19: EV_MODEL_GROUP
	tile_group_20: EV_MODEL_GROUP

	tile_group_0_1: EV_MODEL_GROUP
	tile_group_1_1: EV_MODEL_GROUP
	tile_group_2_1: EV_MODEL_GROUP
	tile_group_3_1: EV_MODEL_GROUP
	tile_group_4_1: EV_MODEL_GROUP
	tile_group_5_1: EV_MODEL_GROUP
	tile_group_6_1: EV_MODEL_GROUP
	tile_group_7_1: EV_MODEL_GROUP
	tile_group_8_1: EV_MODEL_GROUP
	tile_group_9_1: EV_MODEL_GROUP
	tile_group_10_1: EV_MODEL_GROUP
	tile_group_11_1: EV_MODEL_GROUP
	tile_group_12_1: EV_MODEL_GROUP
	tile_group_13_1: EV_MODEL_GROUP
	tile_group_14_1: EV_MODEL_GROUP
	tile_group_15_1: EV_MODEL_GROUP
	tile_group_16_1: EV_MODEL_GROUP
	tile_group_17_1: EV_MODEL_GROUP
	tile_group_18_1: EV_MODEL_GROUP
	tile_group_19_1: EV_MODEL_GROUP
	tile_group_20_1: EV_MODEL_GROUP

	tile_group_0_2: EV_MODEL_GROUP
	tile_group_1_2: EV_MODEL_GROUP
	tile_group_2_2: EV_MODEL_GROUP
	tile_group_3_2: EV_MODEL_GROUP
	tile_group_4_2: EV_MODEL_GROUP
	tile_group_5_2: EV_MODEL_GROUP
	tile_group_6_2: EV_MODEL_GROUP
	tile_group_7_2: EV_MODEL_GROUP
	tile_group_8_2: EV_MODEL_GROUP
	tile_group_9_2: EV_MODEL_GROUP
	tile_group_10_2: EV_MODEL_GROUP
	tile_group_11_2: EV_MODEL_GROUP
	tile_group_12_2: EV_MODEL_GROUP
	tile_group_13_2: EV_MODEL_GROUP
	tile_group_14_2: EV_MODEL_GROUP
	tile_group_15_2: EV_MODEL_GROUP
	tile_group_16_2: EV_MODEL_GROUP
	tile_group_17_2: EV_MODEL_GROUP
	tile_group_18_2: EV_MODEL_GROUP
	tile_group_19_2: EV_MODEL_GROUP
	tile_group_20_2: EV_MODEL_GROUP

	tile_group_0_3: EV_MODEL_GROUP
	tile_group_1_3: EV_MODEL_GROUP
	tile_group_2_3: EV_MODEL_GROUP
	tile_group_3_3: EV_MODEL_GROUP
	tile_group_4_3: EV_MODEL_GROUP
	tile_group_5_3: EV_MODEL_GROUP
	tile_group_6_3: EV_MODEL_GROUP
	tile_group_7_3: EV_MODEL_GROUP
	tile_group_8_3: EV_MODEL_GROUP
	tile_group_9_3: EV_MODEL_GROUP
	tile_group_10_3: EV_MODEL_GROUP
	tile_group_11_3: EV_MODEL_GROUP
	tile_group_12_3: EV_MODEL_GROUP
	tile_group_13_3: EV_MODEL_GROUP
	tile_group_14_3: EV_MODEL_GROUP
	tile_group_15_3: EV_MODEL_GROUP
	tile_group_16_3: EV_MODEL_GROUP
	tile_group_17_3: EV_MODEL_GROUP
	tile_group_18_3: EV_MODEL_GROUP
	tile_group_19_3: EV_MODEL_GROUP
	tile_group_20_3: EV_MODEL_GROUP

	last_played_tile: EV_MODEL_GROUP
		last_x: INTEGER
		last_y: INTEGER
		logic_x: INTEGER
		logic_y: INTEGER

	move_tile: EV_MODEL_GROUP

-- Tile move handles

	move_handle_0: EV_MODEL_MOVE_HANDLE
	move_handle_1: EV_MODEL_MOVE_HANDLE
	move_handle_2: EV_MODEL_MOVE_HANDLE
	move_handle_3: EV_MODEL_MOVE_HANDLE
	move_handle_4: EV_MODEL_MOVE_HANDLE
	move_handle_5: EV_MODEL_MOVE_HANDLE
	move_handle_6: EV_MODEL_MOVE_HANDLE
	move_handle_7: EV_MODEL_MOVE_HANDLE
	move_handle_8: EV_MODEL_MOVE_HANDLE
	move_handle_9: EV_MODEL_MOVE_HANDLE
	move_handle_10: EV_MODEL_MOVE_HANDLE
	move_handle_11: EV_MODEL_MOVE_HANDLE
	move_handle_12: EV_MODEL_MOVE_HANDLE
	move_handle_13: EV_MODEL_MOVE_HANDLE
	move_handle_14: EV_MODEL_MOVE_HANDLE
	move_handle_15: EV_MODEL_MOVE_HANDLE
	move_handle_16: EV_MODEL_MOVE_HANDLE
	move_handle_17: EV_MODEL_MOVE_HANDLE
	move_handle_18: EV_MODEL_MOVE_HANDLE
	move_handle_19: EV_MODEL_MOVE_HANDLE
	move_handle_20: EV_MODEL_MOVE_HANDLE

	move_handle_0_1: EV_MODEL_MOVE_HANDLE
	move_handle_1_1: EV_MODEL_MOVE_HANDLE
	move_handle_2_1: EV_MODEL_MOVE_HANDLE
	move_handle_3_1: EV_MODEL_MOVE_HANDLE
	move_handle_4_1: EV_MODEL_MOVE_HANDLE
	move_handle_5_1: EV_MODEL_MOVE_HANDLE
	move_handle_6_1: EV_MODEL_MOVE_HANDLE
	move_handle_7_1: EV_MODEL_MOVE_HANDLE
	move_handle_8_1: EV_MODEL_MOVE_HANDLE
	move_handle_9_1: EV_MODEL_MOVE_HANDLE
	move_handle_10_1: EV_MODEL_MOVE_HANDLE
	move_handle_11_1: EV_MODEL_MOVE_HANDLE
	move_handle_12_1: EV_MODEL_MOVE_HANDLE
	move_handle_13_1: EV_MODEL_MOVE_HANDLE
	move_handle_14_1: EV_MODEL_MOVE_HANDLE
	move_handle_15_1: EV_MODEL_MOVE_HANDLE
	move_handle_16_1: EV_MODEL_MOVE_HANDLE
	move_handle_17_1: EV_MODEL_MOVE_HANDLE
	move_handle_18_1: EV_MODEL_MOVE_HANDLE
	move_handle_19_1: EV_MODEL_MOVE_HANDLE
	move_handle_20_1: EV_MODEL_MOVE_HANDLE

	move_handle_0_2: EV_MODEL_MOVE_HANDLE
	move_handle_1_2: EV_MODEL_MOVE_HANDLE
	move_handle_2_2: EV_MODEL_MOVE_HANDLE
	move_handle_3_2: EV_MODEL_MOVE_HANDLE
	move_handle_4_2: EV_MODEL_MOVE_HANDLE
	move_handle_5_2: EV_MODEL_MOVE_HANDLE
	move_handle_6_2: EV_MODEL_MOVE_HANDLE
	move_handle_7_2: EV_MODEL_MOVE_HANDLE
	move_handle_8_2: EV_MODEL_MOVE_HANDLE
	move_handle_9_2: EV_MODEL_MOVE_HANDLE
	move_handle_10_2: EV_MODEL_MOVE_HANDLE
	move_handle_11_2: EV_MODEL_MOVE_HANDLE
	move_handle_12_2: EV_MODEL_MOVE_HANDLE
	move_handle_13_2: EV_MODEL_MOVE_HANDLE
	move_handle_14_2: EV_MODEL_MOVE_HANDLE
	move_handle_15_2: EV_MODEL_MOVE_HANDLE
	move_handle_16_2: EV_MODEL_MOVE_HANDLE
	move_handle_17_2: EV_MODEL_MOVE_HANDLE
	move_handle_18_2: EV_MODEL_MOVE_HANDLE
	move_handle_19_2: EV_MODEL_MOVE_HANDLE
	move_handle_20_2: EV_MODEL_MOVE_HANDLE

	move_handle_0_3: EV_MODEL_MOVE_HANDLE
	move_handle_1_3: EV_MODEL_MOVE_HANDLE
	move_handle_2_3: EV_MODEL_MOVE_HANDLE
	move_handle_3_3: EV_MODEL_MOVE_HANDLE
	move_handle_4_3: EV_MODEL_MOVE_HANDLE
	move_handle_5_3: EV_MODEL_MOVE_HANDLE
	move_handle_6_3: EV_MODEL_MOVE_HANDLE
	move_handle_7_3: EV_MODEL_MOVE_HANDLE
	move_handle_8_3: EV_MODEL_MOVE_HANDLE
	move_handle_9_3: EV_MODEL_MOVE_HANDLE
	move_handle_10_3: EV_MODEL_MOVE_HANDLE
	move_handle_11_3: EV_MODEL_MOVE_HANDLE
	move_handle_12_3: EV_MODEL_MOVE_HANDLE
	move_handle_13_3: EV_MODEL_MOVE_HANDLE
	move_handle_14_3: EV_MODEL_MOVE_HANDLE
	move_handle_15_3: EV_MODEL_MOVE_HANDLE
	move_handle_16_3: EV_MODEL_MOVE_HANDLE
	move_handle_17_3: EV_MODEL_MOVE_HANDLE
	move_handle_18_3: EV_MODEL_MOVE_HANDLE
	move_handle_19_3: EV_MODEL_MOVE_HANDLE
	move_handle_20_3: EV_MODEL_MOVE_HANDLE

	last_played_handle: EV_MODEL_MOVE_HANDLE

feature -- Move drawer
draw_move(a_tile, a_x, a_y, a_color: INTEGER)
	local
		l_x: INTEGER
		l_y: INTEGER
		l_game_over: BOOLEAN
	do
		-- Enabling movement again
   		--world.disable_capture
		--io.put_string ("draw_move%N")

		timer_thread.reset_timer
		if a_color=1 then
			message_board.set_text ("Color Blue plays")
		elseif a_color=2 then
			message_board.set_text ("Color Yellow plays")
		elseif a_color=3 then
			message_board.set_text ("Color Red plays")
		elseif a_color=4 then
			message_board.set_text ("Color Green plays")
		end
		create move_tile

		if a_color = 1 then
			if a_tile = 0 then
				move_tile := tile_group_0
			elseif a_tile = 1 then
				move_tile := tile_group_1
			elseif a_tile = 2 then
				move_tile := tile_group_2
			elseif a_tile = 3 then
				move_tile := tile_group_3
			elseif a_tile = 4 then
				move_tile := tile_group_4
			elseif a_tile = 5 then
				move_tile := tile_group_5
			elseif a_tile = 6 then
				move_tile := tile_group_6
			elseif a_tile = 7 then
				move_tile := tile_group_7
			elseif a_tile = 8 then
				move_tile := tile_group_8
			elseif a_tile = 9 then
				move_tile := tile_group_9
			elseif a_tile = 10 then
				move_tile := tile_group_10
			elseif a_tile = 11 then
				move_tile := tile_group_11
			elseif a_tile = 12 then
				move_tile := tile_group_12
			elseif a_tile = 13 then
				move_tile := tile_group_13
			elseif a_tile = 14 then
				move_tile := tile_group_14
			elseif a_tile = 15 then
				move_tile := tile_group_15
			elseif a_tile = 16 then
				move_tile := tile_group_16
			elseif a_tile = 17 then
				move_tile := tile_group_17
			elseif a_tile = 18 then
				move_tile := tile_group_18
			elseif a_tile = 19 then
				move_tile := tile_group_19
			elseif a_tile = 20 then
				move_tile := tile_group_20
			end
		elseif a_color = 2 then
			if a_tile = 0 then
				move_tile := tile_group_0_1
			elseif a_tile = 1 then
				move_tile := tile_group_1_1
			elseif a_tile = 2 then
				move_tile := tile_group_2_1
			elseif a_tile = 3 then
				move_tile := tile_group_3_1
			elseif a_tile = 4 then
				move_tile := tile_group_4_1
			elseif a_tile = 5 then
				move_tile := tile_group_5_1
			elseif a_tile = 6 then
				move_tile := tile_group_6_1
			elseif a_tile = 7 then
				move_tile := tile_group_7_1
			elseif a_tile = 8 then
				move_tile := tile_group_8_1
			elseif a_tile = 9 then
				move_tile := tile_group_9_1
			elseif a_tile = 10 then
				move_tile := tile_group_10_1
			elseif a_tile = 11 then
				move_tile := tile_group_11_1
			elseif a_tile = 12 then
				move_tile := tile_group_12_1
			elseif a_tile = 13 then
				move_tile := tile_group_13_1
			elseif a_tile = 14 then
				move_tile := tile_group_14_1
			elseif a_tile = 15 then
				move_tile := tile_group_15_1
			elseif a_tile = 16 then
				move_tile := tile_group_16_1
			elseif a_tile = 17 then
				move_tile := tile_group_17_1
			elseif a_tile = 18 then
				move_tile := tile_group_18_1
			elseif a_tile = 19 then
				move_tile := tile_group_19_1
			elseif a_tile = 20 then
				move_tile := tile_group_20_1
			end
		elseif a_color = 3 then
			if a_tile = 0 then
				move_tile := tile_group_0_2
			elseif a_tile = 1 then
				move_tile := tile_group_1_2
			elseif a_tile = 2 then
				move_tile := tile_group_2_2
			elseif a_tile = 3 then
				move_tile := tile_group_3_2
			elseif a_tile = 4 then
				move_tile := tile_group_4_2
			elseif a_tile = 5 then
				move_tile := tile_group_5_2
			elseif a_tile = 6 then
				move_tile := tile_group_6_2
			elseif a_tile = 7 then
				move_tile := tile_group_7_2
			elseif a_tile = 8 then
				move_tile := tile_group_8_2
			elseif a_tile = 9 then
				move_tile := tile_group_9_2
			elseif a_tile = 10 then
				move_tile := tile_group_10_2
			elseif a_tile = 11 then
				move_tile := tile_group_11_2
			elseif a_tile = 12 then
				move_tile := tile_group_12_2
			elseif a_tile = 13 then
				move_tile := tile_group_13_2
			elseif a_tile = 14 then
				move_tile := tile_group_14_2
			elseif a_tile = 15 then
				move_tile := tile_group_15_2
			elseif a_tile = 16 then
				move_tile := tile_group_16_2
			elseif a_tile = 17 then
				move_tile := tile_group_17_2
			elseif a_tile = 18 then
				move_tile := tile_group_18_2
			elseif a_tile = 19 then
				move_tile := tile_group_19_2
			elseif a_tile = 20 then
				move_tile := tile_group_20_2
			end
		elseif a_color = 4 then
			if a_tile = 0 then
				move_tile := tile_group_0_3
			elseif a_tile = 1 then
				move_tile := tile_group_1_3
			elseif a_tile = 2 then
				move_tile := tile_group_2_3
			elseif a_tile = 3 then
				move_tile := tile_group_3_3
			elseif a_tile = 4 then
				move_tile := tile_group_4_3
			elseif a_tile = 5 then
				move_tile := tile_group_5_3
			elseif a_tile = 6 then
				move_tile := tile_group_6_3
			elseif a_tile = 7 then
				move_tile := tile_group_7_3
			elseif a_tile = 8 then
				move_tile := tile_group_8_3
			elseif a_tile = 9 then
				move_tile := tile_group_9_3
			elseif a_tile = 10 then
				move_tile := tile_group_10_3
			elseif a_tile = 11 then
				move_tile := tile_group_11_3
			elseif a_tile = 12 then
				move_tile := tile_group_12_3
			elseif a_tile = 13 then
				move_tile := tile_group_13_3
			elseif a_tile = 14 then
				move_tile := tile_group_14_3
			elseif a_tile = 15 then
				move_tile := tile_group_15_3
			elseif a_tile = 16 then
				move_tile := tile_group_16_3
			elseif a_tile = 17 then
				move_tile := tile_group_17_3
			elseif a_tile = 18 then
				move_tile := tile_group_18_3
			elseif a_tile = 19 then
				move_tile := tile_group_19_3
			elseif a_tile = 20 then
				move_tile := tile_group_20_3
			end
		end



		-- Calculating position on logic board
		if a_tile = 2 or a_tile = 4 or a_tile = 9 or a_tile = 11 or a_tile = 15 or a_tile = 17 then
			l_x := a_x
			l_y := a_y + 1
		elseif a_tile = 0 or a_tile = 1 or a_tile = 3 or a_tile = 6 or a_tile = 14 then
			l_x := a_x
			l_y := a_y
		elseif a_tile = 7 or a_tile = 8 or a_tile = 13 then
			l_x := a_x - 2
			l_y := a_y + 1
		else
			l_x := a_x - 1
			l_y := a_y + 1
		end

		-- Finalising x
		l_x := (l_x * 25) +280 -25

		-- Finalising y
		if a_tile = 0 or a_tile = 1 or a_tile = 3 or a_tile = 6 or a_tile = 14 then
			l_y := (l_y * 25) -25
		else
			l_y := (l_y *25) -50
		end

		move_tile.set_point_position(l_x, l_y)
		world.extend (move_tile)

		l_game_over := logic.get_game_mode.is_game_over
		if l_game_over = TRUE then
			destroy
			create l_4rth_layer.make(logic)
		end

	end

-- Rotate
rotate_to(a_side: INTEGER)
	local
		mon_n: INTEGER
		l_tile_id: INTEGER
		l_tile_color: INTEGER
		l_i: INTEGER
		l_x, l_y: INTEGER
		i: INTEGER
	do
		create pix_rotate

		last_played_tile.wipe_out
		l_tile_id := find_tile_id(last_played_tile)
		l_tile_color := find_tile_color(last_played_tile)

		if l_tile_color = 1 then
			pix_rotate.set_with_named_file (file_system.pathname_to_string (img_blue_monomino))
		elseif l_tile_color = 2 then
			pix_rotate.set_with_named_file (file_system.pathname_to_string (img_yellow_monomino))
		elseif l_tile_color = 3 then
			pix_rotate.set_with_named_file (file_system.pathname_to_string (img_red_monomino))
		elseif l_tile_color = 4 then
			pix_rotate.set_with_named_file (file_system.pathname_to_string (img_green_monomino))
		end

		logic.get_game_tile (l_tile_color, l_tile_id).rotate (a_side, 1)

		mon_n := logic.get_game_tile (l_tile_color, l_tile_id).get_monomini.count

		from i := 1
		until
			i>mon_n
		loop
			l_x := logic.get_game_tile (l_tile_color, l_tile_id).get_monomini.i_th (i).get_x
			l_y := logic.get_game_tile (l_tile_color, l_tile_id).get_monomini.i_th (i).get_y
			last_played_tile.extend (create_monomino((l_x*25)+last_played_tile.point_x+25, (l_y*25)+last_played_tile.point_y+25, pix_rotate))
			i := i+1
		end
	end

feature--timer
	set_timer(time:INTEGER)
		do
			timer_board.set_text(time.out)
		end
	abort_game
		local
			l_i:INTEGER
		do
			if server/=Void then
				server.send_message("end")
			else
				client.send_message("end")
			end
		end
-- For the NET

feature
	client:B8_CLIENT
	server:B8_SERVER
	logic:B8_LOGIC
	timer_thread:B8_TIMER
end
