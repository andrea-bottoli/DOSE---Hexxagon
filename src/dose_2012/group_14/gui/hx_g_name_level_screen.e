note
	description: "Summary description for {HX_G_NAME_LEVEL_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_NAME_LEVEL_SCREEN

inherit
	HX_G_BOARDS

create
	make


feature -- Access

	--graphics
	main_ui						: MAIN_WINDOW
	go_back_button, save_button	: EV_BUTTON
	name_text_field				: EV_TEXT_FIELD
	name_text_field2			: EV_TEXT_FIELD
	ip_text_field				: EV_TEXT_FIELD
	port_text_field				: EV_TEXT_FIELD
	level_label,
	create_join_label			: EV_LABEL
	create_game_radio_button,
	join_game_radio_button,
	easy_level_radio_button,
	medium_level_radio_button,
	hard_level_radio_button		: EV_RADIO_BUTTON
	internal_pixmap				: EV_PIXMAP
	l_ev_fixed_1                : EV_FIXED
	l_ev_combo_box_1: EV_COMBO_BOX


	--infos
	ui_manager		: HX_G_UIMANAGER
	num_players		: INTEGER
	name 			: STRING
	player_name1 	: STRING
	player_name2	: STRING
	difficulty_level: INTEGER
	over_network 	: BOOLEAN
	i				: INTEGER
	logic_combo		:HX_L_LOGIC
	l_list_item: EV_LIST_ITEM



