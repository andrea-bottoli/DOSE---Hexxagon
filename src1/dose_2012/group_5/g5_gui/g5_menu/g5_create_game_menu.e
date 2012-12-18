note
	description: "The menu used to create a new game."
	author: "Gabriele Fanchini"
	date: "28.11.2012"
	revision: "1.0"

class
	G5_CREATE_GAME_MENU
inherit
	EV_FIXED

	G5_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end
create
	make


feature	{NONE} -- Initialization

	make(a_window: G5_MAIN_MENU)
		-- this feature set the state of the container
		do
			default_create
			set_background_pixmap (join_menu_background)
			parent_window:= a_window

			-- add the image that will be the "Ok" button
			create ok_button
			create ok_button_pixmap_pointer_in
			create ok_button_pixmap_pointer_out
			ok_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_ok_button))
			ok_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_ok_button_hover))

			ok_button.set_background_pixmap (ok_button_pixmap_pointer_out)
			ok_button.pointer_enter_actions.extend (agent pointer_enter_area(ok_button))
			ok_button.pointer_leave_actions.extend (agent pointer_leave_area(ok_button))
			ok_button.pointer_button_release_actions.extend (agent confirm_request(?, ?, ?, ?, ?, ?, ?, ?))
			extend_with_position_and_size (ok_button, 661, 440, 157, 60)


			-- add the image that will be the "Cancel" button
			create cancel_button
			create cancel_button_pixmap_pointer_in
			create cancel_button_pixmap_pointer_out
			cancel_button_pixmap_pointer_out.set_with_named_file (file_system.pathname_to_string (img_cancel_button))
			cancel_button_pixmap_pointer_in.set_with_named_file (file_system.pathname_to_string (img_cancel_button_hover))

			cancel_button.set_background_pixmap (cancel_button_pixmap_pointer_out)
			cancel_button.pointer_enter_actions.extend (agent pointer_enter_area(cancel_button))
			cancel_button.pointer_leave_actions.extend (agent pointer_leave_area(cancel_button))
			cancel_button.pointer_button_release_actions.extend (agent parent_window.request_return_main_menu(?, ?, ?, ?, ?, ?, ?, ?))
			extend_with_position_and_size (cancel_button, 828, 440, 156, 60)


			-- add the image that will be the "Default" button
			create default_button
			create default_button_pixmap_selected
			create default_button_pixmap_unselected
			default_button_pixmap_unselected.set_with_named_file (file_system.pathname_to_string (img_default_button))
			default_button_pixmap_selected.set_with_named_file (file_system.pathname_to_string (img_default_button_hover))

			default_button.set_background_pixmap (default_button_pixmap_unselected)
			default_button.pointer_button_press_actions.extend (agent select_game_type(default_button, ?, ?, ?, ?, ?, ?, ?, ?))
			extend_with_position_and_size (default_button, 378, 318, 170, 59)


			-- add the image that will be the "Random" button
			create random_button
			create random_button_pixmap_selected
			create random_button_pixmap_unselected
			random_button_pixmap_unselected.set_with_named_file (file_system.pathname_to_string (img_random_button))
			random_button_pixmap_selected.set_with_named_file (file_system.pathname_to_string (img_random_button_hover))

			random_button.set_background_pixmap (random_button_pixmap_unselected)
			random_button.pointer_button_press_actions.extend (agent select_game_type(random_button, ?, ?, ?, ?, ?, ?, ?, ?))
			extend_with_position_and_size (random_button, 556, 318, 170, 59)


			-- add the image that will be the "Custom" button
			create custom_button
			create custom_button_pixmap_selected
			create custom_button_pixmap_unselected
			custom_button_pixmap_unselected.set_with_named_file (file_system.pathname_to_string (img_custom_button))
			custom_button_pixmap_selected.set_with_named_file (file_system.pathname_to_string (img_custom_button_hover))

			custom_button.set_background_pixmap (custom_button_pixmap_unselected)
			custom_button.pointer_button_press_actions.extend (agent select_game_type(custom_button, ?, ?, ?, ?, ?, ?, ?, ?))
			extend_with_position_and_size (custom_button, 734, 318, 170, 59)

			-- add text box name
			create host_name_text_box
			host_name_text_box.set_minimum_width (150)
			extend (host_name_text_box)
			set_item_position (host_name_text_box, 400,118)

			-- add text box players number
			create players_number_text_box
			players_number_text_box.set_minimum_width (20)
			extend (players_number_text_box)
			set_item_position (players_number_text_box, 558,186)

			-- add text box players number
			create port_text_box
			port_text_box.set_minimum_width (50)
			extend (port_text_box)
			set_item_position (port_text_box, 300,258)

		end

