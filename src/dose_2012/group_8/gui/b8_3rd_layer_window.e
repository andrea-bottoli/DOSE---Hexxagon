note
	description: "3rd layer window (main window)"
	author: "Dimitris Deyannis,George Vardakis"
	date: "6/12/2012"
	revision: "0.2.0"

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

create
	make

feature {NONE}	-- Initialization
	make (a_client_server:B8_GAME_MODE)
		do
			if(a_client_server.mode=0) then --if it's the server or the client
				server:=a_client_server.server
			else
				client:=a_client_server.client
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
		set_size(1025,685)

		close_request_actions.extend (agent request_close_window)
		create_container_3rd_layer
	end

create_container_3rd_layer
		-- the constructor of the 3rd_layer container
	do
		-- Set the container
		create con_3rd_layer
		put(con_3rd_layer)

		-- Set left tile box
	--	create left_tile_box
	--	create pix_left_tile_box
	--	pix_left_tile_box.set_with_named_file (file_system.pathname_to_string (img_3rd_layer_left))
	--	left_tile_box.set_background_pixmap (pix_left_tile_box)
	--	con_3rd_layer.extend_with_position_and_size (left_tile_box, 0, 0, 140, 500)

		-- Set bottom box
		create bot_box
		create pix_bot_tile_box
		pix_bot_tile_box.set_with_named_file (file_system.pathname_to_string (img_3rd_layer_bot))
		bot_box.set_background_pixmap (pix_bot_tile_box)
		con_3rd_layer.extend_with_position_and_size (bot_box, 0, 500, 1020, 140)

		-- Set the main board
		create blokus_board
		con_3rd_layer.extend_with_position_and_size (blokus_board, 0, 0, 780, 500)

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
		rotate_left_button.pointer_button_release_actions.extend (agent left_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
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
		con_3rd_layer.extend_with_position_and_size (rotate_right_button, 900, 120, 120, 40)

		-- Set the tile edit area
		create tile_edit_area
		create pix_edit_area
		pix_edit_area.set_with_named_file (file_system.pathname_to_string (img_edit_area))
		con_3rd_layer.extend_with_position_and_size (tile_edit_area, 780, 160, 240, 240)

		-- Set timer board
		create timer_board
		timer_board.set_text ("Timer!")
		timer_board.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 255, 128))
		con_3rd_layer.extend_with_position_and_size (timer_board, 780, 400, 240, 60)

		-- Set Undo button
		create undo_button
		create pix_undo
		create pix_undo_enter
		pix_undo.set_with_named_file (file_system.pathname_to_string (img_undo))
		pix_undo_enter.set_with_named_file (file_system.pathname_to_string (img_undo_enter))

		undo_button.set_background_pixmap (pix_undo)
		undo_button.pointer_enter_actions.extend(agent pointer_enter(undo_button))
		undo_button.pointer_leave_actions.extend (agent pointer_leave(undo_button))
		con_3rd_layer.extend_with_position_and_size (undo_button, 780, 460, 120, 40)

		-- Set Ready button
		create ready_button
		create pix_ready
		create pix_ready_enter
		pix_ready.set_with_named_file (file_system.pathname_to_string (img_ready))
		pix_ready_enter.set_with_named_file (file_system.pathname_to_string (img_ready_enter))

		ready_button.set_background_pixmap (pix_ready)
		ready_button.pointer_enter_actions.extend(agent pointer_enter(ready_button))
		ready_button.pointer_leave_actions.extend (agent pointer_leave(ready_button))
		con_3rd_layer.extend_with_position_and_size (ready_button, 900, 460, 120, 40)

		-- Initialising functional board
		create board_background
		create pix_blokus_board
		pix_blokus_board.set_with_named_file (file_system.pathname_to_string (img_blokus_board))
		board_background.set_pixmap(pix_blokus_board)

		create world
		world.extend (board_background)
		board_background.set_point_position (280, 0)

		init_tiles(3)

		create projector.make(world, blokus_board)
		projector.project
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
	--	temp_monomino.set_x_y (l_x, l_y)
		temp_monomino.set_pixmap (a_pix)
		temp_monomino.set_x_y (l_x, l_y)
		Result := temp_monomino
	end

