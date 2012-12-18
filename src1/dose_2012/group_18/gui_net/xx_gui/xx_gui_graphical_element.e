note
	description: "Graphical element for the menu panel"
	author: "Team Milano2"
	date: "29-11-2012"
	revision: "0.1"

class
	XX_GUI_GRAPHICAL_ELEMENT

inherit
	XX_GRAPHICAL_ELEMENT

	XX_GUI_CONSTANTS
	undefine
		default_create,
		copy,
		is_equal
	end

create
	make_single_player,
	make_multiplayer,
	make_form_single_player,
	make_form_multiplayer,
	make_panic_button,
	make_start_button,
	make_exit_button,
	make_server_button,
	make_client_button

feature{NONE} --Attributes

	img_list: ARRAY[EV_PIXMAP]
	identifier_name: STRING
	highlighted: BOOLEAN
	selected: BOOLEAN
	hide: BOOLEAN
	pressed: BOOLEAN

feature {NONE} -- Initialization
	--Create a pixmap for the single_player
	make_single_player
		do
			default_create
			set_identifier_name ("single_player")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_single_player, 1)
			img_list.put (pixmap_single_player_highlighted, 2)
			img_list.put (pixmap_single_player_highlighted, 3)
			img_list.put (pixmap_single_player, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the multiplayer
	make_multiplayer
		do
			default_create
			set_identifier_name ("multiplayer")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_multiplayer, 1)
			img_list.put (pixmap_multiplayerplayer_highlighted, 2)
			img_list.put (pixmap_multiplayerplayer_highlighted, 3)
			img_list.put (pixmap_multiplayer, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the form_single_player
	make_form_single_player
		do
			default_create
			set_identifier_name ("form_single_player")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_form_single_player, 1)
			img_list.put (pixmap_form_single_player_ruby, 2)
			img_list.put (pixmap_form_single_player_pearl, 3)
			img_list.put (pixmap_form_single_player, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the form_multiplayer
	make_form_multiplayer
		do
			default_create
			set_identifier_name ("form_multiplayer")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_form_multiplayer_server, 1)
			img_list.put (pixmap_form_multiplayer_client, 2)
			img_list.put (pixmap_exit_button, 3)
			img_list.put (pixmap_start_button, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the panic button
	make_panic_button
		do
			default_create
			set_identifier_name ("panic_button")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_panic_button, 1)
			img_list.put (pixmap_panic_button_highlighted, 2)
			img_list.put (pixmap_panic_button_clicked, 3)
			img_list.put (pixmap_panic_button, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the star_game button
	make_start_button
		do
			default_create
			set_identifier_name ("start_button")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_start_button, 1)
			img_list.put (pixmap_start_button_highlighted, 2)
			img_list.put (pixmap_start_button_clicked, 3)
			img_list.put (pixmap_start_button, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the exit_button button
	make_exit_button
		do
			default_create
			set_identifier_name ("exit_button")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(FALSE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_exit_button, 1)
			img_list.put (pixmap_exit_button_highlighted, 2)
			img_list.put (pixmap_exit_button_clicked, 3)
			img_list.put (pixmap_exit_button, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the create_game button
	make_server_button
		do
			default_create
			set_identifier_name ("server_button")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(TRUE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_server_button, 1)
			img_list.put (pixmap_server_button_highlighted, 2)
			img_list.put (pixmap_server_button_highlighted, 3)
			img_list.put (pixmap_server_button_hide, 4)
			image:=img_list.at (1)
		end

	--Create a pixmap for the join_game button
	make_client_button
		do
			default_create
			set_identifier_name ("client_button")
			set_highlighted (FALSE)
			set_selected (FALSE)
			set_hide(TRUE)
			set_pressed(FALSE)
			create img_list.make_filled (void, 1, 4)
			img_list.put (pixmap_client_button, 1)
			img_list.put (pixmap_client_button_highlighted, 2)
			img_list.put (pixmap_client_button_highlighted, 3)
			img_list.put (pixmap_client_button_hide, 4)
			image:=img_list.at (1)
		end

feature{NONE} --Load the images

	--Return the single player pixmap
	pixmap_single_player:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_single_player_subtitle))
		end

	--Return the single player highlighted pixmap
	pixmap_single_player_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_single_player_subtitle_highlighted))
		end

	--Return the multiplayer pixmap
	pixmap_multiplayer:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_multiplayer_subtitle))
		end

	--Return the multiplayerplayer highlighted pixmap
	pixmap_multiplayerplayer_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_multiplayer_subtitle_highlighted))
		end

	--Return the form single player pixmap
	pixmap_form_single_player:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_form_single_player))
		end

	--Return the form single player ruby pixmap
	pixmap_form_single_player_ruby:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_form_single_player_ruby))
		end

	--Return the form single player pearl pixmap
	pixmap_form_single_player_pearl:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_form_single_player_pearl))
		end

	--Return the form multiplayer server pixmap
	pixmap_form_multiplayer_server:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_form_multiplayer_server))
		end

	--Return the form multiplayer client pixmap
	pixmap_form_multiplayer_client:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_menu_form_multiplayer_client))
		end

	--Return the server_button pixmap
	pixmap_server_button:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_server_button))
		end

	--Return the server_button highlighted pixmap
	pixmap_server_button_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_server_button_highlighted))
		end

	--Return the server_button hide pixmap
	pixmap_server_button_hide:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_server_button_hide))
		end

	--Return the client button pixmap
	pixmap_client_button:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_client_button))
		end

	--Return the client button highlighted pixmap
	pixmap_client_button_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_client_button_highlighted))
		end

	--Return the client button hide pixmap
	pixmap_client_button_hide:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_client_button_hide))
		end

	--Return the panic button pixmap
	pixmap_panic_button:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_panic_button))
		end

	--Return the panic button highlighted pixmap
	pixmap_panic_button_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_panic_button_highlighted))
		end

	--Return the panic button clicked pixmap
	pixmap_panic_button_clicked:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_panic_button_clicked))
		end

	--Return the start button pixmap
	pixmap_start_button:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_start_button))
		end

	--Return the start button highlighted pixmap
	pixmap_start_button_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_start_button_highlighted))
		end

	--Return the start button clicked pixmap
	pixmap_start_button_clicked:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_start_button_clicked))
		end

	--Return the exit button pixmap
	pixmap_exit_button:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_exit_button))
		end

	--Return the exit button highlighted pixmap
	pixmap_exit_button_highlighted:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_exit_button_highlighted))
		end

	--Return the exit button clicked pixmap
	pixmap_exit_button_clicked:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string(img_exit_button_clicked))
		end

