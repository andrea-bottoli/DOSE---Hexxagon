note
	description: "2nd layer client window"
	author: "Dimitris Deyannis,George Vardakis"
	date: "6/12/2012"
	revision: "0.0.2"

class
	B8_2ND_LAYER_CLIENT_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	B8_GUI_CONST
		export
			{NONE} all
		undefine
			default_create, copy
		end


create
	make

feature {NONE}	-- Initialization
	make(a_logic:B8_LOGIC)
		do
			make_with_title("Join a game")
			logic:=a_logic
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(465,270)

		close_request_actions.extend (agent request_close_window)
		create_container_2nd_layer_client
	end

create_container_2nd_layer_client
		-- the constructor of the 2nd layer client container
	do
		-- Set the container
		create con_2nd_layer_client
		put(con_2nd_layer_client)
		con_2nd_layer_client.set_background_pixmap(pix_2nd_layer_client)

		-- add text box ip_address
		create ip_address_text_box
		con_2nd_layer_client.extend_with_position_and_size (ip_address_text_box, 180, 30, 100, 24)

		-- add text box port_number
		create port_number_text_box
		con_2nd_layer_client.extend_with_position_and_size (port_number_text_box, 180, 105, 100, 24)


		-- Set next_button
		create next_button
		create pix_next
		create pix_next_enter
		pix_next.set_with_named_file(file_system.pathname_to_string(img_next))
		pix_next_enter.set_with_named_file(file_system.pathname_to_string((img_next_enter)))

		next_button.set_background_pixmap(pix_next)
		next_button.pointer_enter_actions.extend(agent pointer_enter(next_button))
		next_button.pointer_leave_actions.extend(agent pointer_leave(next_button))
		next_button.pointer_button_release_actions.extend (agent next_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		con_2nd_layer_client.extend_with_position_and_size (next_button, 340, 180, 80, 40)

		-- Set back_buton
		create back_button
		create pix_back
		create pix_back_enter
		pix_back.set_with_named_file(file_system.pathname_to_string(img_back))
		pix_back_enter.set_with_named_file(file_system.pathname_to_string((img_back_enter)))

		back_button.set_background_pixmap(pix_back)
		back_button.pointer_enter_actions.extend(agent pointer_enter(back_button))
		back_button.pointer_leave_actions.extend(agent pointer_leave(back_button))
		back_button.pointer_button_release_actions.extend (agent back_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		con_2nd_layer_client.extend_with_position_and_size (back_button, 40, 180, 80, 40)
	end


feature {NONE} -- Implementation / Agents

request_close_window
			-- The user wants to close the window using X button
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("Exit Blokus?")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_ui then
					main_ui.restore
			--		main_ui.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

pointer_enter (a_area: EV_FIXED)
		-- the pointer is entering the area used as a button
	do
		if a_area = next_button then
			next_button.set_background_pixmap(pix_next_enter)
		elseif a_area = back_button then
			back_button.set_background_pixmap(pix_back_enter)
		end
	end

pointer_leave (a_area: EV_FIXED)
		-- the pointer is leaving the area used as a button
	do
		if a_area = next_button then
			next_button.set_background_pixmap(pix_next)
		elseif a_area = back_button then
			back_button.set_background_pixmap(pix_back)
		end
	end

next_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked Next button
	do
		if port_number_text_box.text/=Void and ip_address_text_box.text/=Void and port_number_text_box.text.is_integer  then
				create client.make(ip_address_text_box.text,port_number_text_box.text.to_integer,1,0,logic,l_3rd_layer)

		destroy
		create l_3rd_layer.make(client,logic)
		l_3rd_layer.show
		end
		-- else,Needs handling
	end

back_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on Back button
	do
		destroy
		create l_1st_layer.make(main_ui,logic)
		l_1st_layer.show
	end


feature {NONE}	-- Attributes

main_ui: MAIN_WINDOW
l_1st_layer: B8_1ST_LAYER_WINDOW
l_3rd_layer: B8_3RD_LAYER_WINDOW

-- Containers

	-- the main, fixed-size container to which all other widgets are added
	con_2nd_layer_client: EV_FIXED

-- Buttons

	-- Next button
	next_button: EV_FIXED

	-- Back button
	back_button: EV_FIXED

-- Pix
	-- 2nd layer client background
	pix_2nd_layer_client: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file(file_system.pathname_to_string(img_2nd_layer_client))
		end

	-- Next button backgroud
	pix_next: EV_PIXMAP

	-- Next button background on pointer enter
	pix_next_enter: EV_PIXMAP

	-- Back button background
	pix_back: EV_PIXMAP

	-- Back button background on pointer enter
	pix_back_enter: EV_PIXMAP

-- Text Fields

	-- Ip address text field
	ip_address_text_box: EV_TEXT_FIELD

	-- Port number text filed
	port_number_text_box: EV_TEXT_FIELD

feature
	client:B8_GAME_MODE
	logic:B8_LOGIC
end
