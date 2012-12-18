note
	description: "Summary description for {RI_WELCOME_WINDOW}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_WELCOME_WINDOW

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
		make


	feature --Initialization

		make(a_main_ui_window: MAIN_WINDOW)
			-- Creation procedure
		do

				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the Risk window.
			make_with_title ("Risk 2 - by Group 9")

		end




		initialize						--Handles the instantiation of the RI_WELCOME_WINDOW Class
		do
			Precursor {EV_TITLED_WINDOW}

			set_size(1010, 620)
			set_pixmaps
			build_primitives
			close_request_actions.extend (agent request_close_window)
			disable_user_resize

		end

	feature
		main_ui: 				MAIN_WINDOW


	feature {NONE} 	--Atributtes

		serv_log :				RI_SERVER_LOG
		game_lobby :			RI_GAME_LOBBY
		font_const :			EV_FONT_CONSTANTS

		btn_Quit :				RI_BUTTON
		btn_Start_Dedicated : 	RI_BUTTON
		btn_Connect_Dedicated : RI_BUTTON
		txt_BindingPort :		EV_TEXT_FIELD
		txt_ServerIP :			EV_TEXT_FIELD
		txt_ServerPort : 		EV_TEXT_FIELD
		con_main :				EV_FIXED 	--Main Container for Image and widget container
		con_game :				EV_FIXED 	--Container for buttons, labels, text fields


		pix_bg_welcome: EV_PIXMAP
		pix_start_d_serv_btn: EV_PIXMAP
		pix_conn_to_serv_btn: EV_PIXMAP
		pix_start_d_servp_btn: EV_PIXMAP
		pix_conn_to_servp_btn: EV_PIXMAP
		pix_quit_btn		: EV_PIXMAP
		pix_quitp_btn		: EV_PIXMAP

		set_pixmaps -- create pixmaps
		do
			create pix_bg_welcome
			pix_bg_welcome.set_with_named_file (file_system.pathname_to_string (img_bg_welcome))

			create pix_start_d_serv_btn
			pix_start_d_serv_btn.set_with_named_file (file_system.pathname_to_string (img_start_d_serv_btn))

			create pix_conn_to_serv_btn
			pix_conn_to_serv_btn.set_with_named_file (file_system.pathname_to_string (img_conn_to_serv_btn))

			create pix_start_d_servp_btn
			pix_start_d_servp_btn.set_with_named_file (file_system.pathname_to_string (img_start_d_servp_btn))

			create pix_conn_to_servp_btn
			pix_conn_to_servp_btn.set_with_named_file (file_system.pathname_to_string (img_conn_to_servp_btn))

			create pix_quit_btn
			pix_quit_btn.set_with_named_file (file_system.pathname_to_string (img_quit_btn))

			create pix_quitp_btn
			pix_quitp_btn.set_with_named_file (file_system.pathname_to_string (img_quitp_btn))


		end

		build_primitives
		require
		do

			create con_main
			put (con_main)
			con_main.set_background_pixmap (pix_bg_welcome)

			create btn_Start_Dedicated.default_create
			btn_Start_Dedicated.set_pix (pix_start_d_serv_btn,pix_start_d_servp_btn)
			btn_Start_Dedicated.set_data (true)
			btn_Start_Dedicated.set_pixmap (pix_start_d_serv_btn)
			btn_Start_Dedicated.pointer_button_press_actions.extend (agent change_button_view(btn_Start_Dedicated,?,?,?,?,?,?,?,?))
			btn_Start_Dedicated.pointer_button_release_actions.extend (agent change_button_view(btn_Start_Dedicated,?,?,?,?,?,?,?,?))
			btn_Start_Dedicated.select_actions.extend (agent create_dServer_Window)
			con_main.extend_with_position_and_size (btn_Start_Dedicated, 740, 450, 244, 74)

			create btn_Connect_Dedicated.default_create
			btn_Connect_Dedicated.set_pixmap (pix_conn_to_serv_btn)
			btn_Connect_Dedicated.set_pix (pix_conn_to_serv_btn,pix_conn_to_servp_btn)
			btn_Start_Dedicated.set_data (true)
			btn_Connect_Dedicated.pointer_button_press_actions.extend (agent change_button_view(btn_Connect_Dedicated,?,?,?,?,?,?,?,?))
			btn_Connect_Dedicated.pointer_button_release_actions.extend (agent change_button_view(btn_Connect_Dedicated,?,?,?,?,?,?,?,?))
			btn_Connect_Dedicated.select_actions.extend (agent create_connect_Window)
			con_main.extend_with_position_and_size (btn_Connect_Dedicated, 25, 450, 244, 74)

			create btn_Quit.default_create
			btn_Quit.set_pixmap (pix_quit_btn)
			btn_Quit.set_pix (pix_quit_btn,pix_quitp_btn)
			btn_Quit.pointer_button_press_actions.extend (agent change_button_view(btn_Quit,?,?,?,?,?,?,?,?))
			btn_Quit.pointer_button_release_actions.extend (agent change_button_view(btn_Quit,?,?,?,?,?,?,?,?))
			btn_Quit.select_actions.extend (agent request_close_window)
			con_main.extend_with_position_and_size (btn_Quit, 390, 450, 244, 74)

			create txt_BindingPort.make_with_text ("> Port")
			txt_BindingPort.align_text_center
			txt_BindingPort.set_font (my_font)
			txt_BindingPort.pointer_button_press_actions.extend (agent rmv_txt(txt_BindingPort,?,?,?,?,?,?,?,?))
			con_main.extend_with_position_and_size (txt_BindingPort, 800, 555, 120, 30)

			create txt_ServerIP.make_with_text ("> IP Address")
			txt_ServerIP.align_text_center
			txt_ServerIP.set_font (my_font)
			txt_ServerIP.pointer_button_press_actions.extend (agent rmv_txt(txt_ServerIP,?,?,?,?,?,?,?,?))
			con_main.extend_with_position_and_size (txt_ServerIP, 5, 555, 165, 30)

			create txt_ServerPort.make_with_text ("> Port")
			txt_ServerPort.align_text_center
			txt_ServerPort.set_font (my_font)
			txt_ServerPort.pointer_button_press_actions.extend (agent rmv_txt(txt_ServerPort,?,?,?,?,?,?,?,?))
			con_main.extend_with_position_and_size (txt_ServerPort, 190, 555, 80, 30)

		ensure

		end

	feature -- actions

		request_welcome_window
		do
			build_primitives
		end

		create_dServer_Window --Creates an instance of the Dedicated server window
		local
			b_port: INTEGER_32
			info_dialog: EV_INFORMATION_DIALOG
		do
			b_port := 0
			if (txt_BindingPort.text_length>0) and ((txt_BindingPort.text).is_integer) then
				b_port := (txt_BindingPort.text).to_integer_32
			end

			if b_port>=2 and b_port<=65534 then
				create serv_log
				serv_log.show
			else
				create info_dialog.make_with_text ("Please enter a valid port!%N(from 2 to 65534)")
				info_dialog.show_modal_to_window (Current)
			end

		end

		create_connect_Window						--Creates an instance of the Client Lobby window
		do

			create game_lobby.make (current)
			replace(game_lobby)

		end

		get_main_window: MAIN_WINDOW
		do
			Result := main_ui
		end



	feature {NONE} -- close window agent and misc

		request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Are you sure you want to quit RISK?")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
					main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end


		is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			Result := True
		end


		my_font: EV_FONT
            -- `Result' is EV_FONT constant named `times_new_roman'.
        once
            create Result
			create font_const
			Result.set_family (font_const.family_roman)
            Result.set_weight (font_const.weight_black)
            Result.set_shape (font_const.shape_regular)
            Result.set_height_in_points (16)
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