feature{XX_MENU_PANEL} --Getters and setters

	--Sets the pressed attribute
	set_pressed(a_cond: BOOLEAN)
	do
		pressed:=a_cond
	end

	--Sets the hide attribute
	set_hide(a_cond: BOOLEAN)
	do
		hide:=a_cond
	end

	--sets the identifier_name
	set_identifier_name(a_id_name: STRING)
	do
		identifier_name:= a_id_name
	end

	--Sets highlighted
	set_highlighted(a_cond: BOOLEAN)
	do
		highlighted:=a_cond
	end

	--Sets selected
	set_selected(a_cond: BOOLEAN)
	do
		selected:=a_cond
	end

	--Gets the identifier_name
	get_identifier_name: STRING
	do
		Result:=identifier_name
	end

	--Gets the identifier_name
	get_image_width: INTEGER
	do
		Result:=image.width
	end

	--Gets the identifier_name
	get_image_height: INTEGER
	do
		Result:=image.height
	end

	--Returns status highlighting
	is_highlighted: BOOLEAN
	do
		Result:=highlighted
	end

	--Returns status selected
	is_selected: BOOLEAN
	do
		Result:=selected
	end

	--Returns status hidden
	is_hidden: BOOLEAN
	do
		Result:=hide
	end

	--Returns status pressed
	is_pressed: BOOLEAN
	do
		Result:=pressed
	end

feature{XX_MENU_PANEL} --Draw method

	--Draws the normal element
	draw_element_normal(a_bg_menu: EV_PIXMAP)
	do
		if(not hide)then
			image:=img_list.at (1)
		else
			image:=img_list.at (4)
		end
		a_bg_menu.draw_pixmap (x_coord, y_coord, image)
	end

	--Draws the highlighted element
	draw_element_highlighted(a_bg_menu: EV_PIXMAP)
	do
		--sets the correct image to draw
		image:=img_list.at (2)
		a_bg_menu.draw_pixmap (x_coord, y_coord, image)
	end

	--Draws the clicked element
	draw_element_clicked(a_bg_menu: EV_PIXMAP)
	do
		--sets the correct image to draw
		image:=img_list.at (3)
		a_bg_menu.draw_pixmap (x_coord, y_coord, image)
	end

	--Draw the multi player clien t form
	draw_element_hide(a_bg_menu: EV_PIXMAP)
	do
		--sets the correct image to draw
		image:=img_list.at (4)
		a_bg_menu.draw_pixmap (x_coord, y_coord, image)
	end

	--Draw the single player form
	draw_form_single_player(a_bg_menu: EV_PIXMAP)
	do
		draw_element_normal (a_bg_menu)
	end

	--Draw the single player ruby form
	draw_form_single_player_ruby(a_bg_menu: EV_PIXMAP)
	do
		draw_element_highlighted (a_bg_menu)
	end

	--Draw the single player pearl form
	draw_form_single_player_pearl(a_bg_menu: EV_PIXMAP)
	do
		draw_element_clicked (a_bg_menu)
	end

	--Draw the multi player server form
	draw_form_multiplayer_server(a_bg_menu: EV_PIXMAP)
	do
		draw_element_normal (a_bg_menu)
	end

	--Draw the multi player clien t form
	draw_form_multiplayer_client(a_bg_menu: EV_PIXMAP)
	do
		draw_element_highlighted(a_bg_menu)
	end
end
