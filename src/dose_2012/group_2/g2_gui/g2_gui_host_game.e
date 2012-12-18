note
	description: "This class {G2_GUI_HOST_GAME}  is a interface user , that allows create one new game"
	author: "Group 2 / Rio Cuarto 8"
	date: " 2012/12/12  "
	revision: "1.0.1"

class
	G2_GUI_HOST_GAME

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
			build_main_container
			extend (main_container)
			create rules.make_filled (false, 1, 7)
			load_color

				--event button
			b_create_game.select_actions.extend (agent host_game)
			b_back.select_actions.extend (agent back)

				--event check button rules
			c_open.select_actions.extend (agent load_rules("open"))
			c_plus.select_actions.extend (agent load_rules("plus"))
			c_same.select_actions.extend (agent load_rules("same"))
			c_same_wall.select_actions.extend (agent load_rules("same wall"))
			c_sudden_death.select_actions.extend (agent load_rules("sudden death"))
			c_combo.select_actions.extend (agent load_rules("combo"))
			c_element.select_actions.extend (agent load_rules("element"))

				-- Set the title of the window
			set_title (Window_title)

				--Set size windows
			disable_user_resize
			set_size (Window_width, Window_height)
		end

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
			-- (as stated in `initialize')
		do
			Result := (width = Window_width) and then (height = Window_height) and then (title.is_equal (Window_title))
		end

feature {NONE} -- Implementation / Begin creation de window

	build_main_container
			-- Create and populate `main_container'.
			--		require
			--			main_container_not_yet_created: main_container = Void
		do
			create main_container
			build_fixed_port
			build_fixed_rules
			build_fixed_button
			main_container.extend (f_fixed_port)
			main_container.extend (f_fixed_rules)
			main_container.extend (f_fixed_button)
		ensure
			main_container_created: main_container /= Void
		end

	build_fixed_port
			--create fixed the label_port and textfield_port
		do
			create f_fixed_port
			f_fixed_port.set_minimum_size (200, 100)
			build_port
			f_fixed_port.extend (l_port)
			f_fixed_port.extend (t_port)
			set_position_port
		end

	build_fixed_rules
			--create fixed the check_button
		do
			create f_fixed_rules
				--changes the size fixed rules (before 200,100)
			f_fixed_rules.set_minimum_size (200, 120)
			build_chech_button_rules
			create l_rules
			l_rules.set_text (" Rules : ")
			f_fixed_rules.extend (l_rules)
			f_fixed_rules.extend (c_open)
			f_fixed_rules.extend (c_plus)
			f_fixed_rules.extend (c_same)
			f_fixed_rules.extend (c_same_wall)
			f_fixed_rules.extend (c_sudden_death)
			f_fixed_rules.extend (c_combo)
			f_fixed_rules.extend (c_element)
			set_position_check_button
		end

	build_fixed_button
			--create fixed the button
		do
			create f_fixed_button
			f_fixed_button.set_minimum_size (200, 100)
			build_button
			f_fixed_button.extend (b_create_game)
			f_fixed_button.extend (b_back)
			set_position_button
		end

	build_port
			--create label_port and textfield_port
		do
			create l_port
			l_port.set_text ({INTERFACE_NAMES}.label_port)
			create t_port
			t_port.set_text ({INTERFACE_NAMES}.textField_port)
		end

	build_button
			--creation button
		do
				--create button create_game
			create b_create_game
			b_create_game.set_text ({INTERFACE_NAMES}.button_create_game)

				--create button back
			create b_back
			b_back.set_text ({INTERFACE_NAMES}.button_back)
		end

	build_chech_button_rules
			-- create the check_button
		do
			create c_open
			c_open.set_text ({INTERFACE_NAMES}.rule_open)
			create c_plus
			c_plus.set_text ({INTERFACE_NAMES}.rule_plus)
			create c_same
			c_same.set_text ({INTERFACE_NAMES}.rule_same)
			create c_same_wall
			c_same_wall.set_text ({INTERFACE_NAMES}.rule_same_wall)
			create c_sudden_death
			c_sudden_death.set_text ({INTERFACE_NAMES}.rule_sudden_death)
			create c_combo
			c_combo.set_text ({INTERFACE_NAMES}.rule_combo)
			create c_element
			c_element.set_text ({INTERFACE_NAMES}.rule_element)
		end

	set_position_port
			--setter position the label and textfield on fixed
		do
				--set position label port
			f_fixed_port.set_item_position_and_size (l_port, 0000, 0020, 0060, 0020)

				--set position textfield port
			f_fixed_port.set_item_position_and_size (t_port, 0100, 0020, 0140, 0020)
		end

	set_position_button
			--setter position the button on fixed
		do
				--set position button create game
			f_fixed_button.set_item_position_and_size (b_create_game, 0020, 0060, 0060, 0020)
				--set position button back
			f_fixed_button.set_item_position_and_size (b_back, 0120, 0060, 0060, 0020)
		end

	set_position_check_button
			--setter position the check_button on fixed
		do

				--set position Label rules
			f_fixed_rules.set_item_position_and_size (l_rules, 0000, 0000, 0100, 0020)
				--set position  check button  rules open
			f_fixed_rules.set_item_position_and_size (c_open, 0040, 0060, 0120, 0023)
				--set position  check button  rules plus
			f_fixed_rules.set_item_position_and_size (c_plus, 0040, 0100, 0120, 0023)
				--set position  check button  rules Same
			f_fixed_rules.set_item_position_and_size (c_same, 0040, 0140, 0120, 0023)
				--set position  check button  rules Same Wall
			f_fixed_rules.set_item_position_and_size (c_same_wall, 0220, 0020, 0120, 0023)
				--set position  check button  rules Sudden Death
			f_fixed_rules.set_item_position_and_size (c_sudden_death, 0220, 0060, 0120, 0023)
				--set position  check button  rules Combo
			f_fixed_rules.set_item_position_and_size (c_combo, 0220, 0100, 0120, 0023)
				--set position  check button  rules Element
			f_fixed_rules.set_item_position_and_size (c_element, 0040, 0020, 0120, 0023)
		end

feature {NONE} -- Implementation

	main_container: EV_VERTICAL_BOX
			-- Main container (contains all widgets displayed in this window)

	f_fixed_port, f_fixed_rules, f_fixed_button: EV_FIXED

	l_port, l_rules: EV_LABEL

	t_port: EV_TEXT_FIELD

	c_open, c_plus, c_same, c_same_wall, c_sudden_death, c_combo, c_element: EV_CHECK_BUTTON

	b_create_game, b_back: EV_BUTTON

	w_main_menu_aux: G2_GUI_MAIN_MENU

	w_board_game: G2_GUI_BOARD_GAME

		-- End creation de window

feature {ANY} -- set main menu

	set_main_menu (main_menu: G2_GUI_MAIN_MENU)
			--save the instance main_menu
		do
			w_main_menu_aux := main_menu;
		end

feature {NONE} -- access the event

	host_game
		local
			port: INTEGER
		do
			if (t_port.text.is_integer) then
				port := t_port.text.to_integer
				if (validate_port (port)) then
					t_port.set_background_color (array_color.at (2))
					w_main_menu_aux.set_ip ("localHost")
					w_main_menu_aux.set_port (port)
					w_main_menu_aux.set_rules (rules)
					Current.refresh_now
					Current.hide
					w_main_menu_aux.get_inform_new_game
				else
					t_port.set_background_color (array_color.at (1))
				end
			else
				t_port.set_background_color (array_color.at (3))
			end
		end

	back
			--back to the main menu window.
		do
			Current.hide
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

		--saves  the selected rules

	rules: ARRAY [BOOLEAN]

	load_rules (rule: STRING)
			-- load the rules of game
		require
			rules_void: rules /= void
		do
			if (rule.is_equal ("open")) then
				rules.put (not rules.at (1), 1)
			end
			if (rule.is_equal ("plus")) then
				rules.put (not rules.at (2), 2)
			end
			if (rule.is_equal ("same")) then
				rules.put (not rules.at (3), 3)
			end
			if (rule.is_equal ("same wall")) then
				rules.put (not rules.at (4), 4)
			end
			if (rule.is_equal ("sudden death")) then
				rules.put (not rules.at (5), 5)
			end
			if (rule.is_equal ("combo")) then
				rules.put (not rules.at (6), 6)
			end
			if (rule.is_equal ("element")) then
				rules.put (not rules.at (7), 7)
			end
		ensure
			rules_not_void: rules /= void
		end

	validate_port (port: INTEGER): BOOLEAN
			-- validates the port.
		do
			Result := 10000 <= port and port <= 11000
		end

feature {NONE} -- Implementation / Constants

	Window_title: STRING = "Host Game"
			-- Title of the window.

	Window_width: INTEGER = 400
			-- Initial width for this window.

	Window_height: INTEGER = 500
			-- Initial height for this window.

end
