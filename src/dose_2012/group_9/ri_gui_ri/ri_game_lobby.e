note
	description: "Summary description for {RI_GAME_LOBBY}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GAME_LOBBY

inherit
	EV_FIXED

	RI_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end


	create
		make


	feature --Initialization

		make(a_window: RI_WELCOME_WINDOW)
			-- Creation procedure
		do
			welcome_window := a_window
			default_create
			build_primitives

		end




	feature -- attributes


		welcome_window:		RI_WELCOME_WINDOW

		list_separate:		EV_VERTICAL_SEPARATOR

		lbl_Current_Ser:	EV_LABEL
		curr_games_lbl:		EV_LABEL
		pl_in_game_lbl:		EV_LABEL
		pl_in_lobby_lbl:	EV_LABEL

		con_main:			EV_FIXED
		con_for_all:		EV_HORIZONTAL_BOX

		curr_games:			EV_FIXED
		curr_g_box:			EV_LIST

		pl_in_game:			EV_FIXED
		pl_in_g_box:		EV_LIST

		pl_in_lobby:		EV_FIXED
		pl_in_l_box:		EV_LIST

		create_game_btn:	RI_BUTTON
		join_game_btn:		RI_BUTTON
		back_btn:			RI_BUTTON
		game_field:			EV_TEXT_FIELD


		pix_lobby_bg: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_lobby_bg))
		end

		pix_create_gpr: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_create_gpr))
		end

		pix_create_gupr: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_create_gupr))
		end

		pix_join_gpr: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_join_gpr))
		end

		pix_join_gupr: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_join_gupr))
		end

		pix_back_pr: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_pr))
		end

		pix_back_upr: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_upr))
		end




	feature -- construction agents

		build_primitives
		require



		do

			set_background_pixmap(pix_lobby_bg)

			create list_separate
			list_separate.set_minimum_width (20)


			create lbl_Current_Ser.make_with_text ("Current Server:")
			lbl_Current_Ser.set_foreground_color((create {EV_STOCK_COLORS}).white)
			lbl_Current_Ser.set_background_color((create {EV_STOCK_COLORS}).dark_red)
			lbl_Current_Ser.align_text_center
			lbl_Current_Ser.set_font (my_font_24)
			extend_with_position_and_size (lbl_Current_Ser, 50, 20, 300, 60)

			-- create list container

			create con_for_all
			con_for_all.set_background_color ((create {EV_STOCK_COLORS}).dark_red)
			extend_with_position_and_size (con_for_all, 20, 100, 700, 320)

			-- create first list in server log

			create curr_games_lbl.make_with_text ("Current Games")
			curr_games_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			curr_games_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_blue)
			curr_games_lbl.align_text_center
			curr_games_lbl.set_font (my_font_15)

			create curr_g_box
			curr_g_box.set_background_color ((create {EV_STOCK_COLORS}).grey)


			create curr_games
			curr_games.extend_with_position_and_size (curr_games_lbl, 0, 0, 220, 50)
			curr_games.extend_with_position_and_size (curr_g_box, 0, 50, 220, 270)

			con_for_all.extend (curr_games)

			con_for_all.extend (list_separate)

			-- create second list in server log

			create pl_in_game_lbl.make_with_text ("Players In Game")
			pl_in_game_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			pl_in_game_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_blue)
			pl_in_game_lbl.align_text_center
			pl_in_game_lbl.set_font (my_font_15)

			create pl_in_g_box
			pl_in_g_box.set_background_color ((create {EV_STOCK_COLORS}).grey)

			create pl_in_game
			pl_in_game.extend_with_position_and_size (pl_in_game_lbl, 0, 0, 220, 50)
			pl_in_game.extend_with_position_and_size (pl_in_g_box, 0, 50, 220, 270)

			con_for_all.extend (pl_in_game)
			con_for_all.extend (list_separate)

			-- create third list in server log

			create pl_in_lobby_lbl.make_with_text ("Players In Lobby")
			pl_in_lobby_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			pl_in_lobby_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_blue)
			pl_in_lobby_lbl.align_text_center
			pl_in_lobby_lbl.set_font (my_font_15)

			create pl_in_l_box
			pl_in_l_box.set_background_color ((create {EV_STOCK_COLORS}).grey)

			create pl_in_lobby
			pl_in_lobby.extend_with_position_and_size (pl_in_lobby_lbl, 0, 0, 220, 50)
			pl_in_lobby.extend_with_position_and_size (pl_in_l_box, 0, 50, 220, 270)

			con_for_all.extend (pl_in_lobby)
			con_for_all.extend (list_separate)

			-- create buttons and text field

			create game_field.make_with_text ("> Game Name")
			game_field.align_text_center
			game_field.set_font (my_font_15)
			game_field.pointer_button_press_actions.extend (agent rmv_txt(game_field,?,?,?,?,?,?,?,?))
			extend_with_position_and_size(game_field, 780, 100, 180, 35)

			create create_game_btn.default_create
			create_game_btn.set_pix (pix_create_gupr, pix_create_gpr)
			create_game_btn.set_data (true)
			create_game_btn.set_pixmap (pix_create_gupr)
			create_game_btn.pointer_button_press_actions.extend (agent change_button_view(create_game_btn,?,?,?,?,?,?,?,?))
			create_game_btn.pointer_button_release_actions.extend (agent change_button_view(create_game_btn,?,?,?,?,?,?,?,?))
			create_game_btn.select_actions.extend (agent create_game)
			extend_with_position_and_size (create_game_btn, 735, 155, 244, 74)

			create join_game_btn.default_create
			join_game_btn.set_pix (pix_join_gupr, pix_join_gpr)
			join_game_btn.set_data (true)
			join_game_btn.set_pixmap (pix_join_gupr)
			join_game_btn.pointer_button_press_actions.extend (agent change_button_view(join_game_btn,?,?,?,?,?,?,?,?))
			join_game_btn.pointer_button_release_actions.extend (agent change_button_view(join_game_btn,?,?,?,?,?,?,?,?))
		--	join_game_btn.select_actions.extend (agent create_dServer_Window)
			extend_with_position_and_size (join_game_btn, 735, 249, 244, 74)

			create back_btn.default_create
			back_btn.set_pix (pix_back_upr, pix_back_pr)
			back_btn.set_data (true)
			back_btn.set_pixmap (pix_back_upr)
			back_btn.pointer_button_press_actions.extend (agent change_button_view(back_btn,?,?,?,?,?,?,?,?))
			back_btn.pointer_button_release_actions.extend (agent change_button_view(back_btn,?,?,?,?,?,?,?,?))
			back_btn.select_actions.extend (agent welcome_window.request_welcome_window)
			extend_with_position_and_size (back_btn, 735, 343, 244, 74)




		end

		create_game 	--Handles the server transaction for requesting a new game
		local
			main_window:	RI_GAME_WINDOW
		do

			create main_window.make (welcome_window.main_ui)
			main_window.show
			welcome_window.main_ui.add_reference_to_game (main_window)
			welcome_window.destroy

		end

		join_game		--Handles the server transaction for joining a new game
			do

			end

		refresh_info	--Synchronizes server information with GUI
			do

			end

		show_tooltip	--Handles the mouseover event, displaying a tooltip with game information
			do

			end

		classify_games	--Handles the prioritizing of available games based on certain criteria
			do

			end

	feature -- miscalleneous

		my_font_24: EV_FONT
            -- `Result' is EV_FONT constant named `times_new_roman'.
        local
        	font_const: EV_FONT_CONSTANTS
        once
            create Result
			create font_const
			Result.set_family (font_const.family_roman)
            Result.set_weight (font_const.weight_black)
            Result.set_shape (font_const.shape_regular)
            Result.set_height_in_points (24)
            Result.preferred_families.extend ("Times New Roman")
        end


		my_font_15: EV_FONT
            -- `Result' is EV_FONT constant named `times_new_roman'.
        local
        	font_const: EV_FONT_CONSTANTS
        once
            create Result
			create font_const
			Result.set_family (font_const.family_roman)
            Result.set_weight (font_const.weight_black)
            Result.set_shape (font_const.shape_regular)
            Result.set_height_in_points (15)
            Result.preferred_families.extend ("Times New Roman")
        end

        rmv_txt(a_txt: EV_TEXT_FIELD; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
        do
			a_txt.remove_text
        end

        change_button_view(a_btn: RI_BUTTON; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			if a_btn.get_flag then
				a_btn.set_flag(false)
				a_btn.set_pixmap (a_btn.get_pressed)
			else
				a_btn.set_flag(true)
				a_btn.set_pixmap (a_btn.get_unpressed)

			end
		end





end
