note
	description: "Summary description for {CU_MASTER_LOBBY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_GAME_MASTER_LOBBY

inherit
	CU_WINDOWS

feature

	make
		-- Generates the window to the master of the game
		do
		end

feature

	get_player_list: LINKED_LIST[STRING]
		-- Get list of players linked to a game
		do
		ensure
			player_list_not_empty: Result /= void
			player_list_max: Result.count <= 6
		end

	remove_player (player_name: STRING)
		-- Remove a player of the connected list
		require
			player_name_not_empty: player_name /= void
			player_name_exists: get_player_list.has (player_name)
		do
		ensure
			player_name_removed: not get_player_list.has (player_name)
		end

feature	--Implementation/ Constants

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

end