feature --Init

	make(a_main_ui : MAIN_WINDOW; a_ui_manager: HX_G_UIMANAGER)
	local
		screen: EV_SCREEN
	do
		ui_manager:=a_ui_manager
		main_ui:= a_main_ui
		make_with_title ("Set Name and Game Level")

		-- the window should be centered in the screen
		screen := create {EV_SCREEN}
		set_x_position ((screen.width // 2) - (600 // 2))
		set_y_position ((screen.height //2) - (600 // 2))

		-- disable user resizing for the window
		disable_user_resize

		-- Create all widgets.
		create l_ev_fixed_1
		create go_back_button
		create name_text_field
		create name_text_field2
		create ip_text_field
		create port_text_field
		create level_label
		create create_join_label
		create easy_level_radio_button
		create medium_level_radio_button
		create hard_level_radio_button
		create create_game_radio_button
		create join_game_radio_button
		create save_button
		create l_ev_combo_box_1


		-- Build widget structure.
		extend (l_ev_fixed_1)
		l_ev_fixed_1.extend (go_back_button)
		l_ev_fixed_1.extend (name_text_field)
		l_ev_fixed_1.extend (name_text_field2)
		l_ev_fixed_1.extend (level_label)
		l_ev_fixed_1.extend (create_join_label)
		l_ev_fixed_1.extend (easy_level_radio_button)
		l_ev_fixed_1.extend (medium_level_radio_button)
		l_ev_fixed_1.extend (hard_level_radio_button)
		l_ev_fixed_1.extend (create_game_radio_button)
		l_ev_fixed_1.extend (join_game_radio_button)
		l_ev_fixed_1.extend (ip_text_field)
		l_ev_fixed_1.extend (port_text_field)
		l_ev_fixed_1.extend (save_button)
		l_ev_fixed_1.extend (l_ev_combo_box_1)


		l_ev_fixed_1.set_background_pixmap (pix_background)
			-- Size and position all children of `l_ev_fixed_1'.
		l_ev_fixed_1.set_item_x_position (go_back_button, 0150)
		l_ev_fixed_1.set_item_y_position (go_back_button, 0060)
		l_ev_fixed_1.set_item_width (go_back_button, 0270)
		l_ev_fixed_1.set_item_height (go_back_button, 0060)

		l_ev_fixed_1.set_item_x_position (name_text_field, 0200)
		l_ev_fixed_1.set_item_y_position (name_text_field, 0160)
		l_ev_fixed_1.set_item_width (name_text_field, 0180)
		l_ev_fixed_1.set_item_height (name_text_field, 0030)

		l_ev_fixed_1.set_item_x_position (name_text_field2, 0200)
		l_ev_fixed_1.set_item_y_position (name_text_field2, 0300)
		l_ev_fixed_1.set_item_width (name_text_field2, 0180)
		l_ev_fixed_1.set_item_height (name_text_field2, 0030)

		l_ev_fixed_1.set_item_x_position (level_label, 0200)
		l_ev_fixed_1.set_item_y_position (level_label, 0220)
		l_ev_fixed_1.set_item_width (level_label, 0150)
		l_ev_fixed_1.set_item_height (level_label, 0030)

		l_ev_fixed_1.set_item_x_position (create_join_label, 0200)
		l_ev_fixed_1.set_item_y_position (create_join_label, 0220)
		l_ev_fixed_1.set_item_width (create_join_label, 0160)
		l_ev_fixed_1.set_item_height (create_join_label, 0030)

		l_ev_fixed_1.set_item_x_position (easy_level_radio_button, 0200)
		l_ev_fixed_1.set_item_y_position (easy_level_radio_button, 0280)
		l_ev_fixed_1.set_item_width (easy_level_radio_button, 0150)
		l_ev_fixed_1.set_item_height (easy_level_radio_button, 0030)

	    l_ev_fixed_1.set_item_x_position (medium_level_radio_button, 0200)
		l_ev_fixed_1.set_item_y_position (medium_level_radio_button, 0310)
		l_ev_fixed_1.set_item_width (medium_level_radio_button, 0150)
		l_ev_fixed_1.set_item_height (medium_level_radio_button, 0030)

		l_ev_fixed_1.set_item_x_position (hard_level_radio_button, 0200)
		l_ev_fixed_1.set_item_y_position (hard_level_radio_button, 0340)
		l_ev_fixed_1.set_item_width (hard_level_radio_button, 0150)
		l_ev_fixed_1.set_item_height (hard_level_radio_button, 0030)

		l_ev_fixed_1.set_item_x_position (create_game_radio_button, 0200)
		l_ev_fixed_1.set_item_y_position (create_game_radio_button, 0250)
		l_ev_fixed_1.set_item_width (create_game_radio_button, 0160)
		l_ev_fixed_1.set_item_height (create_game_radio_button, 0030)

		l_ev_fixed_1.set_item_x_position (join_game_radio_button, 0200)
		l_ev_fixed_1.set_item_y_position (join_game_radio_button, 0280)
		l_ev_fixed_1.set_item_width (join_game_radio_button, 0160)
		l_ev_fixed_1.set_item_height (join_game_radio_button, 0030)

		l_ev_fixed_1.set_item_x_position (ip_text_field, 0200)
		l_ev_fixed_1.set_item_y_position (ip_text_field, 0320)
		l_ev_fixed_1.set_item_width (ip_text_field, 0160)
		l_ev_fixed_1.set_item_height (ip_text_field, 0030)

		l_ev_fixed_1.set_item_x_position (port_text_field, 0200)
		l_ev_fixed_1.set_item_y_position (port_text_field, 0360)
		l_ev_fixed_1.set_item_width (port_text_field, 0160)
		l_ev_fixed_1.set_item_height (port_text_field, 0030)

		l_ev_fixed_1.set_item_x_position (save_button, 0150)
		l_ev_fixed_1.set_item_y_position (save_button, 0450)
		l_ev_fixed_1.set_item_width (save_button, 0270)
		l_ev_fixed_1.set_item_height (save_button, 0060)

		l_ev_fixed_1.set_item_x_position (l_ev_combo_box_1, 0200)
		l_ev_fixed_1.set_item_y_position (l_ev_combo_box_1, 0400)
		l_ev_fixed_1.set_item_width (l_ev_combo_box_1, 0040)
		l_ev_fixed_1.set_item_height (l_ev_combo_box_1, 0020)

		l_ev_combo_box_1.set_minimum_width (150)
		l_ev_combo_box_1.set_minimum_height (50)

		logic_combo := ui_manager.logic

		across logic_combo.templates as template loop
     		create l_list_item.make_with_text (template.item.name)
     		l_ev_combo_box_1.extend (l_list_item)
    	end

		--default
		difficulty_level := 0

		-- hide fields that appear on certain choices
		name_text_field2.hide
		create_join_label.hide
		create_game_radio_button.hide
		join_game_radio_button.hide
		ip_text_field.hide
		port_text_field.hide

		-- according to the num of players: appear fields to enter their name:
		name_text_field.set_text ("Enter your Name here")

		if( ui_manager.multi_one_player = TRUE) then

			name_text_field2.show
			name_text_field2.set_text("Player2: Enter your Name here")

		    l_ev_fixed_1.set_item_x_position (name_text_field2, 0180)
			l_ev_fixed_1.set_item_y_position (name_text_field2, 0300)
			l_ev_fixed_1.set_item_width (name_text_field2, 0220)
			l_ev_fixed_1.set_item_height (name_text_field2, 0050)

			l_ev_fixed_1.set_item_x_position (name_text_field, 0180)
			l_ev_fixed_1.set_item_y_position (name_text_field, 0180)
			l_ev_fixed_1.set_item_width (name_text_field, 0220)
			l_ev_fixed_1.set_item_height (name_text_field, 0050)

			l_ev_fixed_1.set_item_x_position (save_button, 0150)
			l_ev_fixed_1.set_item_y_position (save_button, 0450)
			l_ev_fixed_1.set_item_width (save_button, 0270)
			l_ev_fixed_1.set_item_height (save_button, 0060)

			name_text_field.set_text ("Player1: Enter your Name here")
		end


		if( ui_manager.multi_two_players = TRUE) then
			create_join_label.show
			create_game_radio_button.show
			join_game_radio_button.show

			create_join_label.set_text ("Do you want to:")
			create_join_label.align_text_left
			create_game_radio_button.set_text	("Create a New Game")
			join_game_radio_button.set_text 	("Join in a Game")

			l_ev_fixed_1.set_item_x_position (save_button, 0150)
			l_ev_fixed_1.set_item_y_position (save_button, 0470)
			l_ev_fixed_1.set_item_width (save_button, 0270)
			l_ev_fixed_1.set_item_height (save_button, 0060)

		end

		level_label.set_text ("Select Difficulty Level:")
		level_label.align_text_left

		easy_level_radio_button.set_text	("Easy")
		medium_level_radio_button.set_text 	("Medium")
		hard_level_radio_button.set_text 	("Hard")

		-- numplayers selected on PLAY_GAME_SCREEN:
		if( ui_manager.numplayers = 2) then
			-- LEVEL is only available for game vs PC (1PLAYER)
			-- otherwise -> hide
			level_label.hide
			easy_level_radio_button.hide
			medium_level_radio_button.hide
			hard_level_radio_button.hide

		end

		--save button
		save_button.set_minimum_width (86)
		save_button.set_minimum_height (25)
		internal_pixmap:= pix_save
		save_button.set_pixmap(internal_pixmap)

		--go back button
		go_back_button.set_minimum_width (86)
		go_back_button.set_minimum_height (25)
		internal_pixmap:= pix_back_to_menu
		go_back_button.set_pixmap(internal_pixmap)

		--window settings
		set_minimum_width (600)
		set_minimum_height (600)
		set_maximum_width (600)
		set_maximum_height (600)
		set_title ("Choose your name and game level")

		-- Connect events.
		create_game_radio_button.select_actions.extend	(agent create_game_server_action)
		join_game_radio_button.select_actions.extend	(agent join_game_client_action)
		save_button.select_actions.extend 	 (agent save_button_action)
		go_back_button.select_actions.extend (agent go_back_button_action)
		easy_level_radio_button.select_actions.extend (agent easy_level_action)
		medium_level_radio_button.select_actions.extend (agent medium_level_action)
		hard_level_radio_button.select_actions.extend (agent hard_level_action)

		--Mouse over actions
		go_back_button.pointer_enter_actions.extend (agent pointer_enter_area(go_back_button))
		go_back_button.pointer_leave_actions.extend (agent pointer_leave_area(go_back_button))

		save_button.pointer_enter_actions.extend (agent pointer_enter_area(save_button))
		save_button.pointer_leave_actions.extend (agent pointer_leave_area(save_button))
	end


feature --action events

   	save_button_action
		-- Called by `select_actions' of `save_button'.
	do
		player_name1 := name_text_field.text
		player_name2 := name_text_field2.text

		if player_name1.is_equal ("Player1: Enter your Name here") then
			player_name1 := "Player1_guest"
		end

		if player_name2.is_equal ("Player2: Enter your Name here") then
			player_name2 := "Player2_guest"

		end

		if ( send_name_level_to_logic(player_name1 ,player_name2, difficulty_level) = true ) then
			if (ui_manager.has_stopped = false) then
				ui_manager.create_game_window(main_ui)
				destroy
			end
		end

	end


	go_back_button_action
		-- Called by `select_actions' of `go_back_button'.
	local
		menu_window: HX_G_MAIN_MENU_SCREEN
	do
		create menu_window.make(main_ui)
		menu_window.show
		destroy
	end

	easy_level_action
	-- Called by `select_actions' of `easy_level_radio_button'.
	do
		difficulty_level := 0
	end

	medium_level_action
	-- Called by `select_actions' of `medium_level_radio_button'.
	do
		difficulty_level := 1
	end

	hard_level_action
	-- Called by `select_actions' of `hard_level_radio_button'.
	do
		difficulty_level := 2
	end


	create_game_server_action
	-- Called by `select_actions' of `create_game_radio_button'.
	do
		ip_text_field.hide
		port_text_field.show
		l_ev_combo_box_1.show
		port_text_field.set_text("Give a port num here")
	end


	join_game_client_action
	-- Called by `select_actions' of `join_game_radio_button'.
	do
		ip_text_field.show
		port_text_field.show
		l_ev_combo_box_1.hide

		ip_text_field.set_text("Give server's IP here")
		port_text_field.set_text("Give server's port num here")

	end


feature -- interact with logic

	send_name_level_to_logic(a_player_name1 : STRING ; a_player_name2 : STRING ; a_Level : INTEGER) : BOOLEAN
	local
	 	logic 	: HX_L_LOGIC
	 	template_path : TUPLE[STRING_8,STRING_8]
		ip_addr : STRING
		port_num_str: STRING
		PORT	: INTEGER_32
		path	: STRING
		error	: HX_G_ERROR_SCREEN
		l_valid_ip: BOOLEAN
		l_valid_port: BOOLEAN
	do
		logic:= ui_manager.logic

		across logic_combo.templates as template loop
     		   if equal(l_ev_combo_box_1.selected_item.text, template.item.name.as_string_32) then
     			template_path := template.item
				path ?= template_path.item(2)
     		end
    	end

		num_players := ui_manager.numplayers
		over_network:= ui_manager.multi_two_players

	 	if num_players = 1 then					--single player
	 		logic.start_single_player (a_player_name1, a_Level, path)
	 		RESULT:= TRUE
	 	elseif num_players = 2 then
	 		if (over_network = FALSE )then		--multiplayer1
	 			logic.start_multiplayer_one (a_player_name1, a_player_name2, path)
	 			RESULT:= TRUE
	 		elseif (over_network = TRUE) then	--multiplayer2

	 			if (create_game_radio_button.is_selected = true) then			--SERVER
	 				port_num_str:= port_text_field.text
	 				l_valid_port := False
					if not port_num_str.is_integer_32 then
						create error.make (main_ui, "Port number must be a number")
						error.show
				 		RESULT:= false
				 	else
						PORT := port_num_str.to_integer
						if 1024 <= PORT and PORT < 32768 then
							l_valid_port := True
							logic.start_multiplayer_two_server (a_player_name1, PORT, path)
							RESULT:= TRUE
						else
							create error.make (main_ui, "Port must be from range 1024 and 32768.")
							error.show
				 			RESULT:= false
						end
					end
	 			elseif (join_game_radio_button.is_selected = true) then			--CLIENT

	 				-- check IP:
	 				l_valid_ip := False
 					ip_addr := ip_text_field.text
	 				if not logic.is_address_valid (ip_addr) then
	 					create error.make (main_ui, "Invalid IP address")
						error.show
						RESULT:= FALSE
					else
						l_valid_ip := True
	 				end

					-- check PORT:
					port_num_str:= port_text_field.text
					l_valid_port := False
					if not port_num_str.is_integer_32 then
						create error.make (main_ui, "Port number must be a number")
						error.show
				 		RESULT:= false
				 	else
						PORT := port_num_str.to_integer
						if 1024 <= PORT and PORT < 32768 then
							l_valid_port := True
							RESULT:= TRUE
						else
							create error.make (main_ui, "Port must be from range 1024 and 32768.")
							error.show
				 			RESULT:= false
						end
					end
					if l_valid_port and l_valid_ip then
						logic.start_multiplayer_two_client (a_player_name1, ip_addr, PORT)
					end
				end
			end
	 	end

	end


feature -- images

	pix_background: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_background))
	end

	pix_save: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_save))
	end

	pix_back_to_menu: EV_PIXMAP
			-- returns the background for the active game
	once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_to_menu))
	end

	---Hover---

	pix_back_to_menu_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_back_to_menu_hover))
		end

	pix_save_hover: EV_PIXMAP
			-- returns the help_button for the active game
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_save_hover))
		end


feature -- Implementation pointer events

	pointer_enter_area (a_area: EV_BUTTON)
			-- the pointer is entering the area used as a button
		do
			if a_area = go_back_button then
				internal_pixmap:=pix_back_to_menu_hover
		   		go_back_button.set_pixmap(internal_pixmap)
			elseif a_area = save_button then
				internal_pixmap:=pix_save_hover
		   		save_button.set_pixmap(internal_pixmap)
			end
		end

	pointer_leave_area (a_area: EV_BUTTON)
			-- the pointer is leaving the area used as a button
		do
			if a_area = go_back_button then
				internal_pixmap:=pix_back_to_menu
		   		go_back_button.set_pixmap(internal_pixmap)
			elseif a_area = save_button then
				internal_pixmap:=pix_save
		   		save_button.set_pixmap(internal_pixmap)
			end
		end

feature -- Check relevance
	check_valid_port_and_ip(a_port:INTEGER; a_ip_address:STRING) : BOOLEAN
	do
		if a_port<1024 or a_port>32768 then
			Result := FALSE
		else
			Result := TRUE
		end

	end


end
