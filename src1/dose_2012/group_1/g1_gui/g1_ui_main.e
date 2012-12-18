note
	description: "G1_UI_MAIN: first interface which allows the user to create or join a game."
	author: "MILANO7"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_UI_MAIN
	--- It's a Graphical Inteface

inherit
    EV_TITLED_WINDOW
		redefine
			initialize
		end

	G1_UI_CONSTANTS
	    export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature {NONE} -- Initialization
	make(a_main_ui_window: MAIN_WINDOW)
			-- Creation procedure

		do
			create controller.make
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
				-- Create the first window.
			make_with_title (first_window_title)

			set_x_position ((screen_width // 2) - (Window_width // 2))
			set_y_position ((screen_height // 2) - (Window_height // 2))

				-- set the size of the window
			set_height (Window_height)
			set_width (Window_width)

				-- disable user resizing for the window
			disable_user_resize
		end

	initialize
			local
				label_ip : EV_LABEL
				label_port: EV_LABEL
				label_player: EV_LABEL
				label_local_internal_ip: EV_LABEL
				label_new_match: EV_LABEL
				label_credits: EV_LABEL
				label_local_ip: EV_LABEL
				temp_text : STRING

				country_flag: EV_FIXED
	        do
	        	Precursor {EV_TITLED_WINDOW}

	        	close_request_actions.extend (agent request_close_window(main_ui,current))

 				--- CONTAINER, BACKGROUND ---
				monopoly_bk_area := set_background(mp_img_load("background_main.png"),730,500);

				monopoly_logo_area := set_background(mp_img_load("logo_monopoly.png"),400,103);
				monopoly_bk_area.extend_with_position_and_size (monopoly_logo_area, 165, 15, 400, 103)

				monopoly_mister_area := set_background(mp_img_load("img_mister_monopoly.png"),150,212)
				monopoly_bk_area.extend_with_position_and_size (monopoly_mister_area,570,15,150,212)

				--- IP CONNECTION INFORMATION ---

				create temp_text.make_from_string ("Local External IP:      ")
				temp_text.append (controller.get_local_ip)
				label_local_ip := label_with_text(temp_text,WHITE)
				monopoly_bk_area.extend_with_position_and_size (label_local_ip, 150, 135, 200, 20)

				create temp_text.make_from_string ("Local Internal IP:      ")
				temp_text.append (controller.get_internal_local_ip)
				label_local_internal_ip := label_with_text(temp_text,WHITE)
				monopoly_bk_area.extend_with_position_and_size (label_local_internal_ip, 365, 135, 200, 20)

				--- PLAYER INFO ---

				label_player := label_with_text ("Player Name:", WHITE)
				monopoly_bk_area.extend_with_position_and_size (label_player, 70, 170, 80, 30)

				txt_player := textfield_with_text (controller.get_player_name,WHITE)
				monopoly_bk_area.extend_with_position_and_size (txt_player, 70, 205, 200, 30)

				create btn_confirm_player.make_with_text ("Confirm")
				btn_confirm_player.select_actions.extend (agent confirm_player_name)
				monopoly_bk_area.extend_with_position_and_size (btn_confirm_player, 170, 240, 100, 30)

				country_flag := set_background(mp_flag(controller.get_country_code),40,30);
				monopoly_bk_area.extend_with_position_and_size (country_flag, 100, 240, 40, 30)

				--- REMOTE GAME ---
				label_ip := label_with_text("Server IP",Void)
				monopoly_bk_area.extend_with_position_and_size (label_ip, 60, 290, 65, 30)

				txt_ip := textfield_with_text("127.0.0.1",Void)
				monopoly_bk_area.extend_with_position_and_size (txt_ip, 135, 290, 180, 30)

				label_port := label_with_text ("Server Port", Void)
				monopoly_bk_area.extend_with_position_and_size (label_port, 60, 330, 65, 30)

				txt_port := textfield_with_text("9190",Void)
				monopoly_bk_area.extend_with_position_and_size (txt_port, 135, 330, 65, 30)

				create btn_server_connect.make_with_text ("Connect")
				btn_server_connect.select_actions.extend (agent connection_to_server)
				monopoly_bk_area.extend_with_position_and_size (btn_server_connect, 205, 330, 105, 30)

				--- LOCAL SERVER GAME ---


				label_new_match := label_with_text ("New match name: ", Void)
				monopoly_bk_area.extend_with_position_and_size (label_new_match, 380, 290, 60, 30)

				create txt_new_match
				monopoly_bk_area.extend_with_position_and_size (txt_new_match, 450, 290, 200, 30)

				create btn_new_match.make_with_text ("Create Server")
				btn_new_match.select_actions.extend (agent create_new_game)
				monopoly_bk_area.extend_with_position_and_size (btn_new_match, 420, 330, 90, 30)

				create btn_new_match.make_with_text ("Join New Game")
				btn_new_match.select_actions.extend (agent enter_new_game)
				monopoly_bk_area.extend_with_position_and_size (btn_new_match, 520, 330, 90, 30)

				--- CREDITS ---

				label_credits := label_with_text("Credits:%T Milano7, Politecnico di Milano%N%T RioCuarto7, Universidad Nacional de Rio Cuarto", Void)
				monopoly_bk_area.extend_with_position_and_size (label_credits, 130, Window_height - 60, 470, 30)

				monopoly_polimi_area:= set_background(mp_img_load("logo_polimi.png"),60,60);
				monopoly_bk_area.extend_with_position_and_size (monopoly_polimi_area, 50, Window_height - 80, 60,60)

				monopoly_unrc_area:= set_background(mp_img_load("logo_unrc.png"),60,60);
				monopoly_bk_area.extend_with_position_and_size (monopoly_unrc_area, Window_width - 110, Window_height - 80, 60,60)

				--- GUI STARTER ----

	        	extend(monopoly_bk_area)
			end

feature {NONE}	-- Attributes

	controller: G1_UI_CONTROLLER

	main_ui: MAIN_WINDOW
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits Monopoly

	monopoly_bk_area: EV_FIXED
	monopoly_polimi_area: EV_FIXED
	monopoly_unrc_area: EV_FIXED
	monopoly_logo_area: EV_FIXED
	monopoly_mister_area : EV_FIXED

	btn_server_connect: EV_BUTTON
	btn_confirm_player: EV_BUTTON
	btn_new_match : EV_BUTTON

	txt_ip: EV_TEXT_FIELD
	txt_port: EV_TEXT_FIELD
	txt_player: EV_TEXT_FIELD
	txt_new_match: EV_TEXT_FIELD


feature {NONE} -- Implementation

	confirm_player_name
		do
			if txt_player.text.count <=1 then
				error_dialog("Error... This player name cannot be used!")
			else
				controller.get_player.set_name (txt_player.text)
			end
		end

	connection_to_server
		do
			if txt_port.text.count<0 then
				error_dialog("Error... Port not valid!")
			elseif txt_ip.text.count<8 then
				error_dialog("Error... IP not valid!")
			elseif txt_player.text.count <=1 then
				error_dialog("Error... Please insert a name!")
			else
				controller.connect_to_server(txt_ip.text,txt_port.text.to_integer)
				enter_new_game
			end
		end

	create_new_game
		local
			text: STRING
		do
			if txt_new_match.text.count <=1 then
				error_dialog("Error... This match name cannot be used!")
			else
				if txt_player.text.count <=1 then
					error_dialog("Error... Please insert a name!")
				else
					controller.set_match_name (txt_new_match.text)
					controller.start_server

					create text.make_from_string ("Server Started: ")
					text.append_string (controller.get_match_name)
					text.append_string ("%NServer Information: ")
					text.append_string (controller.get_local_ip)
					text.append_string (":")
					text.append_integer (controller.get_port)
					error_dialog(text)

					controller.connect_to_server ("127.0.0.1", controller.get_port)
				end
			end
		end

	enter_new_game
		do
			if not controller.is_server_started  then
				error_dialog("Error... Please start first the server!")
			else
				controller.start_gameboard(main_ui)
				destroy
			end
		end

	error_dialog(text: STRING)
			-- The user wants to close the window
		local
			dialog: EV_INFORMATION_DIALOG
		do
			create dialog.make_with_text (text)
			dialog.show_modal_to_window (Current)
		end

	label_with_text(text:STRING; color:EV_COLOR):EV_LABEL
	local
		label: EV_LABEL
	do
		create label
		label.set_text (text)
		label.align_text_vertical_center
		label.align_text_left
		if(color/=Void)
		then
			label.set_background_color (color)
		end
		Result := label
	end

	textfield_with_text(text:STRING; color:EV_COLOR):EV_TEXT_FIELD
	local
		textfield: EV_TEXT_FIELD
	do
		create textfield
		textfield.set_text (text)
		textfield.align_text_center
		if(color/=Void)
		then
			textfield.set_background_color (color)
		end
		Result := textfield
	end
end
