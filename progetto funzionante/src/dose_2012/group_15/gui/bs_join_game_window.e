note
	description: "Summary description for {BS_JOIN_GAME_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_JOIN_GAME_WINDOW

inherit
	EV_DIALOG
		redefine
			initialize
		end

	-- not working yet
--	EXECUTION_ENVIRONMENT
--		undefine
--			default_create,
--			put,
--			copy
--		end

create
	make

feature {NONE} -- Initialization
	make
		do
			user_cancelled := False
			create col_red.make_with_8_bit_rgb(255, 30, 30)
			create col_reddish.make_with_8_bit_rgb(255, 100, 100)
			create col_white.make_with_8_bit_rgb(255, 255, 255)
			network_port_valid := True
			host_valid := True

			make_with_title("Join Exisiting Game")
		end

	initialize
		do
			Precursor{EV_DIALOG}

			set_size(320, 170)

			create con_main

			create btn_connect.make_with_text("CONNECT")
			btn_connect.select_actions.extend(agent try_connect_to_server)
			con_main.extend_with_position_and_size (btn_connect, 40, 100, 100, 20)

			create btn_cancel.make_with_text("Cancel")
			btn_cancel.select_actions.extend(agent cancel_dialog)
			con_main.extend_with_position_and_size(btn_cancel, 180, 100, 100, 20)

			create lbl_host.make_with_text("Host name or IP: ")
			lbl_host.align_text_left
			con_main.extend_with_position_and_size (lbl_host, 10, 10, 100, 20)

			create txf_host.make_with_text ("hostname")
			txf_host.change_actions.extend(agent validate_host)
			con_main.extend_with_position_and_size (txf_host, 110, 10, 100, 20)

			create lbl_network_port.make_with_text("TCP Port: ")
			lbl_network_port.align_text_left
			con_main.extend_with_position_and_size (lbl_network_port, 10, 40, 100, 20)

			create txf_network_port.make_with_text("9000")
			txf_network_port.align_text_center
			txf_network_port.change_actions.extend(agent validate_network_port)
			con_main.extend_with_position_and_size (txf_network_port, 110, 40, 50, 20)

			create lbl_please_wait.make_with_text("Please wait")
			lbl_please_wait.align_text_center
			lbl_please_wait.hide
			lbl_please_wait.set_foreground_color (col_red)
			con_main.extend_with_position_and_size (lbl_please_wait, 60, 70, 200, 40)

			put(con_main)
		end

feature {BS_LOBBY_WINDOW} -- Interface to Lobby Window
	has_user_cancelled : BOOLEAN
		do
			Result := user_cancelled
		end

feature {NONE} -- User actions

	try_connect_to_server
		local
			l_error_msg : EV_MESSAGE_DIALOG
		do
			disable_controls
			lbl_please_wait.show

			-- TODO: really try to connect a few times
			--sleep(1000000)
			if False then
				destroy
			else
				create l_error_msg.make_with_text ("Error connecting to server. Please check your input and connection.")
				lbl_please_wait.hide
				enable_controls
			end
		end

	cancel_dialog
		do
			user_cancelled := True
			destroy
		end

	disable_controls
		do
			btn_connect.disable_sensitive
			btn_cancel.disable_sensitive
			txf_host.disable_sensitive
			txf_network_port.disable_sensitive
		end

	enable_controls
		do
			btn_connect.enable_sensitive
			btn_cancel.enable_sensitive
			txf_host.enable_sensitive
			txf_network_port.enable_sensitive
		end

feature {NONE} -- Input validation

	validate_host
		do
			if txf_host.text_length = 0 or txf_host.text.has (' ') then
				txf_host.set_background_color (col_reddish)
				host_valid := False
			else
				txf_host.set_background_color (col_white)
				host_valid := True
				check_ready_to_connect
			end
		end

	validate_network_port
		local
			l_port : INTEGER
		do
			if txf_network_port.text.is_integer then
				l_port := txf_network_port.text.to_integer
				if 1024 <= l_port and l_port <= 65535 then
					txf_network_port.set_background_color (col_white)
					network_port_valid := True
					check_ready_to_connect
				else
					btn_connect.disable_sensitive
					txf_network_port.set_background_color (col_reddish)
					network_port_valid := False
				end
			else
				btn_connect.disable_sensitive
				txf_network_port.set_background_color (col_reddish)
				network_port_valid := False
			end
		end

	check_ready_to_connect
		do
			if network_port_valid and host_valid then
				btn_connect.enable_sensitive
			else
				btn_connect.disable_sensitive
			end
		end

feature {NONE} -- Implementation

	con_main : EV_FIXED
	lbl_host : EV_LABEL
	txf_host : EV_TEXT_FIELD
	lbl_network_port : EV_LABEL
	txf_network_port : EV_TEXT_FIELD
	btn_connect : EV_BUTTON
	btn_cancel : EV_BUTTON
	lbl_please_wait : EV_LABEL
	user_cancelled : BOOLEAN

	col_red : EV_COLOR
	col_white : EV_COLOR
	col_reddish : EV_COLOR

	host_valid : BOOLEAN
	network_port_valid : BOOLEAN

end
