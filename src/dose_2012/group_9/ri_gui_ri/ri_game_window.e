note
	description: "Summary description for {RI_GAME_WINDOW}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GAME_WINDOW

	inherit
--	
		EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end

		RI_GUI_CONSTANTS2
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

			set_size(1300, 700)
			set_pixmaps
			build_primitives
			close_request_actions.extend (agent request_close_window)
			disable_user_resize

		end


	feature {NONE}

		main_ui			: MAIN_WINDOW
		main_con		: EV_FIXED
		map_con			: EV_FIXED
		toolTipResource : EV_TOOLTIPABLE
		click_interface : RI_CLICK_INTERFACE
		board_view		: RI_BOARD_VIEW
		txt_Chat		: EV_TEXT
		btn_Send_Chat	: EV_BUTTON
		txt_Message		: EV_TEXT
		btn_Card		: RI_BUTTON
		btn_Mission		: RI_BUTTON
		btn_Info		: RI_BUTTON
		txt_Log			: EV_TEXT

		pix_map			: EV_PIXMAP
		pix_cards		: EV_PIXMAP
		pix_cardsp		: EV_PIXMAP
		pix_info		: EV_PIXMAP
		pix_infop		: EV_PIXMAP
		pix_mission		: EV_PIXMAP
		pix_missionp	: EV_PIXMAP



		build_primitives	--Initializes the window
		do

			create map_con
			map_con.set_background_pixmap (pix_map)
			create main_con
			main_con.set_background_color ((create {EV_STOCK_COLORS}).black)
			main_con.extend_with_position_and_size (map_con, 0, 0, 1000, 500)
			put(main_con)

			create btn_Card.default_create
			btn_Card.set_pix (pix_cards, pix_cardsp)
			btn_Card.set_data (true)
			btn_Card.set_pixmap (pix_cards)
			btn_Card.pointer_button_press_actions.extend (agent change_button_view(btn_Card,?,?,?,?,?,?,?,?))
			btn_Card.pointer_button_release_actions.extend (agent change_button_view(btn_Card,?,?,?,?,?,?,?,?))
		--	btn_Card.select_actions.extend (agent welcome_window.request_welcome_window)
			main_con.extend_with_position_and_size (btn_Card, 0, 505, 195, 59)


		end

		set_pixmaps
		do
			create pix_map
			pix_map.set_with_named_file (file_system.pathname_to_string (img_map))

			create pix_cards
			pix_cards.set_with_named_file (file_system.pathname_to_string (img_cards))

			create pix_cardsp
			pix_cardsp.set_with_named_file (file_system.pathname_to_string (img_cardsp))

			create pix_info
			pix_info.set_with_named_file (file_system.pathname_to_string (img_info))

			create pix_infop
			pix_infop.set_with_named_file (file_system.pathname_to_string (img_infop))

			create pix_mission
			pix_mission.set_with_named_file (file_system.pathname_to_string (img_mission))

			create pix_missionp
			pix_missionp.set_with_named_file (file_system.pathname_to_string (img_missionp))

		end

		send_chat			--Sends a chat to the NET module
		do

		end

		refresh_chat		--Refreshes the chat
		do

		end

		close_window		--Closes and gracefully disposes of the window
		do

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
        local
        	font_const:	EV_FONT_CONSTANTS
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
