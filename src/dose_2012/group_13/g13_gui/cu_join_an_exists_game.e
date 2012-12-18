note
	description: "Summary description for {CU_JOIN_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_JOIN_AN_EXISTS_GAME

inherit
	CU_WINDOWS

create
    make

feature	-- Implementation
	make (main_lobby_join: CU_MAIN_LOBBY; a_controller: CU_INIT_CONTROLLER)
		-- Generates the window to join  an existing game
		do

--			a_controller.logic.rcv_message (create{CU_MESSAGE}.make("new_player",<<l_player>>))
			create name_player_join.make_with_text ("")
			create ip_address_match.make_with_text ("")
			create port_number.make_with_text ("")

			create join_button.make_with_text ("Join a game")
			join_button.set_minimum_size (80, 40)
			join_button.select_actions.extend (agent hide)
			join_button.select_actions.extend (agent set_name_and_ip (name_player_join,ip_address_match,port_number, a_controller))

			create cancel_button.make_with_text ("Cancel")
			cancel_button.set_minimum_size (80, 40)
			cancel_button.select_actions.extend (agent hide)
			cancel_button.select_actions.extend (agent main_lobby_join.set_sensitive_create)

			create horizontal_separator

			create con_join
			con_join.extend_with_position_and_size (name_player_join, 200, 20, 100, 25)
			con_join.extend_with_position_and_size (ip_address_match, 200, 70, 100, 25)
			con_join.extend_with_position_and_size (port_number, 200, 120, 100, 25)
			con_join.extend_with_position_and_size (join_button, 50, 200, 100, 50)
			con_join.extend_with_position_and_size (cancel_button, 200, 200, 100, 50)
			con_join.extend_with_position_and_size (horizontal_separator, 0, 0, 350, 5)

			set_message ("Name of Player: ")
			message_label.align_text_left
			con_join.extend_with_position_and_size (message_label, 10, 20, 150, 30)

			set_message ("Ip address/Host name: ")
			message_label.align_text_left
			con_join.extend_with_position_and_size (message_label, 10, 70, 150, 30)

			set_message ("Port: ")
			message_label.align_text_left
			con_join.extend_with_position_and_size (message_label, 10, 120, 150, 30)

			make_with_title ("Join a Game - Cluedo")
			put (con_join)
			set_size (350,300)
			disable_user_resize
		end


feature

	error_dialog (a_message: STRING)
	local
		information_dialog: EV_INFORMATION_DIALOG
	do
		create information_dialog.make_with_text (a_message)
		information_dialog.set_title ("ERROR")
		information_dialog.show
	end

	set_name_and_ip (a_name_player, ip_address, a_port: EV_TEXT_FIELD; a_controller: CU_INIT_CONTROLLER)
		-- Set a name of the match to join an exists game
		require
			name_player_not_empty: a_name_player /= void
		local
			player: CU_PLAYER
		do
		if a_name_player.text.is_empty then
			error_dialog ("Name of player is empty")
		else
			name_player := a_name_player.text
			if ip_address.text.is_empty then
				error_dialog ("Ip address is empty")
			else
				ip := ip_address.text
				if a_port.text.is_empty then
						error_dialog ("Port number is empty.")
				else
					if not a_port.text.is_integer then
						error_dialog ("Port number is incorrect. (Must to be a number value)")
					else
						port := a_port.text.to_integer_32
						if
							port < 2000 or port > 4000
						then
							error_dialog ("Port number is incorrect. (Must to be between 2000 and 4000)")
						else
							field_correct := True
						end
					end
				end
			end

			if field_correct then

				create client.make (ip, port)
				create slave_lobby.make (a_controller)
				slave_lobby.show
				create player.make (name_player, 1)
				a_controller.logic.rcv_message (create{CU_MESSAGE}.make("new_player",<<player>>))
			end

		end


		ensure
--			name_match_updated: name_player_join.text = name_match
		end

feature	-- Implementation/ Constants

	name_player_join: EV_TEXT_FIELD
			-- Will contain name of the match
	ip_address_match: EV_TEXT_FIELD
			-- Will contain the ip address of the match

	port_number: EV_TEXT_FIELD

    join_button: EV_BUTTON
            -- "Join" button.
	cancel_button: EV_BUTTON
			-- "Cancel" button

	con_join: EV_FIXED

	ip: STRING

	name_player: STRING

	slave_lobby: CU_GAME_SLAVE_LOBBY

	port: INTEGER

	field_correct: BOOLEAN

	client: CU_CLIENT
end
