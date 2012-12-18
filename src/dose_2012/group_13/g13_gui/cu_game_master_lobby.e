note
	description: "Summary description for {CU_MASTER_LOBBY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_GAME_MASTER_LOBBY

inherit

	CU_WINDOWS

create
	make_master

feature
	switch_char_button: EV_BUTTON
			-- "Switch character" button

	start_game_button: EV_BUTTON
			-- "Start Game" button

	make_master (main_lobby_gm: CU_MAIN_LOBBY; a_controller: CU_INIT_CONTROLLER)
			-- Generates the window to the master of the game
	do
			a_controller.start("master")
			create cant_players.make_with_strings (<<"3", "4", "5", "6">>)
			cant_players.disable_edit

			create port_field.make_with_text ("")

			create select_cant_players_button.make_with_text ("Select")
			select_cant_players_button.select_actions.extend (agent connections(cant_players,port_field))

			create remove_player_button.make_with_text ("Remove a player")
			remove_player_button.set_minimum_size (75, 24)
			remove_player_button.disable_sensitive
			remove_player_button.select_actions.extend (agent remove_player (list_players))

			create switch_char_button.make_with_text ("Switch Char")
			switch_char_button.set_minimum_size (75, 24)
			switch_char_button.disable_sensitive
			create switch_character.make_gm(Current, a_controller)
			switch_char_button.select_actions.extend (agent switch_character.show)


			create start_game_button.make_with_text ("Start a Game")
			start_game_button.set_minimum_size (75, 24)
			start_game_button.disable_sensitive
			create main_game.make (a_controller,switch_character.pawn_selected)
			start_game_button.select_actions.extend (agent main_game.show)

			create leave_game_button.make_with_text ("Leave Game")
			leave_game_button.set_minimum_size (75, 24)
			leave_game_button.select_actions.extend (agent hide)
			leave_game_button.select_actions.extend (agent main_lobby_gm.set_sensitive_join)

			create horizontal_separator
			create con_master_lobby
			con_master_lobby.extend_with_position_and_size (horizontal_separator, 0, 0, 650, 5)
			con_master_lobby.extend_with_position_and_size (remove_player_button, 250, 250, 100, 50)
			con_master_lobby.extend_with_position_and_size (switch_char_button, 10, 370, 100, 50)
			con_master_lobby.extend_with_position_and_size (start_game_button, 10, 450, 100, 50)
			con_master_lobby.extend_with_position_and_size (leave_game_button, 250, 420, 100, 50)
			con_master_lobby.extend_with_position_and_size (port_field, 250, 50, 150, 24)
			con_master_lobby.extend_with_position_and_size (cant_players, 450, 50, 70, 24)
			con_master_lobby.extend_with_position_and_size (select_cant_players_button, 385, 90, 80, 40)
			set_message ("Select a number of players")
			con_master_lobby.extend_with_position_and_size (message_label, 450, 10, 150, 40)
			set_message ("Put a number of game Port")
			con_master_lobby.extend_with_position_and_size (message_label, 250, 10, 150, 40)

			make_with_title ("Master Lobby - Cluedo")
			set_size (650,600)
			put (con_master_lobby)
		end



feature
	set_sensitive_start
	do
		start_game_button.enable_sensitive
	end

	set_sensitive_switch
	do
		switch_char_button.enable_sensitive
	end

	set_disable_switch
		do
			switch_char_button.disable_sensitive
		end

	remove_player (player_name: EV_LIST)
			-- Remove a player of the connected list
		require
			player_name_list_not_empty: player_name /= void
		do
			if
				attached player_name.selected_item
			then
				player_name.selected_item.destroy
			end
		ensure
			player_name_list_removed: not player_name.has (player_name.selected_item)
		end

	error_dialog (a_message: STRING)
	require
		a_message_not_void: a_message /= void
	local
		information_dialog: EV_INFORMATION_DIALOG
	do
		create information_dialog.make_with_text (a_message)
		information_dialog.set_title ("ERROR")
		information_dialog.show
	end

	connections (a_player: EV_COMBO_BOX; a_port: EV_TEXT_FIELD)
	local
		player_count: INTEGER
	do
		if attached a_player.selected_item then
			player_count := 0
			if a_player.selected_item.text.is_equal ("3") then
				player_count := 3
			end
			if a_player.selected_item.text.is_equal ("4") then
				player_count := 4
			end
			if a_player.selected_item.text.is_equal ("5") then
				player_count := 5
			end
			if a_player.selected_item.text.is_equal ("6") then
				player_count := 6
			end
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
						create server.make (port, player_count)
						create players.make
						from
							server.sockets.start
						until
							server.sockets.exhausted
						loop
							players.extend (server.sockets.item.peer_address.host_address.host_address)
							server.sockets.forth
						end

						set_message ("List of Players")
						con_master_lobby.extend_with_position_and_size (message_label, 10, 10, 80, 40)
						create list_players.make_with_strings (players)
						con_master_lobby.extend_with_position_and_size (list_players, 10, 50, 200, 300)
						select_cant_players_button.disable_sensitive
						remove_player_button.enable_sensitive
						switch_char_button.enable_sensitive
						cant_players.disable_sensitive
						port_field.disable_sensitive
					end
				end
			end
		end
	end

feature --Implementation/ Constants

	player_match: CU_PLAYER
			-- Attribute

	select_cant_players_button: EV_BUTTON

	remove_player_button: EV_BUTTON
			-- "Expulse a player" button

	leave_game_button: EV_BUTTON
			-- "Leave Game" button

    con_master_lobby: EV_FIXED

    list_players: EV_LIST

    switch_character: CU_SWITCH_CHARACTER

    main_game: CU_MAIN_GAME

    server: CU_SERVER

    cant_players: EV_COMBO_BOX
			players: LINKED_LIST [STRING]

	port_field: EV_TEXT_FIELD

	port: INTEGER

end