-- Tile initialiser
init_tiles(a_color:INTEGER)
	do
		create pix_monomino
		if a_color = 0 then
			pix_monomino.set_with_named_file (file_system.pathname_to_string (img_red_monomino))
		elseif a_color = 1 then
			pix_monomino.set_with_named_file (file_system.pathname_to_string (img_yellow_monomino))
		elseif a_color = 2 then
			pix_monomino.set_with_named_file (file_system.pathname_to_string (img_green_monomino))
		elseif a_color = 3 then
			pix_monomino.set_with_named_file (file_system.pathname_to_string (img_blue_monomino))
		end

		-- Tile 0
		create move_handle_0
		create tile_group_0
		tile_group_0.extend (create_monomino(25, 25, pix_monomino))
		move_handle_0.extend (tile_group_0)
		tile_group_0.set_point_position (0,0)
		world.extend (move_handle_0)

		-- Tile 1
		create move_handle_1
		create tile_group_1
		tile_group_1.extend (create_monomino(25, 25, pix_monomino))
		tile_group_1.extend (create_monomino(50, 25, pix_monomino))
		move_handle_1.extend (tile_group_1)
		tile_group_1.set_point_position (35, 0)
		world.extend (move_handle_1)

		-- Tile 2
		create move_handle_2
		create tile_group_2
		tile_group_2.extend (create_monomino(25, 25, pix_monomino))
		tile_group_2.extend (create_monomino(50, 25, pix_monomino))
		tile_group_2.extend (create_monomino(75, 25, pix_monomino))
		move_handle_2.extend (tile_group_2)
		tile_group_2.set_point_position (95, 0)
		world.extend (move_handle_2)

		-- Tile 3
		create move_handle_3
		create tile_group_3
		tile_group_3.extend (create_monomino(25, 25, pix_monomino))
		tile_group_3.extend (create_monomino(50, 25, pix_monomino))
		tile_group_3.extend (create_monomino(75, 25, pix_monomino))
		tile_group_3.extend (create_monomino(100, 25, pix_monomino))
		move_handle_3.extend (tile_group_3)
		tile_group_3.set_point_position (0, 40)
		world.extend (move_handle_3)

		-- Tile 4
		create move_handle_4
		create tile_group_4
		tile_group_4.extend (create_monomino(25, 25, pix_monomino))
		tile_group_4.extend (create_monomino(50, 25, pix_monomino))
		tile_group_4.extend (create_monomino(75, 25, pix_monomino))
		tile_group_4.extend (create_monomino(100, 25, pix_monomino))
		tile_group_4.extend (create_monomino(125, 25, pix_monomino))
		move_handle_4.extend (tile_group_4)
		tile_group_4.set_point_position (110, 40)
		world.extend (move_handle_4)

		-- Tile 5
		create move_handle_5
		create tile_group_5
		tile_group_5.extend (create_monomino(25, 25, pix_monomino))
		tile_group_5.extend (create_monomino(50, 25, pix_monomino))
		tile_group_5.extend (create_monomino(25, 50, pix_monomino))
		tile_group_5.extend (create_monomino(50, 50, pix_monomino))
		move_handle_5.extend (tile_group_5)
		tile_group_5.set_point_position (0, 80)
		world.extend (move_handle_5)

		-- Tile 6
		create move_handle_6
		create tile_group_6
		tile_group_6.extend (create_monomino(25, 50 , pix_monomino))
		tile_group_6.extend (create_monomino(50, 50 , pix_monomino))
		tile_group_6.extend (create_monomino(75, 50 , pix_monomino))
		tile_group_6.extend (create_monomino(50, 25, pix_monomino))
		move_handle_6.extend (tile_group_6)
		tile_group_6.set_point_position (60, 80)
		world.extend (move_handle_6)

		-- Tile 7
		create move_handle_7
		create tile_group_7
		tile_group_7.extend (create_monomino(25, 50, pix_monomino))
		tile_group_7.extend (create_monomino(50, 50, pix_monomino))
		tile_group_7.extend (create_monomino(75, 50, pix_monomino))
		tile_group_7.extend (create_monomino(75, 25, pix_monomino))
		move_handle_7.extend (tile_group_7)
		tile_group_7.set_point_position (145, 80)
		world.extend (move_handle_7)

		-- Tile_8
		create move_handle_8
		create tile_group_8
		tile_group_8.extend (create_monomino(25, 50, pix_monomino))
		tile_group_8.extend (create_monomino(50, 50, pix_monomino))
		tile_group_8.extend (create_monomino(50, 25, pix_monomino))
		tile_group_8.extend (create_monomino(75, 25, pix_monomino))
		move_handle_8.extend (tile_group_8)
		tile_group_8.set_point_position (0, 145)
		world.extend (move_handle_8)

		-- Tile 9
		create move_handle_9
		create tile_group_9
		tile_group_9.extend (create_monomino(25, 50, pix_monomino))
		tile_group_9.extend (create_monomino(50, 50, pix_monomino))
		tile_group_9.extend (create_monomino(75, 50, pix_monomino))
		tile_group_9.extend (create_monomino(100, 50, pix_monomino))
		tile_group_9.extend (create_monomino(25, 25, pix_monomino))
		move_handle_9.extend (tile_group_9)
		tile_group_9.set_point_position_relative (80, 145)
		world.extend (move_handle_9)

		-- Tile 10
		create move_handle_10
		create tile_group_10
		tile_group_10.extend (create_monomino(25, 75, pix_monomino))
		tile_group_10.extend (create_monomino(50, 75, pix_monomino))
		tile_group_10.extend (create_monomino(75, 75, pix_monomino))
		tile_group_10.extend (create_monomino(50, 50, pix_monomino))
		tile_group_10.extend (create_monomino(50, 25, pix_monomino))
		move_handle_10.extend (tile_group_10)
		tile_group_10.set_point_position (0, 210)
		world.extend (move_handle_10)

		-- Tile 11
		create move_handle_11
		create tile_group_11
		tile_group_11.extend (create_monomino(25, 75, pix_monomino))
		tile_group_11.extend (create_monomino(50, 75, pix_monomino))
		tile_group_11.extend (create_monomino(75, 75, pix_monomino))
		tile_group_11.extend (create_monomino(25, 50, pix_monomino))
		tile_group_11.extend (create_monomino(25, 25, pix_monomino))
		move_handle_11.extend (tile_group_11)
		tile_group_11.set_point_position (85, 210)
		world.extend (move_handle_11)

		-- Tile 12
		create move_handle_12
		create tile_group_12
		tile_group_12.extend (create_monomino(25, 50, pix_monomino))
		tile_group_12.extend (create_monomino(50, 50, pix_monomino))
		tile_group_12.extend (create_monomino(75, 50, pix_monomino))
		tile_group_12.extend (create_monomino(25, 75, pix_monomino))
		tile_group_12.extend (create_monomino(75, 25, pix_monomino))
		move_handle_12.extend (tile_group_12)
		tile_group_12.set_point_position (185, 120)
		world.extend (move_handle_12)

		-- Tile 13
		create move_handle_13
		create tile_group_13
		tile_group_13.extend (create_monomino(25, 50, pix_monomino))
		tile_group_13.extend (create_monomino(50, 50, pix_monomino))
		tile_group_13.extend (create_monomino(50, 25, pix_monomino))
		tile_group_13.extend (create_monomino(75, 25, pix_monomino))
		tile_group_13.extend (create_monomino(100, 25, pix_monomino))
		move_handle_13.extend (tile_group_13)
		tile_group_13.set_point_position (90, 425)
		world.extend (move_handle_13)

		-- Tile 14
		create move_handle_14
		create tile_group_14
		tile_group_14.extend (create_monomino(25, 50, pix_monomino))
		tile_group_14.extend (create_monomino(50, 50, pix_monomino))
		tile_group_14.extend (create_monomino(75, 50, pix_monomino))
		tile_group_14.extend (create_monomino(100, 50, pix_monomino))
		tile_group_14.extend (create_monomino(50, 25, pix_monomino))
		move_handle_14.extend (tile_group_14)
		tile_group_14.set_point_position (110, 365)
		world.extend (move_handle_14)

		-- Tile 15
		create move_handle_15
		create tile_group_15
		tile_group_15.extend (create_monomino(25, 25, pix_monomino))
		tile_group_15.extend (create_monomino(25, 50, pix_monomino))
		tile_group_15.extend (create_monomino(25, 75, pix_monomino))
		tile_group_15.extend (create_monomino(50, 50, pix_monomino))
		tile_group_15.extend (create_monomino(50, 75, pix_monomino))
		move_handle_15.extend (tile_group_15)
		tile_group_15.set_point_position (170, 210)
		world.extend (move_handle_15)

		-- Tile 16
		create move_handle_16
		create tile_group_16
		tile_group_16.extend (create_monomino(25, 25, pix_monomino))
		tile_group_16.extend (create_monomino(25, 50, pix_monomino))
		tile_group_16.extend (create_monomino(25, 75, pix_monomino))
		tile_group_16.extend (create_monomino(50, 25, pix_monomino))
		tile_group_16.extend (create_monomino(50, 75, pix_monomino))
		move_handle_16.extend (tile_group_16)
		tile_group_16.set_point_position (0, 300)
		world.extend (move_handle_16)

		-- Tile 17
		create move_handle_17
		create tile_group_17
		tile_group_17.extend (create_monomino(50, 25, pix_monomino))
		tile_group_17.extend (create_monomino(50, 50, pix_monomino))
		tile_group_17.extend (create_monomino(50, 75, pix_monomino))
		tile_group_17.extend (create_monomino(25, 50, pix_monomino))
		tile_group_17.extend (create_monomino(75, 25, pix_monomino))
		move_handle_17.extend (tile_group_17)
		tile_group_17.set_point_position (75, 300)
		world.extend (move_handle_17)

		-- Tile 18
		create move_handle_18
		create tile_group_18
		tile_group_18.extend (create_monomino(50, 25, pix_monomino))
		tile_group_18.extend (create_monomino(50, 50, pix_monomino))
		tile_group_18.extend (create_monomino(50, 75, pix_monomino))
		tile_group_18.extend (create_monomino(25, 50, pix_monomino))
		tile_group_18.extend (create_monomino(75, 50, pix_monomino))
		move_handle_18.extend (tile_group_18)
		tile_group_18.set_point_position (0, 400)
		world.extend (move_handle_18)

		-- Tile 19
		create move_handle_19
		create tile_group_19
		tile_group_19.extend (create_monomino(25, 50, pix_monomino))
		tile_group_19.extend (create_monomino(25, 75, pix_monomino))
		tile_group_19.extend (create_monomino(50, 25, pix_monomino))
		tile_group_19.extend (create_monomino(50, 50, pix_monomino))
		tile_group_19.extend (create_monomino(75, 25, pix_monomino))
		move_handle_19.extend (tile_group_19)
		tile_group_19.set_point_position (170, 300)
		world.extend (move_handle_19)

		-- Tile 20
		create move_handle_20
		create tile_group_20
		tile_group_20.extend (create_monomino(25, 25, pix_monomino))
		tile_group_20.extend (create_monomino(50, 25, pix_monomino))
		tile_group_20.extend (create_monomino(50, 50, pix_monomino))
		move_handle_20.extend (tile_group_20)
		tile_group_20.set_point_position (205, 425)
		world.extend (move_handle_20)

	end

-- Menu bar agents

leave_is_pressed
		-- User klicked on Leave under Menu option
	do
		blokus_board.draw_pixmap (0,0, pix_blokus_board)
		tile_edit_area.draw_pixmap (0, 0, pix_edit_area)
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
left_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
do
	if(server/=Void) then
		server.sockets.at (1).independent_store ("Server sent message")
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

	-- Tile edit area
	tile_edit_area: EV_DRAWING_AREA

-- Labels

	-- Message board
	message_board: EV_LABEL

	-- Timer board
	timer_board: EV_LABEL

-- Pix

	-- Left tile box background
	pix_left_tile_box: EV_PIXMAP

	-- Bottom tile box background
	pix_bot_tile_box: EV_PIXMAP

	-- Main Board
	pix_blokus_board: EV_PIXMAP

	-- Edit area
	pix_edit_area: EV_PIXMAP

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

feature
	client:B8_CLIENT
	server:B8_SERVER
end
