note
	description: "The menu used to join a game."
	author: "Gabriele Fanchini"
	date: "29.11.2012"
	revision: "1.0"

class
	G5_JOIN_GAME_MENU
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
			set_background_pixmap (create_menu_background)
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

			-- add text box name
			create player_name_text_box
			player_name_text_box.set_minimum_width (150)
			extend (player_name_text_box)
			set_item_position (player_name_text_box, 440,191)

			-- add text box players number
			create ip_address_text_box
			ip_address_text_box.set_minimum_width (200)
			extend (ip_address_text_box)
			set_item_position (ip_address_text_box, 394,258)

			-- add text box players number
			create port_text_box
			port_text_box.set_minimum_width (50)
			extend (port_text_box)
			set_item_position (port_text_box, 300,332)

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

	confirm_request(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- the user press the ok button
		local
			error_dialog: EV_INFORMATION_DIALOG
			player_name: STRING
			ip: STRING
			port: INTEGER

		do
			-- AGGIUNGERE PARTE INVIO INFO

			-- check the correctness of the name
			if not(player_name_text_box.text.is_equal ("") or player_name_text_box.text.is_equal ("SERVER")) then

				-- check the correctness of selected ip
				if (is_ip_valid) then

					-- check the correctness of selected port
					if((port_text_box.text.is_integer) and (port_text_box.text.to_integer >1024 and port_text_box.text.to_integer <5000)) then

						-- call the main_menu windows feature used to send to the launcher user choices
						player_name:= player_name_text_box.text.to_string_32
						ip:= ip_address_text_box.text.to_string_32
						port:= port_text_box.text.to_integer
						parent_window.submit_request_join_to_game(player_name, ip, port)

					else
						create error_dialog.make_with_text ("port number is not valid (please select a number between 1024 and 5000)")
						error_dialog.set_title ("ERROR")
						error_dialog.show_modal_to_window (parent_window)
					end
				else
					create error_dialog.make_with_text ("ip address is not valid")
					error_dialog.set_title ("ERROR")
					error_dialog.show_modal_to_window (parent_window)
				end
			else
				create error_dialog.make_with_text ("name is empty or is SERVER (this name is not available)")
				error_dialog.set_title ("ERROR")
				error_dialog.show_modal_to_window (parent_window)
			end

		end

	is_ip_valid: BOOLEAN
		local
			splitted_ip: LIST[STRING_32]
			i: INTEGER
			--a_string_part_of_the_ip: STRING
			an_integer_part_of_the_ip: INTEGER
			is_valid: BOOLEAN
		do
			if (ip_address_text_box.text.occurrences ('.')=3) and (ip_address_text_box.text.count<=15) then

				is_valid:= true
				splitted_ip:=ip_address_text_box.text.split ('.')
				from
					i:=1
				until
					i>4 or is_valid=false
				loop
					is_valid:= splitted_ip.at (i).is_integer
					if(is_valid) then
						an_integer_part_of_the_ip:= splitted_ip.at (i).to_integer
						is_valid:= ((an_integer_part_of_the_ip <=255) and (an_integer_part_of_the_ip>=0))
					end
					i:=i+1
				end
				result:=is_valid
			else
				result:=false
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
-- ### buttons END

-- ### text box

	player_name_text_box: EV_TEXT_FIELD
		-- the text box of the host name

	ip_address_text_box: EV_TEXT_FIELD
		-- the text box of the players number

	port_text_box: EV_TEXT_FIELD
		-- the text box of the port used

-- ### text box END

	create_menu_background: EV_PIXMAP
			-- returns the background of this menu as a pixmap
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (img_join_menu_background))
		end

-- variable

	parent_window: G5_MAIN_MENU
		-- the windows that contains the container		

end
