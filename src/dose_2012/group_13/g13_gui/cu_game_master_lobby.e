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
	make

feature

	make
			-- Generates the window to the master of the game
		local
			array: ARRAY[STRING]
			selection: STRING
		do
			create array.make_filled ("", 0, 3)
			array.put ("hola", 0)
			array.put ("mundo", 1)


			create list_players.make_with_strings (array)

			create remove_player_button.make_with_text ("Remove a player")
			remove_player_button.set_minimum_size (75, 24)
			remove_player_button.select_actions.extend (agent remove_player (list_players))
--			if
--				list_players.selected_item.is_cloned ("mundo")
--			then
--				print ("lalslalalalala")
----				remove_player_button.select_actions.extend (agent destroy)
--			end

			create switch_char_button.make_with_text ("Swich Char")
			switch_char_button.set_minimum_size (75, 24)
			create switch_character.make
			switch_char_button.select_actions.extend (agent switch_character.show)


			create start_game_button.make_with_text ("Start a Game")
			start_game_button.set_minimum_size (75, 24)
			create main_game.make
			start_game_button.select_actions.extend (agent main_game.show)

			create leave_game_button.make_with_text ("Leave Game")
			leave_game_button.set_minimum_size (75, 24)
			leave_game_button.select_actions.extend (agent destroy)

			set_message ("List of Players")


			create con_master_lobby
			con_master_lobby.extend_with_position_and_size (message_label, 10, 10, 80, 40)
			con_master_lobby.extend_with_position_and_size (list_players, 10, 50, 200, 300)
			con_master_lobby.extend_with_position_and_size (remove_player_button, 250, 50, 100, 50)
			con_master_lobby.extend_with_position_and_size (switch_char_button, 10, 370, 100, 50)
			con_master_lobby.extend_with_position_and_size (start_game_button, 10, 450, 100, 50)
			con_master_lobby.extend_with_position_and_size (leave_game_button, 250, 420, 100, 50)

			make_with_title ("Master Lobby")
			set_size (380,600)
			put (con_master_lobby)
		end



feature

	get_player_list: LINKED_LIST [STRING]
			-- Get list of players linked to a game
		do
		ensure
			player_list_not_empty: Result /= void
			player_list_max: Result.count <= 6
		end

	remove_player (player_name: EV_LIST)
			-- Remove a player of the connected list
		require
--			player_name_not_empty: player_name /= void
--			player_name_exists: get_player_list.has (player_name)
		do
			if
				attached player_name.selected_item
			then
				player_name.selected_item.destroy
			end
		ensure
--			player_name_removed: not get_player_list.has (player_name)
		end

feature --Implementation/ Constants

	player_match: CU_PLAYER
			-- Attribute

	remove_player_button: EV_BUTTON
			-- "Expulse a player" button

	switch_char_button: EV_BUTTON
			-- "Switch character" button

	start_game_button: EV_BUTTON
			-- "Start Game" button

	leave_game_button: EV_BUTTON
			-- "Leave Game" button

    con_master_lobby: EV_FIXED

    list_players: EV_LIST

    switch_character: CU_SWITCH_CHARACTER

    main_game: CU_MAIN_GAME

    connected_players: CU_SERVER

end