feature {NONE} -- Implementation

	pointer_enter_area (a_area: EV_FIXED)
			-- the pointer is entering the area used as a button
		do
			if a_area = ok_button then
				ok_button.set_background_pixmap (ok_button_pixmap_pointer_in)
			elseif a_area = cancel_button then
				cancel_button.set_background_pixmap (cancel_button_pixmap_pointer_in)
			end
		end

	pointer_leave_area (a_area: EV_FIXED)
			-- the pointer is leaving the area used as a button
		do
			if a_area = ok_button then
				ok_button.set_background_pixmap (ok_button_pixmap_pointer_out)
			elseif a_area = cancel_button then
				cancel_button.set_background_pixmap (cancel_button_pixmap_pointer_out)
			end
		end

	select_game_type(a_area: EV_FIXED; a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- user selects a type of game
		do
			if a_area = default_button then
				game_type:="default"
				default_button.set_background_pixmap(default_button_pixmap_selected)
				random_button.set_background_pixmap(random_button_pixmap_unselected)
				custom_button.set_background_pixmap(custom_button_pixmap_unselected)
			elseif a_area = random_button then
				game_type:="random"
				random_button.set_background_pixmap(random_button_pixmap_selected)
				default_button.set_background_pixmap(default_button_pixmap_unselected)
				custom_button.set_background_pixmap(custom_button_pixmap_unselected)
			elseif a_area = custom_button then
				game_type:="custom"
				custom_button.set_background_pixmap(custom_button_pixmap_selected)
				default_button.set_background_pixmap(default_button_pixmap_unselected)
				random_button.set_background_pixmap(random_button_pixmap_unselected)
			end
		end

		confirm_request(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
			-- the user press the ok button
			local
				error_dialog: EV_INFORMATION_DIALOG
				player_name: STRING
				selected_game_type: STRING
				port: INTEGER
				players_number: INTEGER
			do
				-- AGGIUNGERE CHECK SU PORTA E PARTE INVIO INFO AL MENU SUCCESSIVO SE C'E' PER IL DEFAULT E IL RANDOM INVIA DIRETTO
				-- check the correctness of the name
				if not(host_name_text_box.text.is_equal ("") or host_name_text_box.text.is_equal ("SERVER")) then

					-- check the correctness of the player number
					if ((players_number_text_box.text.is_integer) and (players_number_text_box.text.to_integer >1) and (players_number_text_box.text.to_integer <5)) then

						-- check the correctness of the selected port
						if((port_text_box.text.is_integer) and (port_text_box.text.to_integer >1024 and port_text_box.text.to_integer <5000)) then

							-- check that a game type has been chosen
							if (game_type/= void) then

								-- call the main_menu windows feature used to send to the launcher user choices
								player_name:= host_name_text_box.text.to_string_32
								selected_game_type:= game_type
								port:= port_text_box.text.to_integer
								players_number:= players_number_text_box.text.to_integer

								-- select which feature we need to call
								if (game_type.is_equal ("default") or game_type.is_equal ("random")) then
									-- random or default game type selcted
									parent_window.submit_request_create_new_game(player_name, selected_game_type, port, players_number)
								else
									-- custom game type selected
								end
							else
								create error_dialog.make_with_text ("please, select a game type")
								error_dialog.set_title ("ERROR")
								error_dialog.show_modal_to_window (parent_window)
							end
						else
							create error_dialog.make_with_text ("port number is not valid (please select a number between 1024 and 5000)")
							error_dialog.set_title ("ERROR")
							error_dialog.show_modal_to_window (parent_window)
						end
					else
						create error_dialog.make_with_text ("number of players is not valid")
						error_dialog.set_title ("ERROR")
						error_dialog.show_modal_to_window (parent_window)
					end
				else
					create error_dialog.make_with_text ("name is empty or is SERVER (this name is not available)")
					error_dialog.set_title ("ERROR")
					error_dialog.show_modal_to_window (parent_window)
				end

			end


feature {NONE}	-- Attributes

-- ### buttons
	ok_button: EV_FIXED
		-- the button used to confirm options

	ok_button_pixmap_pointer_out: EV_PIXMAP
	ok_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button

	cancel_button: EV_FIXED
		-- the button used to discard options

	cancel_button_pixmap_pointer_out: EV_PIXMAP
	cancel_button_pixmap_pointer_in: EV_PIXMAP
		-- images thats will be the button

	default_button: EV_FIXED
		-- the button used to selct the default set

	default_button_pixmap_unselected: EV_PIXMAP
	default_button_pixmap_selected: EV_PIXMAP
		-- images thats will be the button	

	random_button: EV_FIXED
		-- the button used to selct a random set

	random_button_pixmap_unselected: EV_PIXMAP
	random_button_pixmap_selected: EV_PIXMAP
		-- images thats will be the button	

	custom_button: EV_FIXED
		-- the button used to selct a custom set

	custom_button_pixmap_unselected: EV_PIXMAP
	custom_button_pixmap_selected: EV_PIXMAP
		-- images thats will be the button	
-- ### buttons END

-- ### text box

	host_name_text_box: EV_TEXT_FIELD
		-- the text box of the host name

	players_number_text_box: EV_TEXT_FIELD
		-- the text box of the players number

	port_text_box: EV_TEXT_FIELD
		-- the text box of the port used

-- ### text box END

	join_menu_background: EV_PIXMAP
			-- returns the background of this menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_create_menu_background))
		end

-- variable
	game_type: STRING
		-- the type of game selected

	parent_window: G5_MAIN_MENU
		-- the windows that contains the container
end
