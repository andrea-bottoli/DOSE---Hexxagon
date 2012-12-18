note
	description: "1st Layer Window"
	author: "Dimitris Deyannis,George Vardakis"
	date: "6/12/2012"
	revision: "0.0.2"

class
	B8_1ST_LAYER_WINDOW

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

	make(a_main_ui_window: MAIN_WINDOW;a_logic:B8_LOGIC)
			-- Creation procedure
		do
			-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			main_ui := a_main_ui_window
			-- Create the main menù window.
			make_with_title ("Blokus")
			logic:=a_logic
			if logic=Void then
				create logic.make
			end
		end

initialize
			-- Build the window
		do
			Precursor {EV_TITLED_WINDOW}
			set_size(465,415)

			close_request_actions.extend (agent request_close_window)
			create_container_1st_layer
		end

create_container_1st_layer
		-- the constructor of the 1st layer container
	do
		-- Set the container
		create con_1st_layer
		put(con_1st_layer)
		con_1st_layer.set_background_pixmap(pix_1st_layer)

		--Set Create button
		create client_button
		create pix_join
		create pix_join_enter
		pix_join.set_with_named_file(file_system.pathname_to_string(img_join))
		pix_join_enter.set_with_named_file(file_system.pathname_to_string(img_join_enter))

		client_button.set_background_pixmap(pix_join)
		client_button.pointer_enter_actions.extend(agent pointer_enter(client_button))
		client_button.pointer_leave_actions.extend(agent pointer_leave(client_button))
		client_button.pointer_button_release_actions.extend (agent join_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		con_1st_layer.extend_with_position_and_size (client_button, 340, 320, 80, 40)

		--Set Join Button
		create server_button
		create pix_create
		create pix_create_enter
		pix_create.set_with_named_file(file_system.pathname_to_string(img_create))
		pix_create_enter.set_with_named_file(file_system.pathname_to_string(img_create_enter))

		server_button.set_background_pixmap(pix_create)
		server_button.pointer_enter_actions.extend(agent pointer_enter(server_button))
		server_button.pointer_leave_actions.extend(agent pointer_leave(server_button))
		server_button.pointer_button_release_actions.extend (agent create_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
		con_1st_layer.extend_with_position_and_size (server_button, 40, 320, 80, 40)
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
		if a_area = client_button then
			client_button.set_background_pixmap(pix_join_enter)
		elseif a_area = server_button then
			server_button.set_background_pixmap(pix_create_enter)
		end
	end

pointer_leave (a_area: EV_FIXED)
		-- the pointer is leaving the area used as a button
	do
		if a_area = client_button then
			client_button.set_background_pixmap(pix_join)
		elseif a_area = server_button then
			server_button.set_background_pixmap(pix_create)
		end
	end

join_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on client_button
	do
		destroy
		create l_client.make(logic)
		l_client.show
	end

create_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on client_button
	do
		destroy
		create l_server.make(logic)
		l_server.show
	end


feature {NONE}	-- Attributes

main_ui: MAIN_WINDOW
l_client: B8_2ND_LAYER_CLIENT_WINDOW
l_server: B8_2ND_LAYER_SERVER_WINDOW

-- Containers

	-- the main, fixed-size container to which all other widgets are added
	con_1st_layer: EV_FIXED


-- Buttons

	-- Join button
	client_button: EV_FIXED

	-- Create button
	server_button: EV_FIXED

-- Pix
	-- 1st layer background
	pix_1st_layer: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file(file_system.pathname_to_string(img_1st_layer))
		end

	-- Clinet button background
	pix_join: EV_PIXMAP

	-- Client button background on pointer enter
	pix_join_enter: EV_PIXMAP

	-- Server button background
	pix_create: EV_PIXMAP

	-- Server button background on pointer enter
	pix_create_enter: EV_PIXMAP

feature
	logic:B8_LOGIC

end
