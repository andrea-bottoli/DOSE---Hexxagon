note
	description: "Summary description for {G10_HOSTED_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_HOSTED_GAME

create
	dflt_make, make

feature {NONE}--attributes
	host_player : G10_NET_PLAYER_INFO
	list_of_joined_players : ARRAYED_LIST[G10_NET_PLAYER_INFO]


feature

	dflt_make
	do

	end

	make (player_info : G10_NET_PLAYER_INFO)
	require
		player_is : player_info /= void
	do
		host_player := player_info
	end

feature{ANY}

	get_host_player : G10_NET_PLAYER_INFO
	do
		Result := host_player
	ensure
		result_is : Result /= void
	end

	get_joined_player(player_id : STRING) : G10_NET_PLAYER_INFO
	require
		player_id_not_null: player_id /= void
		player_id_not_empty: not player_id.is_empty
	local
		i : INTEGER
	do
		from
			i := 1
		until
			i > list_of_joined_players.count
		loop
			if list_of_joined_players.at (i).get_id.is_equal (player_id) = True
			then
				Result := list_of_joined_players.at (i)
			end
		 	i := i + 1
		end
	end

	get_all_joined_players : ARRAYED_LIST[G10_NET_PLAYER_INFO]
	local
		new_players_list : ARRAYED_LIST[G10_NET_PLAYER_INFO]
	do
		new_players_list.copy (list_of_joined_players)
	ensure
		result_is : Result /= void  AND Result.is_equal (list_of_joined_players) = True
	end

feature -- not all classes access

	set_a_host ( a_host : G10_NET_PLAYER_INFO)
	require
		a_host_not_null: a_host /= void
	do
		host_player := a_host
	ensure
		host_really_changed: host_player /= old host_player
	end


	add_a_joined_player (a_player : G10_NET_PLAYER_INFO)
	require
		a_player_not_null: a_player /= void
	do
		list_of_joined_players.put (a_player)
	ensure
		player_count_raised: list_of_joined_players.count = old list_of_joined_players.count + 1
	end


	delete_a_joined_player ( a_player : G10_NET_PLAYER_INFO)
	require
		a_player_not_null: a_player /= void
	do
		list_of_joined_players.prune_all (a_player)
	ensure
		player_count_decreased: list_of_joined_players.count = old list_of_joined_players.count - 1
	end

	player_exists (p_id : STRING) : BOOLEAN
	require
		pID_is : p_id.is_empty = false
	local
		i : INTEGER
	do
		from
			i := 0
		until
			i > list_of_joined_players.count AND Result = true
		loop
			if list_of_joined_players.at (i).get_id.is_equal (p_id) then
				Result := true
			end
			i := i + 1
		end

		Result := false
	end
end
