note
	description: "Summary description for {PLAYERS}."
	author: "... , Angel Kyriako"
	date: "13/12/2012"
	revision: "3.0"

class
	G10_LOGIC_PLAYERS

create
	 make_players

feature{NONE}
	players : ARRAYED_LIST[G10_LOGIC_PLAYER]
	current_player_id : INTEGER

feature{G10_LOGIC_GAME_MAIN} -- constructors

	make_players(a_player_name: STRING player_num: INTEGER)
	local
		first_player: G10_LOGIC_PLAYER
	do
		create first_player.make_with_name(a_player_name, 1)--create the first player

		create Players.make (player_num)--create players array and add the first player
		Add_Player(first_player)
		current_player_id := 1
	end

feature{G10_LOGIC_GAME_MAIN, G10_PLAYER_LOGIC_TESTS}

	get_current_player_id() : INTEGER -- routine returns current player id
	require
		players_list_not_void : players /= void
		valid_caurrent_player_id : current_player_id <= players.capacity
	do
		Result := current_player_id
	ensure
		current_player_not_void : result /= void
		players_not_mutated : players = old players
		players_list_not_void : players /= void
	end

	get_current_player() : G10_LOGIC_PLAYER -- routine returns the current player
	require
		players_list_not_void : players /= void
		valid_caurrent_player_id : current_player_id <= players.capacity or current_player_id > players.count
	do
		Result := Players.i_th (current_player_id)
	ensure
		current_player_not_void : result /= void
		players_not_mutated : players = old players
		players_list_not_void : players /= void
	end

	generate_next_player -- the next player's id in the row becomes the new current player id
	require
		players_list_not_void : players /= void
		players_list_not_empty : players.is_empty = false
	do
		if(current_player_id = players.capacity or current_player_id = players.count) then
			current_player_id := 1
		else
			current_player_id := current_player_id + 1
		end
	ensure
		players_not_mutated : players = old players
		players_list_not_void : players /= void
		valid_current_player_id : current_player_id <= players.capacity and current_player_id >= 1
	end

	Add_Player(Player:G10_LOGIC_PLAYER)
	do
		Players.extend(Player)
	end

	get_players() : ARRAYED_LIST[G10_LOGIC_PLAYER]
	require
		players_list_not_void : players /= void
	do
		Result := Players
	ensure
		players_list_not_void : players /= void
	end

end
