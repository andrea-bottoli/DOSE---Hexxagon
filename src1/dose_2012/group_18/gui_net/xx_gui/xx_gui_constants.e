note
	description: "Constants used by the GUI"
	author: "Team Milano2"
	date: "27-11-2012"
	revision: "0.1"

class
	XX_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	XX_folder: STRING = "group18"

	-- Path were the images of TTT are stored
	img_path: KL_PATHNAME
	do
		create Result.make
		Result.set_relative (True)
		Result.append_name (Dose_folder)
		Result.append_name (Image_folder)
		Result.append_name (XX_folder)
	end

	-- Path to "xx_board1" image
	img_board: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_background_board.png")
	end

	-- Path to "xx_background_menu" image
	img_menu: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_background_menu.png")
	end

	-- Path to "xx_hexagonal_blank" image
	img_hexagonal_blank: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_blank.png")
	end

	-- Path to "xx_hexagonal_ruby" image
	img_hexagonal_ruby: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_ruby.png")
	end

	-- Path to "xx_hexagonal_pearl" image
	img_hexagonal_pearl: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_pearl.png")
	end

	-- Path to "xx_hexagonal_ruby_highlight" image
	img_hexagonal_ruby_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_ruby_highlighted.png")
	end

	-- Path to "xx_hexagonal_pearl_highlight" image
	img_hexagonal_pearl_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_pearl_highlighted.png")
	end

	-- Path to "xx_hexagonal_d1" image
	img_hexagonal_distance_1: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_d1.png")
	end

	-- Path to "xx_hexagonal_d2" image
	img_hexagonal_distance_2: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_hexagonal_d2.png")
	end

	-- Path to "xx_menu_single_player_subtitle" image
	img_menu_single_player_subtitle: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_single_player_subtitle.png")
	end

	-- Path to "xx_menu_single_player_subtitle_highlighted" image
	img_menu_single_player_subtitle_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_single_player_subtitle_highlighted.png")
	end

	-- Path to "xx_menu_multiplayer_subtitle" image
	img_menu_multiplayer_subtitle: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_multiplayer_subtitle.png")
	end

	-- Path to "xx_menu_multiplayer_subtitle_highlighted" image
	img_menu_multiplayer_subtitle_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_multiplayer_subtitle_highlighted.png")
	end

	-- Path to "xx_menu_form_single_player" image
	img_menu_form_single_player: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_form_single_player.png")
	end

	-- Path to "xx_menu_form_single_player_ruby" image
	img_menu_form_single_player_ruby: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_form_single_player_ruby.png")
	end

	-- Path to "xx_menu_form_single_player_pearl" image
	img_menu_form_single_player_pearl: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_form_single_player_pearl.png")
	end

	-- Path to "xx_menu_form_multiplayer_client" image
	img_menu_form_multiplayer_client: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_form_multiplayer_client.png")
	end

	-- Path to "xx_menu_form_multiplayer_server" image
	img_menu_form_multiplayer_server: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_menu_form_multiplayer_server.png")
	end

	-- Path to "xx_client_button" image
	img_client_button: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_client_button.png")
	end

	-- Path to "xx_client_button_highlighted" image
	img_client_button_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_client_button_highlighted.png")
	end

	-- Path to "xx_client_button_hide" image
	img_client_button_hide: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_client_button_hide.png")
	end

	-- Path to "xx_server_button" image
	img_server_button: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_server_button.png")
	end

	-- Path to "xx_server_button_highlighted" image
	img_server_button_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_server_button_highlighted.png")
	end

	-- Path to "xx_server_button_hide" image
	img_server_button_hide: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_server_button_hide.png")
	end

	-- Path to "xx_panic_button" image
	img_panic_button: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_panic_button.png")
	end

	-- Path to "xx_panic_button_clicked" image
	img_panic_button_clicked: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_panic_button_clicked.png")
	end

	-- Path to "xx_panic_button_highlighted" image
	img_panic_button_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_panic_button_highlighted.png")
	end

	-- Path to "xx_start_button" image
	img_start_button: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_start_button.png")
	end

	-- Path to "xx_start_button_highlighted" image
	img_start_button_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_start_button_highlighted.png")
	end

	-- Path to "xx_start_button_clicked" image
	img_start_button_clicked: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_start_button_clicked.png")
	end

	-- Path to "xx_exit_button" image
	img_exit_button: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_exit_button.png")
	end

	-- Path to "xx_exit_button_highlighted" image
	img_exit_button_highlighted: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_exit_button_highlighted.png")
	end

	-- Path to "xx_exit_button_clicked" image
	img_exit_button_clicked: KL_PATHNAME
	do
		Result := img_path
		Result.append_name ("xx_exit_button_clicked.png")
	end

	--Path to "xx_win" image
	img_win: KL_PATHNAME
	do
		Result:= img_path
		Result.append_name ("xx_win.png")
	end

	--Path to "xx_lose" image
	img_lose: KL_PATHNAME
	do
		Result:= img_path
		Result.append_name ("xx_lose.png")
	end

	--Path to "xx_draw" image
	img_draw: KL_PATHNAME
	do
		Result:= img_path
		Result.append_name ("xx_draw.png")
	end

	img_close: KL_PATHNAME
	do
		Result:= img_path
		Result.append_name ("xx_close_icon.png")
	end

	rules: KL_PATHNAME
	do
		Result:= img_path
		Result.append_name ("rules.rtf")
	end


	-- String for "OK" button
	button_ok_item: STRING = "OK"

	-- String for "Send chat message" button
	button_send_chat_message: STRING = "Send"

	-- String for "leave game" button
	button_leave_game: STRING = "Leave Game"

	--String for "chat enable" button
	button_chat_enable: STRING = "Chat Enable"

	-- String for the confirmation dialog box that appears when the user try to close the first window
	label_confirm_close_window: STRING = "You are about to close the Hexxagon game. Are you sure ?%NClick OK to close"

	-- String for the confirmation dialog box that appears when the user leave the game
	label_confirm_abort_game: STRING = "Are you sure to leave the game ?"

	-- title of the rule window
	title_rule_window: STRING = "Hexxagon(Group 18) - RULES"

	-- String for the tooltip of ip text field
	tooldtip_ip_text_field: STRING = "The IP ADDRESS must be in the format:%N%TXXX . XXX . XXX . XXX%NWith 'xxx' a number between 0 and 255"

	-- String for the tooltip of port text field
	tooldtip_port_text_field: STRING = "The PORT NUMBER must be in the format:%N%TXXXXX%NWith 'xxxxx' a number between 1024 and 65335"

	-- String for the tooltip of name text field
	tooldtip_name_text_field: STRING = "Insert your player's name"

	--String for color Ruby
	string_color_ruby: STRING = "Rubies"

	--String for color Pearl
	string_color_pearl: STRING = "Pearls"

	--String for chat frame
	title_chat_frame: STRING = "Chat"

	--String for timer frame
	title_timer_frame: STRING = "Timer"

	--String for the ip error message
	error_ip_message: STRING = "You have to type a correct IP address with this format:%N%T XXX.XXX.XXX.XXX%NWith 'XXX' = a nuber berween 0 to 255"

	--String for the port error message
	error_port_message: STRING = "You have to type a correct Port Number, between 1024 to 65335"

	--String for the name error message
	error_name_message: STRING = "You have to insert a Name"

	--String for the color error message
	error_color_message: STRING = "You have to choice a color"

end
