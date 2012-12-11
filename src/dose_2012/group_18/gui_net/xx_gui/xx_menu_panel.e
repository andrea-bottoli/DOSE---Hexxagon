note
	description: "The Menu Panel"
	author: "Team Milano2"
	date: "27-11-2012"
	revision: "0.5"

class
	XX_MENU_PANEL

inherit
	EV_FIXED

	XX_GUI_CONSTANTS
	undefine
		default_create,
		copy,
		is_equal
	end

create
	make_menu_panel

feature {NONE} --Constructor of the class

	make_menu_panel(a_gui: XX_GUI)
	do
		default_create
		gui:=a_gui
		create_graphical_element
		create_text_fields
		populate_array_graphical_elements
		build_panel
	end

feature {NONE} --Attributes

	--Reference to xx_gui
	gui: XX_GUI

	background_menu: EV_PIXMAP

	array_graphical_elements: ARRAY[XX_GUI_GRAPHICAL_ELEMENT]

	single_player: XX_GUI_GRAPHICAL_ELEMENT
	multiplayer: XX_GUI_GRAPHICAL_ELEMENT
	form_single_player: XX_GUI_GRAPHICAL_ELEMENT
	form_multiplayer: XX_GUI_GRAPHICAL_ELEMENT
	server_button: XX_GUI_GRAPHICAL_ELEMENT
	client_button: XX_GUI_GRAPHICAL_ELEMENT
	panic_button: XX_GUI_GRAPHICAL_ELEMENT
	start_button: XX_GUI_GRAPHICAL_ELEMENT
	exit_button: XX_GUI_GRAPHICAL_ELEMENT

	name_text_field: EV_TEXT_FIELD
	ip_text_field: EV_TEXT_FIELD
	port_text_field: EV_TEXT_FIELD

	sp_bool: BOOLEAN
	mp_bool: BOOLEAN

	iruby: BOOLEAN
	ipearl: BOOLEAN
	ruby: BOOLEAN
	pearl: BOOLEAN

feature {NONE} --Internal methods to create and populate the panel

	--Creates the graphical elements
	create_graphical_element
	do
		create single_player.make_single_player
		create multiplayer.make_multiplayer
		create form_single_player.make_form_single_player
		create form_multiplayer.make_form_multiplayer
		create server_button.make_server_button
		create client_button.make_client_button
		create panic_button.make_panic_button
		create start_button.make_start_button
		create exit_button.make_exit_button

		create array_graphical_elements.make_filled (void, 1, 9)

		create name_text_field
		create ip_text_field
		create port_text_field
	end

	--Creates the text fields
	create_text_fields
	local
		l_font: EV_FONT
		l_color: EV_COLOR
	do
		create l_font
		l_font.set_family ({EV_FONT_CONSTANTS}.Family_screen)
		l_font.set_weight ({EV_FONT_CONSTANTS}.Weight_bold)
		l_font.set_shape ({EV_FONT_CONSTANTS}.shape_regular)
		l_font.set_height_in_points (16)

		create l_color.make_with_8_bit_rgb (0, 0, 205)

		name_text_field.set_minimum_size (190, 30)
		name_text_field.align_text_center
		name_text_field.set_font (l_font)
		name_text_field.set_foreground_color (l_color)

		ip_text_field.set_minimum_size (190, 30)
		ip_text_field.align_text_center
		ip_text_field.set_capacity (15)
		ip_text_field.set_font (l_font)
		ip_text_field.set_foreground_color (l_color)

		port_text_field.set_minimum_size (190, 30)
		port_text_field.align_text_center
		port_text_field.set_capacity (5)
		port_text_field.set_font (l_font)
		port_text_field.set_foreground_color (l_color)
	end


	--Populates the array
	populate_array_graphical_elements
	do
		array_graphical_elements.put (single_player, 1)
		array_graphical_elements.put (multiplayer, 2)
		array_graphical_elements.put (form_single_player, 3)
		array_graphical_elements.put (form_multiplayer, 4)
		array_graphical_elements.put (server_button, 5)
		array_graphical_elements.put (client_button, 6)
		array_graphical_elements.put (panic_button, 7)
		array_graphical_elements.put (start_button, 8)
		array_graphical_elements.put (exit_button, 9)
	end

	--Method that builds the panel
	build_panel
	do
		background_menu:=pixmap_menu
		current.extend (background_menu)

		sp_bool:=TRUE
		mp_bool:=FALSE

		iruby:=FALSE
		ipearl:=FALSE

		ruby:=FALSE
		pearl:=FALSE

		set_position_graphical_elements
		draw_initial_state
		draw_text_field
		set_agents
	end

