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
	host_player : G10_PLAYER_INFO
	joined_player : ARRAYED_LIST[G10_PLAYER_INFO]

feature {NONE}

	dflt_make
	do

	end

	make (player_info : G10_PLAYER_INFO)
	do

	end

feature{ANY}

	get_host_player : G10_PLAYER_INFO
	do

	end

	get_joined_player(player_id : STRING) : G10_PLAYER_INFO
	require
		player_id_not_null: player_id /= void
		player_id_not_empty: not player_id.is_empty
	do

	end

	get_all_joined_players : ARRAYED_LIST[G10_PLAYER_INFO]
	do

	end

feature -- not all classes access

	set_a_host ( a_host : G10_PLAYER_INFO)
	require
		a_host_not_null: a_host /= void
	do

	ensure
		host_really_changed: host_player /= old host_player
	end

	add_a_joined_player (a_player : G10_PLAYER_INFO)
	require
		a_player_not_null: a_player /= void
	do

	ensure
		player_count_raised: joined_player.count = old joined_player.count + 1
	end

	delete_a_joined_player ( a_player : G10_PLAYER_INFO)
	require
		a_player_not_null: a_player /= void
	do

	ensure
		player_count_decreased: joined_player.count = old joined_player.count - 1
	end

end
