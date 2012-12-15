note
	description: "The dialog used to join a game."
	author: "Christos Petropoulos"

class
	CP_JOIN_GAME_DIALOG

inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make

feature -- Initialization

	make(window_caller:CP_MAIN_WINDOW)
	local
		white_color:EV_COLOR
		black_color:EV_COLOR
		font:EV_FONT
	do
		default_create


			-- Create the colors
		create white_color.make_with_8_bit_rgb (255, 255, 255)
		create black_color.make_with_8_bit_rgb (0, 0, 0)


			-- Create the textfields
		create ip_address_field.default_create
		create port_field.default_create

		create addr_label.make_with_text ("IP Address :")
		create port_label.make_with_text ("Port (1 - 65535) :")




		addr_label.set_background_color (white_color)
		port_label.set_background_color (white_color)


		extend_with_position_and_size (addr_label,560,170,100,25)
		extend_with_position_and_size (ip_address_field,570, 200, 240, 25)

		extend_with_position_and_size (port_label,570,240,100,25)
		extend_with_position_and_size (port_field,570, 270, 240, 25)

		window := window_caller
		set_background_color(white_color)
		create font.default_create
		font.set_height (14)

		create menu_title.make_with_text ("Insert IP Address and port to join the game.")
		menu_title.set_background_color (white_color)
		extend_with_position_and_size (menu_title, 550,140, 255, 20)


			-- Create the image container with the logo of the game
		create image_container
		image_container.set_background_color (white_color)
		image_container.set_background_pixmap (game_logo_image)
		extend_with_position_and_size (image_container,0, 100, 477, 335)


			-- Create the buttons
		create connect_btn.make("Join Game")
		create goback_btn.make ("Go Back")

		goback_btn.on_click_do (agent window.set_view_to_main_menu)
		connect_btn.on_click_do (agent connect)

		extend_with_position_and_size(connect_btn,760,400,125, 136)
		extend_with_position_and_size(goback_btn,550,400,125, 136)



			-- Create the bottom container
		create bottom_bar
		bottom_bar.set_background_color(black_color)
		create cop.make_with_text(copyright_str)
		cop.set_foreground_color (white_color)
		cop.set_background_color (black_color)
		create version.make_with_text(version_str)
		version.set_foreground_color (white_color)
		version.set_background_color (black_color)
		bottom_bar.extend_with_position_and_size (version, 0, 0, 100, 25)
		bottom_bar.extend_with_position_and_size (cop, 335, 0, 250, 25)
		extend_with_position_and_size (bottom_bar, 0, 585, 940,25)

			-- Create the top bar container
		create top_bar
		top_bar.set_background_color (black_color)
		create welcome_msg.make_with_text ("Join a game")
		welcome_msg.set_background_color (black_color)
		welcome_msg.set_foreground_color (white_color)
		top_bar.extend_with_position_and_size (welcome_msg,335,0,250,25)
	 	extend_with_position_and_size (top_bar,0,0,940,25)



	end


feature{NONE} -- Actions

	connect
			-- Connects to the server
			-- If something goes wrong a dialog opens up
		local
			port : INTEGER
		do
			if(ip_address_field.text_length>0)then
				if(port_field.text_length>0)then
					if(port_field.text.is_integer)then
						port := port_field.text.to_integer_32
						if(port>0 and port<=65535)then
						 	window.start_client (ip_address_field.text, port)
						 	window.set_view_to_game
						else
							show_error("Wrong port number.","Wrong port number. Please make sure the port number is valid.")
						end
					else
						show_error("Wrong port number.","A valid port number is a number (1,65535), not a string.")
					end
				else
					show_error("Insert a port number.","Please insert a port number.")
				end
			else
				show_error("Insert an IP address","Please insert an IP Address.")
			end
		end

	show_error(title:STRING;message:STRING)
	local
		dialog: EV_WARNING_DIALOG
	do
		create dialog.make_with_text (message)
		dialog.set_title (title)
		dialog.show_modal_to_window (window)
	end






feature{NONE} -- Attributes

	-- Buttons
	connect_btn :CP_BUTTON
	goback_btn:CP_BUTTON

	-- Used Images
	game_logo_image: EV_PIXMAP
			-- The game logo
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (hive_logo_img))
		end

	-- Containers
	image_container:EV_FIXED
	bottom_bar:EV_FIXED
	top_bar:EV_FIXED


	-- Text fields
	ip_address_field:EV_TEXT_FIELD
	port_field:EV_TEXT_FIELD

	-- The window caller
	window:CP_MAIN_WINDOW

	-- The labels of window
	menu_title:EV_LABEL
	version:EV_LABEL
	cop:EV_LABEL
	welcome_msg:EV_LABEL
	addr_label:EV_LABEL
	port_label:EV_LABEL

end
