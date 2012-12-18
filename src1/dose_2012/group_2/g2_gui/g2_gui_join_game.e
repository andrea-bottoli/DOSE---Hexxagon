note
	description: "This class {G2_GUI_JOIN_GAME}  is a interface user , that allows create one join game"
	author: "Group 2 / Rio Cuarto 8"
	date: " 2012/12/12  "
	revision: "1.0.1"

class
	G2_GUI_JOIN_GAME

inherit

	EV_TITLED_WINDOW
		redefine
			initialize,
			is_in_default_state
		end

	INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

create
	default_create

feature {NONE} -- Initialization

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}
			build_main_fixed
			extend (main_container)
			load_color

				--event button
			b_join_game.select_actions.extend (agent join_game)
			b_back.select_actions.extend (agent back)

				-- Set the title of the window
			set_title (Window_title)

				-- Set the initial size of the window
			set_size (Window_width, Window_height)
			set_maximum_size (Window_width, Window_height)
			set_minimum_size (Window_width, Window_height)
		end

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
			-- (as stated in `initialize')
		do
			Result := (width = Window_width) and then (height = Window_height) and then (title.is_equal (Window_title))
		end

feature {NONE} -- Implementation

		-- Main container (contains all widgets displayed in this window)

	build_main_fixed
			-- Create and populate `main_container'.
		require
			main_container_not_yet_created: main_container = Void
		do
			create main_container
			build_image
			build_label
			build_text_field
			build_button
			main_container.set_background_pixmap (i_image_background)

				--extend main_conteiner
			main_container.extend (l_ip)
			main_container.extend (l_port)
			main_container.extend (t_ip)
			main_container.extend (t_port)
			main_container.extend (b_join_game)
			main_container.extend (b_back)
			set_position_label
			set_position_text_field
			set_position_button
		ensure
			main_container_created: main_container /= Void
		end

	build_button
			--create button
		do
				-- create b_join_game
			create b_join_game
			b_join_game.set_text ({INTERFACE_NAMES}.button_join_game)

				-- create b_back
			create b_back
			b_back.set_text ({INTERFACE_NAMES}.button_back)
		end

	build_label
			--create label
		do
			create l_ip
			l_ip.set_text ({INTERFACE_NAMES}.label_ip)

				-- create b_back
			create l_port
			l_port.set_text ({INTERFACE_NAMES}.label_port)
		end

	build_text_field
			--create textfield
		do
			create t_ip
			t_ip.set_text ({INTERFACE_NAMES}.text_ip)

				-- create b_back
			create t_port
			t_port.set_text ({INTERFACE_NAMES}.TextField_port)
		end

	build_image
			--create image the background window
		do
			create i_image_background
			i_image_background.set_with_named_file ({INTERFACE_NAMES}.Path_join_pixmap)
		end

	set_position_label
			--set position label
		do
				--set position Label IP
			main_container.set_item_position_and_size (l_ip, 0000 , 0040 , 0060 , 0020 )
				--set position Label PORT
			main_container.set_item_position_and_size (l_port, 0240 , 0040 , 0060 , 0020 )
		end

	set_position_text_field
			--set position textfield
		do
				--set position Text IP
			main_container.set_item_position_and_size (t_ip, 0080 , 0040 , 0080 , 0020 )
				--set position Text PORT
			main_container.set_item_position_and_size (t_port, 0320 , 0040 , 0060 , 0020 )
		end

	set_position_button
			-- set position button
		do
				--set position Button  Join Game

			main_container.set_item_position_and_size (b_join_game, 0020 , 0080 , 0080 , 0020)
				--set position Button Back
			main_container.set_item_position_and_size (b_back, 0140 , 0080 , 0080 , 0020)
		end

feature {NONE}

	join_game
			--initializes port and ip in the main menu.
		do
			if (t_port.text.is_integer) then
				if (valid_ip_address (t_ip.text) and validate_port (t_port.text.to_integer)) then
					t_ip.set_background_color (array_color.at (2))
					t_port.set_background_color (array_color.at (2))
					main_menu.set_ip (t_ip.text)
					main_menu.set_port (t_port.text.to_integer)
					main_menu.get_inform_join_game
					Current.hide
				end
				if (not valid_ip_address (t_ip.text)) then
					t_ip.set_background_color (array_color.at (1))
				end
				if (not validate_port (t_port.text.to_integer)) then
					t_port.set_background_color (array_color.at (1))
				end
			else
				t_port.set_background_color (array_color.at (3))
			end
		end

	back
			--back to the main window.
		do
			main_menu.show
			current.destroy
		end

feature {NONE} --miscellanies

	array_color: ARRAY [EV_COLOR]

	load_color
			--initialize array color
		local
			color: EV_COLOR
		do
			create array_color.make_filled (Void, 1, 3)

				--red error port
			create color.make_with_8_bit_rgb (255, 0, 0)
			array_color.put (color, 1)

				--green port valid
			create color.make_with_8_bit_rgb (0, 255, 0)
			array_color.put (color, 2)

				--yellow error port not integer
			create color.make_with_8_bit_rgb (255, 255, 0)
			array_color.put (color, 3)
		end

	valid_ip_address (ip: STRING): BOOLEAN
			-- is a valid ipv4 address?
		require
			not_void_ip: ip /= Void
		local
			net_address: INET_ADDRESS_FACTORY
			ipv4_address: INET_ADDRESS
		do
			create net_address
			ipv4_address ?= net_address.create_from_name(ip)
			Result := ipv4_address /= Void
		end

	validate_port (port_1: INTEGER): BOOLEAN
			--validates port
		do
			Result := 10000 <= port_1 and port_1 <= 11000
		end

feature {NONE} -- Implementation

	main_container: EV_FIXED

	l_ip, l_port: EV_LABEL

	t_ip, t_port: EV_TEXT_FIELD

	b_join_game, b_back: EV_BUTTON

	i_image_background: EV_PIXMAP

	main_menu: G2_GUI_MAIN_MENU

feature -- set main_menu

	set_main_menu (main_menu_1: G2_GUI_MAIN_MENU)
		do
			main_menu := main_menu_1
		end

feature {NONE} -- Implementation / Constants

	Window_title: STRING = "join_game"
			-- Title of the window.

	Window_width: INTEGER = 400
			-- Initial width for this window.

	Window_height: INTEGER = 150
			-- Initial height for this window.

end
