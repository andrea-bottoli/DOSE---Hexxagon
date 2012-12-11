note
	description: "2nd layer server window"
	author: "Dimitris Deyannis,George Vardakis"
	date: "6/12/2012"
	revision: "0.0.2"

class
	B8_2ND_LAYER_SERVER_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize--
		end


	B8_GUI_CONST
		export
			{NONE} all
		undefine
			default_create, copy
		end
--EXECUTION_ENVIRONMENT
--	export
--		{NONE} all
--	undefine
--		default_create,put
--	end

create
	make

feature {NONE}	-- Initialization
	make
		do
			players:=2
			make_with_title("Create a game")
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(465,270)

		close_request_actions.extend (agent request_close_window)
		create_container_2nd_layer_server
	end

create_container_2nd_layer_server
		-- the constructor of the 2nd layer server container
		do
			-- Set the container
			create con_2nd_layer_server
			put(con_2nd_layer_server)
			con_2nd_layer_server.set_background_pixmap(pix_2nd_layer_server)

			-- Add message board
			create server_message_board
			server_message_board.set_text ("Select your options and create the game!")
			server_message_board.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 255, 128))
			con_2nd_layer_server.extend_with_position_and_size (server_message_board, 0, 10, 460, 24)

			-- add two_radio_button
			create two_radio_button
			two_radio_button.set_text("2")
			two_radio_button.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 128, 0))
			con_2nd_layer_server.extend_with_position_and_size(two_radio_button, 180, 50, 32, 25)
			two_radio_button.pointer_button_press_actions.extend (agent on_button_two_press(?, ?, ?, ?, ?, ?, ?, ?))
			-- add three_radio_button
			create three_radio_button
			three_radio_button.set_text("3")
			three_radio_button.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 128, 0))
			con_2nd_layer_server.extend_with_position_and_size(three_radio_button, 180, 70, 32, 25)
three_radio_button.pointer_button_press_actions.extend (agent on_button_three_press(?, ?, ?, ?, ?, ?, ?, ?))
			-- add four_radio_button
			create four_radio_button
			four_radio_button.set_text("4")
			four_radio_button.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (255, 128, 0))
			con_2nd_layer_server.extend_with_position_and_size(four_radio_button, 180, 90, 32, 25)
			four_radio_button.pointer_button_press_actions.extend (agent on_button_four_press(?, ?, ?, ?, ?, ?, ?, ?))
			-- add text box port_number
			create port_number_text_box
			con_2nd_layer_server.extend_with_position_and_size(port_number_text_box, 180, 130, 100, 24)

			-- Set next button
			create next_button
			create pix_next
			create pix_next_enter
			pix_next.set_with_named_file(file_system.pathname_to_string(img_next))
			pix_next_enter.set_with_named_file(file_system.pathname_to_string((img_next_enter)))

			next_button.set_background_pixmap(pix_next)
			next_button.pointer_enter_actions.extend(agent pointer_enter(next_button))
			next_button.pointer_leave_actions.extend(agent pointer_leave(next_button))
			next_button.pointer_button_release_actions.extend (agent next_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
			con_2nd_layer_server.extend_with_position_and_size (next_button, 340, 180, 80, 40)

			-- Set back buton
			create back_button
			create pix_back
			create pix_back_enter
			pix_back.set_with_named_file(file_system.pathname_to_string(img_back))
			pix_back_enter.set_with_named_file(file_system.pathname_to_string((img_back_enter)))

			back_button.set_background_pixmap(pix_back)
			back_button.pointer_enter_actions.extend(agent pointer_enter(back_button))
			back_button.pointer_leave_actions.extend(agent pointer_leave(back_button))
			back_button.pointer_button_release_actions.extend (agent back_is_pressed(?, ?, ?, ?, ?, ?, ?, ?))
			con_2nd_layer_server.extend_with_position_and_size (back_button, 40, 180, 80, 40)
		end


feature {NONE} -- Implementation / Agents
on_button_two_press(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			players:=2
		end
on_button_three_press(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			players:=3
		end
on_button_four_press(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
		do
			players:=4
		end
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
		local
			i:INTEGER
	do
		server_message_board.set_text ("Please wait for other players to connect...")

		if  port_number_text_box.text.is_integer  then

			--sleep(100000000)
			--io.putint (players)
		--	io.putstring (port_number_text_box.text)
			port_number := port_number_text_box.text.to_integer
			create server.make(Void,port_number,0,players)
			destroy
			create l_3rd_layer.make(server)
			l_3rd_layer.show
		else
			io.putstring ("You haven't given correct input")

		end
	end

back_is_pressed(a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32)
		-- User klicked on Back button
	do

		destroy
		create l_1st_layer.make(main_ui)
		l_1st_layer.show
	end


feature {NONE}	-- Attributes

main_ui: MAIN_WINDOW
l_1st_layer: B8_1ST_LAYER_WINDOW
l_3rd_layer: B8_3RD_LAYER_WINDOW

-- Containers

	-- the main, fixed-size container to which all other widgets are added
	con_2nd_layer_server: EV_FIXED

-- Buttons

	-- Next button
	next_button: EV_FIXED

	-- Back button
	back_button: EV_FIXED

-- Labels

	-- Message board
	server_message_board: EV_LABEL

-- Pix
	-- 2nd layer server background
	pix_2nd_layer_server: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file(file_system.pathname_to_string(img_2nd_layer_server))
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

	-- Port number text filed
	port_number_text_box: EV_TEXT_FIELD

-- Radio buttons

	-- two radio button
	two_radio_button: EV_RADIO_BUTTON

	-- three radio button
	three_radio_button: EV_RADIO_BUTTON

	-- four radio button
	four_radio_button: EV_RADIO_BUTTON
feature
	players:INTEGER
	port_number:INTEGER
	server:B8_GAME_MODE
end