feature{NONE} --Load the images

	--Return the pixmap menu background
	pixmap_menu:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_menu))
		end

feature{XX_GUI} --Method used by xx_gui
	--Clean menu panel
	clean_menu_panel
	do
		clean_name_text_field
		clean_ip_net_text_field
	end

feature{NONE}
	--Clean name text field
	clean_name_text_field
	do
		name_text_field.remove_text
	end

	--Clean ip and net text field
	clean_ip_net_text_field
	do
		ip_text_field.remove_text
		port_text_field.remove_text
	end

	--Switch text filed to single player
	switch_text_field_to_single_player
	do
		ip_text_field.hide
		port_text_field.hide
		clean_ip_net_text_field
	end

	--Switch text filed to multiplayer server
	switch_text_field_to_multiplayer_server
	do
		ip_text_field.hide
		clean_ip_net_text_field
		port_text_field.show
	end

	--Switch text filed to multiplayer client
	switch_text_field_to_multiplayer_client
	do
		clean_ip_net_text_field
		ip_text_field.show
		port_text_field.show
	end

	--Sets the position of the graphical elements
	set_position_graphical_elements
	local
		l_coord: TUPLE[INTEGER, INTEGER]
		l_i: INTEGER
	do
		create l_coord
		from
			l_i:=0
		until
			l_i>=array_graphical_elements.count
		loop
			l_coord:=get_coordinates(array_graphical_elements.at (l_i+1))
			array_graphical_elements.at (l_i+1).set_x_coord (l_coord.item (1).out.to_integer)
			array_graphical_elements.at (l_i+1).set_y_coord (l_coord.item (2).out.to_integer)
			l_i:=l_i+1
		end
	end

	--Return the coordinates of a graphical elemet
	get_coordinates(a_gui_graph_el: XX_GUI_GRAPHICAL_ELEMENT): TUPLE[INTEGER, INTEGER]
	local
		l_id_name: STRING
		l_x_pos: INTEGER
		l_y_pos: INTEGER
	do
		Result:=[0,0]
		l_id_name:= a_gui_graph_el.get_identifier_name

		if(l_id_name.is_equal ("single_player"))then
			l_x_pos:= background_menu.width//2 - a_gui_graph_el.get_image_width
			l_y_pos:= background_menu.height//5 - 20
		elseif (l_id_name.is_equal ("multiplayer")) then
			l_x_pos:= background_menu.width//2
			l_y_pos:= background_menu.height//5 - 30
		elseif (l_id_name.is_equal ("form_single_player")) then
			l_x_pos:= background_menu.width//9
			l_y_pos:= background_menu.height//2
		elseif (l_id_name.is_equal ("form_multiplayer")) then
			l_x_pos:= background_menu.width//9
			l_y_pos:= background_menu.height//2
		elseif (l_id_name.is_equal ("server_button")) then
			l_x_pos:= (background_menu.width//10)*7 + 15
			l_y_pos:= background_menu.height//2
		elseif (l_id_name.is_equal ("client_button")) then
			l_x_pos:= (background_menu.width//10)*7 + 15
			l_y_pos:= background_menu.height//2 + a_gui_graph_el.get_image_height
		elseif (l_id_name.is_equal ("panic_button")) then
			l_x_pos:= 10
			l_y_pos:= background_menu.height - a_gui_graph_el.get_image_height - 10
		elseif (l_id_name.is_equal ("start_button")) then
			l_x_pos:= background_menu.width//2 - a_gui_graph_el.get_image_width//2
			l_y_pos:= background_menu.height - a_gui_graph_el.get_image_height - 10
		elseif (l_id_name.is_equal ("exit_button")) then
			l_x_pos:= background_menu.width - a_gui_graph_el.get_image_width -10
			l_y_pos:= background_menu.height - a_gui_graph_el.get_image_height -10
		end

		Result:=[l_x_pos, l_y_pos]
	end

	--Draws the graphical elements
	draw_initial_state
	do
		single_player.draw_element_clicked (background_menu)
		single_player.set_selected (TRUE)
		multiplayer.draw_element_normal (background_menu)
		form_single_player.draw_form_single_player (background_menu)
		server_button.draw_element_hide (background_menu)
		client_button.draw_element_hide (background_menu)
		panic_button.draw_element_normal (background_menu)
		start_button.draw_element_normal (background_menu)
		exit_button.draw_element_normal (background_menu)
	end

	--Puts the text fields in the panel
	draw_text_field
	do
		extend_with_position_and_size (name_text_field, 230, 365, name_text_field.width, name_text_field.height)
		extend_with_position_and_size (ip_text_field, name_text_field.x_position, name_text_field.y_position + 45, ip_text_field.width, ip_text_field.height)
		extend_with_position_and_size (port_text_field, ip_text_field.x_position, ip_text_field.y_position + 45, port_text_field.width, port_text_field.height)
		switch_text_field_to_single_player
	end


	--Method that sets the agents on the board
	set_agents
	do
		--Sets the actions for the pointer enter actions
		background_menu.pointer_motion_actions.extend (agent mouse_motion_action)

		--Sets the actions for the pointer enter actions
		background_menu.pointer_leave_actions.extend(agent mouse_leave_action)

		--Sets the actions for pointer click actions
		background_menu.pointer_button_press_actions.extend(agent mouse_press_action(?,?,?,?,?,?,?,?))

		--Sets the actions for pointer release actions
		background_menu.pointer_button_release_actions.extend (agent mouse_release_action(?,?,?,?,?,?,?,?))
	end


	--Method that catches the mouse motion actions
	mouse_motion_action(a_x, a_y: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	local
		l_id_name: STRING
	do
		create l_id_name.make_from_string (interaction_element (a_x, a_y))
		if(not l_id_name.is_equal (""))then
			if(l_id_name.is_equal ("single_player") or l_id_name.is_equal ("multiplayer") or l_id_name.is_equal ("server_button") or l_id_name.is_equal ("exit_button") or
																																	l_id_name.is_equal ("start_button") or
																																	l_id_name.is_equal ("panic_button") or
																																	l_id_name.is_equal ("client_button"))then
				mouse_enter_action(l_id_name)
			end
		else
			mouse_leave_action
		end

	end

	--Draw highlighted images
	mouse_enter_action(a_id_name: STRING)
	local
		l_element: XX_GUI_GRAPHICAL_ELEMENT
	do
		l_element:=search_element(a_id_name)
		if(not l_element.is_selected and not l_element.is_highlighted and not l_element.is_hidden)then
			l_element.set_highlighted (TRUE)
			l_element.draw_element_highlighted (background_menu)
		end
	end

	--Draw not highlighted images
	mouse_leave_action
	local
		l_i: INTEGER
	do
		from
			l_i:=0
		until
			l_i>=array_graphical_elements.count
		loop
			if(not array_graphical_elements.at (l_i+1).is_selected and array_graphical_elements.at (l_i+1).is_highlighted)then
				array_graphical_elements.at (l_i+1).set_highlighted (FALSE)
				array_graphical_elements.at (l_i+1).draw_element_normal (background_menu)
			end

			l_i:=l_i+1
		end
	end


	--Method that catches the mouse press actions
	mouse_press_action (x_pos, y_pos, c: INTEGER; d,e,f: REAL_64; g,h:INTEGER)
	local
		l_id_name: STRING
	do
		create l_id_name.make_from_string (interaction_element (x_pos, y_pos))
		if(not l_id_name.is_equal ("")) then
			exe_pressed_element(search_element (l_id_name))
		end
	end


	--Method that catches the mouse release actions
	mouse_release_action (x_pos, y_pos, c: INTEGER; d,e,f: REAL_64; g,h:INTEGER)
	local
		l_id_name: STRING
	do
		create l_id_name.make_from_string (interaction_element (x_pos, y_pos))
		if(not l_id_name.is_equal ("")) then
			exe_release_action(l_id_name)
		end
	end


	--Returns the element given his id_name
	search_element(a_id_name: STRING): XX_GUI_GRAPHICAL_ELEMENT
	local
		l_i: INTEGER
		l_b: BOOLEAN
		l_num_el: INTEGER
	do
		l_num_el:=array_graphical_elements.count
		from
			l_i:=0
			l_b:=FALSE
		until
			l_i>=array_graphical_elements.count//2+1 or l_b=TRUE
		loop
			if(array_graphical_elements.at (l_i+1).get_identifier_name.is_equal (a_id_name))then
				Result:=array_graphical_elements.at (l_i+1)
				l_b:=TRUE
			elseif(array_graphical_elements.at (l_num_el-l_i).get_identifier_name.is_equal (a_id_name))then
				Result:=array_graphical_elements.at (l_num_el-l_i)
				l_b:=TRUE
			end

			l_i:=l_i+1
		end
	end


	--Method that return the id_name of the gui_graphical_element which has an interaction
	interaction_element(a_x_pos, a_y_pos: INTEGER): STRING
	local
		l_i: INTEGER
		l_b: BOOLEAN
		l_elem1_width: INTEGER
		l_elem1_height: INTEGER
		l_elem2_width: INTEGER
		l_elem2_height: INTEGER
		l_x1_pos: INTEGER
		l_y1_pos: INTEGER
		l_x2_pos: INTEGER
		l_y2_pos: INTEGER
		l_num_elem: INTEGER
		l_id1_name: STRING
		l_id2_name: STRING
		l_x1_off: INTEGER
		l_y1_off: INTEGER
		l_x2_off: INTEGER
		l_y2_off: INTEGER
	do
		Result:=""
		l_num_elem:=array_graphical_elements.count
		l_b:= FALSE
		from
			l_i:=0
		until
			l_i>=((array_graphical_elements.count//2)+1) or l_b=TRUE
		loop
			l_id1_name:=array_graphical_elements.at (l_i+1).get_identifier_name
			l_id2_name:=array_graphical_elements.at (l_num_elem-l_i).get_identifier_name

			l_x1_pos:=array_graphical_elements.at (l_i+1).get_x_coord
			l_y1_pos:=array_graphical_elements.at (l_i+1).get_y_coord

			l_x2_pos:=array_graphical_elements.at (l_num_elem-l_i).get_x_coord
			l_y2_pos:=array_graphical_elements.at (l_num_elem-l_i).get_y_coord


			l_elem1_width:=array_graphical_elements.at (l_i+1).get_image_width
			l_elem1_height:=array_graphical_elements.at (l_i+1).get_image_height

			l_elem2_width:=array_graphical_elements.at (l_num_elem-l_i).get_image_width
			l_elem2_height:=array_graphical_elements.at (l_num_elem-l_i).get_image_height

			if(l_id1_name.is_equal ("single_player") or l_id1_name.is_equal ("multiplayer"))then
				l_x1_off:=l_elem1_width//8
				l_y1_off:=l_elem1_height//10
			elseif (l_id1_name.is_equal ("form_single_player")) then
				l_x1_off:=l_elem1_width//8
				l_y1_off:=l_elem1_height//10
			elseif (l_id1_name.is_equal ("form_multiplayer")) then
				l_x1_off:=l_elem1_width
				l_y1_off:=l_elem1_height
			elseif (l_id1_name.is_equal ("server_button") ) then
				l_x1_off:=l_elem1_width//6
				l_y1_off:=l_elem1_height//5
			end

			if (l_id2_name.is_equal ("exit_button")) then
				l_x2_off:=l_elem2_width//4
				l_y2_off:=l_elem2_height//4
			elseif (l_id2_name.is_equal ("start_button")) then
				l_x2_off:=l_elem2_width//20
				l_y2_off:=l_elem2_height//20
			elseif (l_id2_name.is_equal ("panic_button")) then
				l_x2_off:=0
				l_y2_off:=l_elem2_height//4
			elseif (l_id2_name.is_equal ("client_button")) then
				l_x2_off:=l_elem2_width//6
				l_y2_off:=l_elem2_height//5
			end


			if(l_id1_name.is_equal ("form_single_player") and l_id2_name.is_equal ("panic_button"))then
				if(a_x_pos>(l_x1_pos+185) and a_x_pos<(l_x1_pos+240) and a_y_pos>(l_y1_pos+110) and a_y_pos<(l_y1_pos+165)) then
					if(sp_bool)then
						Result.append_string (l_id1_name)
						iruby:=TRUE
						ipearl:=FALSE
						l_b:=TRUE
					end
				elseif (a_x_pos>(l_x1_pos+270) and a_x_pos<(l_x1_pos+325) and a_y_pos>(l_y1_pos+110) and a_y_pos<(l_y1_pos+165)) then
					if(sp_bool)then
						Result.append_string (l_id1_name)
						iruby:=FALSE
						ipearl:=TRUE
						l_b:=TRUE
					end
				elseif (a_x_pos>(l_x2_pos+l_x2_off) and a_x_pos<(l_x2_pos+l_elem2_width-l_x2_off) and a_y_pos>(l_y2_pos+l_y1_off) and a_y_pos<(l_y2_pos+l_elem2_height)) then
					Result.append_string (l_id2_name)
					l_b:=TRUE
				end
			else
				if(a_x_pos>(l_x1_pos+l_x1_off) and a_x_pos<(l_x1_pos+l_elem1_width-l_x1_off) and a_y_pos>(l_y1_pos+l_y1_off) and a_y_pos<(l_y1_pos+l_elem1_height-l_y1_off)) then
					Result.append_string (l_id1_name)
					l_b:=TRUE
				elseif (a_x_pos>(l_x2_pos+l_x2_off) and a_x_pos<(l_x2_pos+l_elem2_width-l_x2_off) and a_y_pos>(l_y2_pos+l_y2_off) and a_y_pos<(l_y2_pos+l_elem2_height-l_y2_off)) then
					Result.append_string (l_id2_name)
					l_b:=TRUE
				end
			end
			l_i:=l_i+1
		end
	end

	--Method that executes an action on pointer press action
	exe_pressed_element(a_elem: XX_GUI_GRAPHICAL_ELEMENT)
	do
		if (not a_elem.get_identifier_name.is_equal ("form_single_player") and  not a_elem.get_identifier_name.is_equal ("form_multiplayer")) then
			if (a_elem.get_identifier_name.is_equal ("server_button"))then
				if(mp_bool)then
					a_elem.set_pressed(TRUE)
					a_elem.draw_element_clicked (background_menu)
				end
			elseif (a_elem.get_identifier_name.is_equal ("client_button"))then
				if(mp_bool)then
					a_elem.set_pressed(TRUE)
					a_elem.draw_element_clicked (background_menu)
				end
			else
				a_elem.set_pressed(TRUE)
				a_elem.draw_element_clicked (background_menu)
			end
		end
	end

	--Method that reset the value of pressed status
	exe_reset_pressed_element
	local
		l_i: INTEGER
		l_elem: XX_GUI_GRAPHICAL_ELEMENT
	do
		from
			l_i:=0
		until
			l_i>=array_graphical_elements.count
		loop
			l_elem:=array_graphical_elements.at (l_i+1)
			l_elem.set_pressed (FALSE)
			l_elem.set_highlighted (FALSE)
			if(not l_elem.get_identifier_name.is_equal ("form_single_player") and not l_elem.get_identifier_name.is_equal ("form_multiplayer"))then
				if(l_elem.is_selected)then
					l_elem.draw_element_clicked (background_menu)
				elseif (l_elem.is_hidden)then
					l_elem.draw_element_hide (background_menu)
				else
					l_elem.draw_element_normal (background_menu)
				end
			end
			l_i:=l_i+1
		end
	end

	--Method that executes an action on pointer release action
	exe_release_action(a_id_name: STRING)
	do
		if(a_id_name.is_equal ("single_player"))then
			if(single_player.is_pressed)then
				sp_bool:=TRUE
				mp_bool:=FALSE
				single_player.set_selected (TRUE)
				single_player.set_highlighted (FALSE)
				single_player.set_pressed (FALSE)
				multiplayer.set_selected (FALSE)
				server_button.set_hide (TRUE)
				server_button.set_selected (FALSE)
				server_button.set_highlighted (FALSE)
				client_button.set_hide (TRUE)
				client_button.set_selected (FALSE)
				client_button.set_highlighted (FALSE)
				single_player.draw_element_clicked (background_menu)
				multiplayer.draw_element_normal (background_menu)
				form_single_player.draw_element_normal (background_menu)
				switch_text_field_to_single_player
				server_button.draw_element_hide (background_menu)
				client_button.draw_element_hide (background_menu)
			else
				exe_reset_pressed_element
			end
		elseif (a_id_name.is_equal ("multiplayer"))then
			if(multiplayer.is_pressed)then
				sp_bool:=FALSE
				mp_bool:=TRUE
				single_player.set_selected (FALSE)
				multiplayer.set_selected (TRUE)
				multiplayer.set_highlighted (FALSE)
				multiplayer.set_pressed (FALSE)
				server_button.set_hide (FALSE)
				server_button.set_selected (TRUE)
				server_button.set_highlighted (FALSE)
				client_button.set_selected (FALSE)
				client_button.set_hide (FALSE)
				client_button.set_highlighted (FALSE)
				single_player.draw_element_normal (background_menu)
				multiplayer.draw_element_clicked (background_menu)
				form_multiplayer.draw_form_multiplayer_server (background_menu)
				switch_text_field_to_multiplayer_server
				server_button.draw_element_clicked(background_menu)
				client_button.draw_element_normal (background_menu)
			else
				exe_reset_pressed_element
			end
		elseif (a_id_name.is_equal ("form_single_player")) then
			if(sp_bool)then
				if(iruby)then
					form_single_player.draw_form_single_player_ruby (background_menu)
					ruby:=TRUE
					pearl:=FALSE
				elseif (ipearl) then
					form_single_player.draw_form_single_player_pearl (background_menu)
					ruby:=FALSE
					pearl:=TRUE
				end
			end
		elseif (a_id_name.is_equal ("server_button") ) then
			if(mp_bool and server_button.is_pressed)then
				server_button.set_selected (TRUE)
				server_button.set_highlighted (FALSE)
				client_button.set_selected (FALSE)
				server_button.set_pressed (FALSE)
				server_button.draw_element_clicked (background_menu)
				client_button.draw_element_normal (background_menu)
				form_multiplayer.draw_form_multiplayer_server (background_menu)
				switch_text_field_to_multiplayer_server
			else
				exe_reset_pressed_element
			end
		elseif (a_id_name.is_equal ("client_button")) then
			if(mp_bool and client_button.is_pressed)then
				server_button.set_selected (FALSE)
				client_button.set_selected (TRUE)
				client_button.set_highlighted (FALSE)
				client_button.set_pressed (FALSE)
				client_button.draw_element_clicked (background_menu)
				server_button.draw_element_normal (background_menu)
				form_multiplayer.draw_form_multiplayer_client (background_menu)
				switch_text_field_to_multiplayer_client
			else
				exe_reset_pressed_element
			end
		elseif (a_id_name.is_equal ("exit_button")) then
			if(exit_button.is_pressed)then
				exit_button.draw_element_normal (background_menu)
				exit_button.set_selected (FALSE)
				exit_button.set_highlighted (FALSE)
				exit_button.set_pressed (FALSE)
				gui.close_window
			else
				exe_reset_pressed_element
			end
		elseif (a_id_name.is_equal ("start_button")) then
			if(start_button.is_pressed)then
				start_button.draw_element_normal(background_menu)
				start_button.set_selected (FALSE)
				start_button.set_highlighted (FALSE)
				start_button.set_pressed (FALSE)

				if(sp_bool)then
					if(ruby)then
						gui.start_game (sp_bool, mp_bool, FALSE, name_text_field.text, string_color_ruby, "", "")
					elseif(pearl)then
						gui.start_game (sp_bool, mp_bool, FALSE, name_text_field.text, string_color_pearl, "", "")
					else
						gui.start_game (sp_bool, mp_bool, FALSE, name_text_field.text, "", "", "")
					end
				elseif(mp_bool)then
					if(server_button.is_selected)then
						gui.start_game (sp_bool, mp_bool, server_button.is_selected, name_text_field.text, string_color_ruby, "111.222.111.222", port_text_field.text)
					else
						gui.start_game (sp_bool, mp_bool, server_button.is_selected, name_text_field.text, string_color_pearl, ip_text_field.text, port_text_field.text)
					end
				end
			else
				exe_reset_pressed_element
			end
		elseif (a_id_name.is_equal ("panic_button")) then
			if(panic_button.is_pressed)then
				panic_button.draw_element_normal (background_menu)
				panic_button.set_selected (FALSE)
				panic_button.set_highlighted (FALSE)
				panic_button.set_pressed (FALSE)
				gui.rule_dialog
			else
				exe_reset_pressed_element
			end
		else
			exe_reset_pressed_element
		end

		iruby:=FALSE
		ipearl:=FALSE
	end
end
