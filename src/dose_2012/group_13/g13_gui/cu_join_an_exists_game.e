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
	make
		-- Generates the window to join  an existing game
		do
			create name_player_join.make_with_text ("")
			create ip_address_match.make_with_text ("")
			name_player_join.set_minimum_size (100, 25)

			create join_button.make_with_text ("Join a game")
			join_button.set_minimum_size (80, 40)
			join_button.select_actions.extend (agent set_name_and_ip (name_player_join,ip_address_match))


			create cancel_button.make_with_text ("Cancel")
			cancel_button.set_minimum_size (80, 40)
			cancel_button.select_actions.extend (agent hide)

			create horizontal_separator

			create con_join
			con_join.extend_with_position_and_size (name_player_join, 200, 50, 100, 25)
			con_join.extend_with_position_and_size (ip_address_match, 200, 100, 100, 25)
			con_join.extend_with_position_and_size (join_button, 50, 200, 100, 50)
			con_join.extend_with_position_and_size (cancel_button, 200, 200, 100, 50)
			con_join.extend_with_position_and_size (horizontal_separator, 0, 0, 350, 5)

			set_message ("Name of Player: ")
			con_join.extend_with_position_and_size (message_label, 10, 50, 150, 30)

			set_message ("Ip address/Host name: ")
			con_join.extend_with_position_and_size (message_label, 10, 100, 150, 30)

			make_with_title ("Join a Game")
			put (con_join)
			set_size (350,300)
			disable_user_resize
		end


feature

	set_name_and_ip (a_name_player, ip_address: EV_TEXT_FIELD)
		-- Set a name of the match to join an exists game
		require
			name_player_not_empty: a_name_player /= void
		local
			error_dialog: EV_INFORMATION_DIALOG
		do
		if not (a_name_player.text.is_empty) then
			name_player := a_name_player.text
			io.put_string (name_player)

		else
			create error_dialog.make_with_text ("Name of player is empty")
			error_dialog.set_title ("ERROR")
			error_dialog.show
--			error_dialog.show_modal_to_window (parent_window)
		end
		if not (ip_address.text.is_empty) then
			ip := ip_address.text
			io.put_string (ip)
		else
			create error_dialog.make_with_text ("Ip address is not valid")
			error_dialog.set_title ("ERROR")
			error_dialog.show
--			error_dialog.show_modal_to_window (parent_window)
		end
		ensure
--			name_match_updated: name_player_join.text = name_match
		end

--	set_ip_address (ip_address: STRING)
--		-- Set a ip address to join an exists game
--		require
--			ip_address_not_empty: ip_address /= void
--		do
--		ensure
--			ip_address_updated: ip_address_match.text = ip_address
--		end


feature	-- Implementation/ Constants

	name_player_join: EV_TEXT_FIELD
			-- Will contain name of the match
	ip_address_match: EV_TEXT_FIELD
			-- Will contain the ip address of the match
    join_button: EV_BUTTON
            -- "Join" button.
	cancel_button: EV_BUTTON
			-- "Cancel" button

	name_entered: STRING

	con_join: EV_FIXED

	ip: STRING

	name_player: STRING

	parent_window: CU_MAIN_LOBBY
end
