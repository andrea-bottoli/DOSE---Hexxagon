note
	description: "Summary description for {RI_SERVER_LOG}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_SERVER_LOG

	inherit

		EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end

		RI_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

	create

		default_create

	feature -- initialization

		initialize
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent close_window)
			set_title ("RISK - Dedicated Server Log")
			set_size (800, 450)
			build_primitives
			disable_user_resize
		end


	feature -- attributes

		-- test attr

		i:					INTEGER
		test_lbl:			EV_LIST_ITEM

		list_separate:		EV_VERTICAL_SEPARATOR

		serv_log_lbl:		EV_LABEL
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

		observe:			EV_FIXED
		observe_fld:		EV_TEXT_FIELD
		observe_btn:		EV_BUTTON


	feature -- window building


		build_primitives
		do

			-- create misc

			create list_separate
			list_separate.set_minimum_width(5)


			create con_main
			con_main.set_background_color ((create {EV_STOCK_COLORS}).dark_red)
			put(con_main)

			create serv_log_lbl.make_with_text ("Current Server Log")
			serv_log_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			serv_log_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_red)
			serv_log_lbl.align_text_left
			serv_log_lbl.set_font (my_font_24)
			con_main.extend_with_position_and_size (serv_log_lbl, 50, 20, 300, 60)

			-- create list container

			create con_for_all
			con_for_all.set_background_color ((create {EV_STOCK_COLORS}).dark_red)
			con_main.extend_with_position_and_size (con_for_all, 50, 100, 700, 320)

			-- create first list in server log

			create curr_games_lbl.make_with_text ("Current Games")
			curr_games_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			curr_games_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_blue)
			curr_games_lbl.align_text_center
			curr_games_lbl.set_font (my_font_15)

			create curr_g_box
			curr_g_box.set_background_color ((create {EV_STOCK_COLORS}).grey)


			create curr_games
			curr_games.extend_with_position_and_size (curr_games_lbl, 0, 0, 170, 50)
			curr_games.extend_with_position_and_size (curr_g_box, 0, 50, 170, 270)

			con_for_all.extend (curr_games)

			con_for_all.extend (list_separate)

			-- create second list in server log

			create pl_in_game_lbl.make_with_text ("In Game")
			pl_in_game_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			pl_in_game_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_blue)
			pl_in_game_lbl.align_text_center
			pl_in_game_lbl.set_font (my_font_15)

			create pl_in_g_box
			pl_in_g_box.set_background_color ((create {EV_STOCK_COLORS}).grey)

			create pl_in_game
			pl_in_game.extend_with_position_and_size (pl_in_game_lbl, 0, 0, 170, 50)
			pl_in_game.extend_with_position_and_size (pl_in_g_box, 0, 50, 170, 270)

			con_for_all.extend (pl_in_game)
			con_for_all.extend (list_separate)
			-- create third list in server log

			create pl_in_lobby_lbl.make_with_text ("In Lobby")
			pl_in_lobby_lbl.set_foreground_color((create {EV_STOCK_COLORS}).white)
			pl_in_lobby_lbl.set_background_color((create {EV_STOCK_COLORS}).dark_blue)
			pl_in_lobby_lbl.align_text_center
			pl_in_lobby_lbl.set_font (my_font_15)

			create pl_in_l_box
			pl_in_l_box.set_background_color ((create {EV_STOCK_COLORS}).grey)

			create pl_in_lobby
			pl_in_lobby.extend_with_position_and_size (pl_in_lobby_lbl, 0, 0, 170, 50)
			pl_in_lobby.extend_with_position_and_size (pl_in_l_box, 0, 50, 170, 270)

			con_for_all.extend (pl_in_lobby)
			con_for_all.extend (list_separate)

			-- create fourth list in server log

			create observe_btn.make_with_text("observe")
			observe_btn.set_font (my_font_15)

			create observe_fld.make_with_text("> Game Name")
			observe_fld.set_font (my_font_15)
			observe_fld.pointer_button_press_actions.extend (agent rmv_txt(observe_fld,?,?,?,?,?,?,?,?))

			create observe
			observe.set_background_color ((create {EV_STOCK_COLORS}).dark_red)
			observe.extend_with_position_and_size(observe_fld, 20, 0, 140, 35)
			observe.extend_with_position_and_size(observe_btn, 10, 50, 160, 50)

			con_for_all.extend (observe)
		end

	feature {NONE} -- close window agent and misc

		close_window
		do
			destroy
		end

		is_in_default_state: BOOLEAN
		-- Is `Current' in its default state?
		do
			Result := True
		end


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


	feature -- window actions

		set_game_name_to_lbl(a_field: EV_TEXT_FIELD; a_txt: STRING a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		do
			a_field.set_text (a_txt)
		end

		refresh_games(list:LINKED_LIST[STRING])
		local
			an_item: EV_LIST_ITEM
		do
			curr_g_box.wipe_out
			from list.start
			until list.after
			loop
				an_item.set_text (list.item)
				curr_g_box.extend (an_item)
				list.forth
			end

		end

		refresh_pl_lobby(list:LINKED_LIST[STRING])
		local
			an_item: EV_LIST_ITEM
		do
			pl_in_l_box.wipe_out
			from list.start
			until list.after
			loop
				an_item.set_text (list.item)
				pl_in_l_box.extend (an_item)
				list.forth
			end

		end

		refresh_pl_game(list:LINKED_LIST[STRING])
		local
			an_item: EV_LIST_ITEM
		do
			pl_in_g_box.wipe_out
			from list.start
			until list.after
			loop
				an_item.set_text (list.item)
				pl_in_g_box.extend (an_item)
				list.forth
			end

		end

end
