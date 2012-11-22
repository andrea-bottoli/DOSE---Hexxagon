note
	description: "Summary description for {G10_CRSN_SCOREBOARD_PANEL}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_SCOREBOARD_PANEL
inherit
	EV_HORIZONTAL_BOX

create
	make

--attributes
feature {NONE}
	players : ARRAYED_LIST [G10_CRSN_PLAYER_INFO]

-- constructors
feature {ANY}
	make
	do
	end

-- mutator methods.
feature {G10_CRSN_SCOREBOARD_PANEL}
	update_follower_number(num : INTEGER  n : STRING) -- routine updates the follower number of the player with name n to num.
	require
		valid_num : num >= 0
		valis_name : n /= void
		--valid_obj : num /= void
		valid_list : players /= void and players.is_empty = false
	do
		ensure
			valid_mutate : players /= void
	end

	update_score(num : INTEGER  n : STRING ) -- routine updates the score of the player with name n to num
	require
		valid_num : num >= 0
		valis_name : n /= void
		--valid_obj : num /= void
		valid_list : players /= void and players.is_empty = false
	do
		ensure
			valid_mutate : players /= void
	end

	add_player(p : G10_CRSN_PLAYER_INFO) -- routine adds a player to the players list of this object.
	require
		valid_player : p /= void
		valid_list : players /= void
	do
		ensure
			valid_mutate : players /= void
	end

-- accesor methods.
feature {G10_CRSN_GAME_MAIN}
	get_follower_number(p : G10_CRSN_PLAYER_INFO ) : INTEGER -- routine returns the number of followers of p player.
	require
		valid_player : p /= void
		valid_list : players /= void and players.is_empty = false and players.has (p)
	do
		ensure
			valid_player : p /= void
			valid_list : players /= void and players.is_empty = false and players.has (p)
	end

	get_players() : ARRAYED_LIST [G10_CRSN_PLAYER_INFO] -- routine returns the list of players of this object.
	do
	end

	get_score(p : G10_CRSN_PLAYER_INFO ) : INTEGER -- routine returns the score of the player p
	require
		valid_player : p /= void
		valid_list : players /= void and players.is_empty = false and players.has (p)
	do
		ensure
			valid_player : p /= void
			valid_list : players /= void and players.is_empty = false and players.has (p)
	end

	get_player_indexed(i : INTEGER): G10_CRSN_PLAYER_INFO -- routine returns the player in the i index of players list.
	require
		valid_list : players /= void
		valid_index : i >=1
	do
		ensure
			valid_list : players /= void
			list_not_mutated : players = old players
	end

	get_player(n : STRING): G10_CRSN_PLAYER_INFO -- routine returns the player with name n.
	require
		valid_list : players /= void
		valid_index : n /= void
	do
		ensure
			valid_list : players /= void
			list_not_mutated : players = old players
	end

--observer methods.
feature {G10_CRSN_GAME_MAIN}
	contains_player(n : STRING) : BOOLEAN
	require
		valid_list : players /= void
	do
		ensure
			list_unmutated : players = old players
	end

-- class invariants
invariant
	valid_list : players /= void
end
