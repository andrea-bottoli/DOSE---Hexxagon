note
	description: "Summary description for {G10_ROOT_SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_ROOT_SERVER

inherit
	SOCKET_RESOURCES
	THREAD_CONTROL
create
	make
feature
	make
	do
		--list_of_games.make(1)
	end

feature{NONE}
	list_of_games : ARRAYED_LIST[G10_HOSTED_GAME]
	list_of_connected_players : ARRAYED_LIST[G10_PLAYER_INFO]

feature

	get_game (game_ip : STRING) : G10_HOSTED_GAME
	require
		game_ip_not_null: game_ip /= void
		game_ip_not_empty: not game_ip.is_empty
	do

	end

	get_all_games : ARRAYED_LIST[G10_HOSTED_GAME]
	do

	end

	get_connected_player (player_id : STRING) : G10_PLAYER_INFO
	require
		player_id_not_null: player_id /= void
		player_id_not_empty: not player_id.is_empty
	do

	end

	get_all_connected_players : ARRAYED_LIST[G10_PLAYER_INFO]
	do

	end

feature

	add_game_to_list ( a_game : G10_HOSTED_GAME)
	require
		game_not_null : a_game /= void
	do
		--list_of_games.extend(game)
	ensure
		game_count_raised: list_of_games.count = old list_of_games.count + 1
	end

	add_player_to_list (a_player : G10_PLAYER_INFO)
	require
		player_not_null : a_player /= void
	do
	ensure
		player_count_raised: list_of_connected_players.count= old list_of_connected_players.count + 1
	end

end
