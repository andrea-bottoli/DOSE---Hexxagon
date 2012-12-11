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
			initialize,is_in_default_state
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
			disable_user_resize
		end




		initialize						--Handles the instantiation of the RI_WELCOME_WINDOW Class
		do
			Precursor {EV_TITLED_WINDOW}
			build_primitives
			close_request_actions.extend (agent request_close_window)
			disable_user_resize

		end


	feature {NONE} 	--Atributtes

		font_const :			EV_FONT_CONSTANTS

		main_ui: 				MAIN_WINDOW

		btn_Start_Dedicated : 	EV_BUTTON

		btn_Connect_Dedicated : EV_BUTTON

		lbl_Binding :			EV_LABEL

		lbl_ServerIP :			EV_LABEL

		txt_BindingPort :		EV_TEXT_FIELD

		txt_ServerIP :			EV_TEXT_FIELD

		txt_ServerPort : 		EV_TEXT_FIELD

		con_main :				EV_FIXED 	--Main Container for Image and widget container

		con_game :				EV_FIXED 	--Container for buttons, labels, text fields


		pix_bg_welcome: EV_PIXMAP
				-- returns the background for the active game
			once
				create Result
				Result.set_with_named_file (file_system.pathname_to_string (img_bg_welcome))
			end

		build_primitives
		require



		do

			create con_main
			put (con_main)

				-- create the main container for the game itself
				-- put it on the right side of con_main
			create con_game
			con_game.set_background_pixmap (pix_bg_welcome)
			con_main.extend_with_position_and_size (con_game, 0, 0, 1000, 600)

			create btn_Start_Dedicated.make_with_text ("Start Dedicated Server")
			btn_Start_Dedicated.align_text_center
			con_main.extend_with_position_and_size (btn_Start_Dedicated, 780, 10, 150, 50)

			create btn_Connect_Dedicated.make_with_text ("Connect to Server")
			btn_Connect_Dedicated.align_text_center
			con_main.extend_with_position_and_size (btn_Connect_Dedicated, 80, 10, 150, 50)

		--	create lbl_Binding.make_with_text ("Binding Port")
		--	lbl_Binding.align_text_center
		--	lbl_Binding.set_font (my_font)
		--	lbl_Binding.set_background_color ((create{EV_STOCK_COLORS}).blue)
--con_main.extend_with_position_and_size (lbl_Binding, 795, 80, 120, 20)

	--		create lbl_ServerIP.make_with_text ("Server Address (IP:PORT)")
	--		lbl_ServerIP.align_text_center
		--	lbl_ServerIP.set_font (my_font)
		--	lbl_ServerIP.set_background_color ((create{EV_STOCK_COLORS}).red)
		--	con_main.extend_with_position_and_size (lbl_ServerIP, 35, 80, 240, 20)

			create txt_BindingPort.make_with_text ("> Port")
			txt_BindingPort.align_text_center
			txt_BindingPort.set_font (my_font)
			con_main.extend_with_position_and_size (txt_BindingPort, 800, 190, 120, 30)

			create txt_ServerIP.make_with_text ("> IP Address")
			txt_ServerIP.align_text_center
			txt_ServerIP.set_font (my_font)
			con_main.extend_with_position_and_size (txt_ServerIP, 5, 190, 165, 30)

			create txt_ServerPort.make_with_text ("> Port")
			txt_ServerPort.align_text_center
			txt_ServerPort.set_font (my_font)
			con_main.extend_with_position_and_size (txt_ServerPort, 190, 190, 80, 30)

		ensure

		end

	feature {NONE}

		create_dServer_Window (b_port : INTEGER)	--Creates an instance of the Dedicated server window
		do

		end

		create_connect_Window						--Creates an instance of the Client Lobby window
		do

		end



	feature {NONE} -- close window agent

		request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Are you sure you want to quit?")
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

end
