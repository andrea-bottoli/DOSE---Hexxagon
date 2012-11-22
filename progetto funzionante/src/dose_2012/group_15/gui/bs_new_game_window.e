note
	description: "Summary description for {BS_NEW_GAME_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NEW_GAME_WINDOW

inherit
	EV_DIALOG
		redefine
			initialize
		end

create
	make

feature {NONE} -- Initialization

	make
		do
			user_cancelled := False
			create col_reddish.make_with_8_bit_rgb(255, 100, 100)
			create col_white.make_with_8_bit_rgb(255, 255, 255)
			network_port_valid := True
			n_network_players_valid := True

			make_with_title("New Game")
		end

	initialize
		do
			Precursor{EV_DIALOG}

			set_size(320, 190)


			create con_main

			create btn_start.make_with_text("START")
			btn_start.select_actions.extend(agent start_game)
			con_main.extend_with_position_and_size (btn_start, 40, 120, 100, 20)

			create btn_cancel.make_with_text("Cancel")
			btn_cancel.select_actions.extend(agent cancel_dialog)
			con_main.extend_with_position_and_size(btn_cancel, 180, 120, 100, 20)

			create lbl_game_name.make_with_text("Game Name: ")
			lbl_game_name.align_text_left
			con_main.extend_with_position_and_size (lbl_game_name, 10, 10, 100, 20)

			create txf_game_name.make_with_text("Game1")
			con_main.extend_with_position_and_size (txf_game_name, 110, 10, 100, 20)

			create chk_networking_enabled.make_with_text("Enable Networking")
			chk_networking_enabled.select_actions.extend(agent toggle_networking)
			con_main.extend_with_position_and_size (chk_networking_enabled, 30, 40, 150, 15)

			create lbl_network_port.make_with_text("TCP Port: ")
			lbl_network_port.align_text_left
			con_main.extend_with_position_and_size (lbl_network_port, 40, 60, 100, 15)

			create txf_network_port.make_with_text("9000")
			txf_network_port.disable_edit
			txf_network_port.align_text_center
			txf_network_port.change_actions.extend (agent validate_network_port)
			con_main.extend_with_position_and_size (txf_network_port, 220, 60, 50, 20)

			create lbl_n_network_players.make_with_text("Number of network players: ")
			lbl_n_network_players.align_text_left
			con_main.extend_with_position_and_size (lbl_n_network_players, 40, 80, 210, 15)

			create txf_n_network_players.make_with_text("1")
			txf_n_network_players.disable_edit
			txf_n_network_players.align_text_center
			txf_n_network_players.change_actions.extend (agent validate_n_players)
			con_main.extend_with_position_and_size (txf_n_network_players, 220, 80, 50, 20)

--			create btn_test_new_game.make_with_text("New Game (GUI Test)")
--			btn_test_new_game.select_actions.extend(agent new_game_test)
--			con_main.extend_with_position_and_size (btn_test_new_game, 30, 30, 150, 30)

			put(con_main)
		end

feature {BS_LOBBY_WINDOW} -- Interface to Lobby Window
	has_user_cancelled : BOOLEAN
		do
			Result := user_cancelled
		end

feature {NONE} -- User Actions

	start_game
		do

		end

	new_game_test
		do
			destroy
		end

	cancel_dialog
		do
			user_cancelled := True
			destroy
		end

	toggle_networking
		do
			if chk_networking_enabled.is_selected then
				txf_network_port.enable_edit
				txf_n_network_players.enable_edit

			else
				txf_network_port.disable_edit
				txf_n_network_players.disable_edit

			end

			check_ready_to_start
		end

feature {NONE} -- Input Validation

	validate_network_port
		local
			l_port : INTEGER
		do
			if txf_network_port.text.is_integer then
				l_port := txf_network_port.text.to_integer
				if 1024 <= l_port and l_port <= 65535 then
					txf_network_port.set_background_color (col_white)
					network_port_valid := True
					check_ready_to_start
				else
					btn_start.disable_sensitive
					txf_network_port.set_background_color (col_reddish)
					network_port_valid := False
				end
			else
				btn_start.disable_sensitive
				txf_network_port.set_background_color (col_reddish)
				network_port_valid := False
			end
		end

	validate_n_players
		do
			if txf_n_network_players.text.is_integer then
				if txf_n_network_players.text.to_integer < 4 then
					txf_n_network_players.set_background_color (col_white)
					n_network_players_valid := True
					check_ready_to_start
				else
					btn_start.disable_sensitive
					txf_n_network_players.set_background_color (col_reddish)
					n_network_players_valid := False
				end
			else
				btn_start.disable_sensitive
				txf_n_network_players.set_background_color (col_reddish)
				n_network_players_valid := False
			end
		end

	check_ready_to_start
		do
			if (not chk_networking_enabled.is_selected) or (network_port_valid and n_network_players_valid) then
				btn_start.enable_sensitive
			else
				btn_start.disable_sensitive
			end
		end

feature {NONE} -- Implementation

	con_main : EV_FIXED
	btn_test_new_game : EV_BUTTON
	btn_start : EV_BUTTON
	btn_cancel : EV_BUTTON
	lbl_game_name : EV_LABEL
	txf_game_name : EV_TEXT_FIELD
	chk_networking_enabled : EV_CHECK_BUTTON
	lbl_network_port : EV_LABEL
	txf_network_port : EV_TEXT_FIELD
	lbl_n_network_players : EV_LABEL
	txf_n_network_players : EV_TEXT_FIELD
	user_cancelled : BOOLEAN
	col_white : EV_COLOR
	col_reddish : EV_COLOR

	network_port_valid : BOOLEAN
	n_network_players_valid : BOOLEAN

invariant
	-- TODO: equivalence operator: iff. / <==> ??
	--validation_1: chk_networking_enabled.is_selected implies ((network_port_valid and n_network_players_valid) implies btn_start.is_sensitive)
	--validation_2: chk_networking_enabled.is_selected implies (btn_start.is_sensitive implies (network_port_valid and n_network_players_valid))
end
