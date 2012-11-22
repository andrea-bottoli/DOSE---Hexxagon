note
	description: "Summary description for {BS_NET_MACHINE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	BS_NET_MACHINE

inherit {NONE}

	BS_CONSTANTS

feature {BS_NET_MACHINE} -- Information

	is_game_master(): BOOLEAN
	do
		result := is_master
	ensure
		result = is_master
	end


feature -- Game operations

	get_move (color_id: INTEGER; timeout_in_seconds: INTEGER): BS_MOVE
			-- timeout = 0 means no timeout
		require
			is_valid_color: check_is_valid_color (color_id)
			non_negative_timeout: timeout_in_seconds >= 0
		deferred
		ensure
			non_void: result /= void
		end

feature -- Game status messages

	update_player_list (new_list: ARRAY [INTEGER]) -- Array of player ids
		require
			new_list.lower = 1
		do
			player_list := new_list
		ensure
			list_updated: player_list = new_list
		end

	reset_game ()
		require
			not_in_lobby: game_status >= 1
		deferred
		end

	player_makes_move (player_id: INTEGER; color_id: INTEGER; move: BS_MOVE)
		require
			is_valid_player: check_is_valid_player (player_id)
			is_valid_color: check_is_valid_color (color_id)
			move_non_void: move /= void
		deferred
		end

	remove_tile_from_player (player_id: INTEGER; color_id: INTEGER; tile_to_remove: BS_TILE)
		require
			is_valid_player: check_is_valid_player (player_id)
			is_valid_color: check_is_valid_color (color_id)
			tile_non_void: tile_to_remove /= void
		deferred
		end

	warn_bad_move (player_id: INTEGER; color_id: INTEGER)
		require
			is_valid_player: check_is_valid_player (player_id)
			is_valid_color: check_is_valid_color (color_id)
		deferred
		end

	update_scores (new_scores: ARRAY [TUPLE [INTEGER, INTEGER]]) -- [player id, score]
		require
			array_not_void: new_scores /= void
			sizes_match: new_scores.count = player_list.count
		do
			player_scores := new_scores
		ensure
			scores_updated: player_scores = new_scores
		end

	print_log_message (log_message: STRING)
		require
			message_not_void: log_message /= void
		deferred
		end

	set_turn (player_id: INTEGER; color_id: INTEGER)
		require
			is_valid_player: check_is_valid_player (player_id)
			is_valid_color: check_is_valid_color (color_id)
		deferred
		end

	announce_victory (player_id: INTEGER; total_scores: ARRAY [TUPLE [INTEGER, INTEGER]])
		require
			already_have_scores: player_scores /= void
		deferred
		end

feature {BS_NET_MACHINE}

	game_status: INTEGER
			-- 0: lobby, game not started yet
			-- 1: game in progress
			-- 2: game terminated

feature {NONE}

	check_is_valid_color (color_id: INTEGER): BOOLEAN
		do
			result := (min_color <= color_id and color_id <= max_color)
		end

	check_is_valid_player (player_id: INTEGER): BOOLEAN
		do
			if player_list = void then
				result := false
			else
				result := (player_id <= player_list.count)
			end
		end

	player_list: ARRAY [INTEGER]

	player_scores: ARRAY [TUPLE [INTEGER, INTEGER]] -- [player id, score]

	current_turn: TUPLE [INTEGER, INTEGER] -- [player_id, color_id]

	is_master: BOOLEAN

invariant
	status_is_valid: (game_status >= 0 and game_status <= 2)
	player_list_is_1_based: player_list.lower = 1
	player_scores_match_players_count: player_scores = void or else player_scores.count = player_list.count
	current_turn_valid: current_turn = void or else (check_is_valid_player (current_turn.integer_item (1))) and check_is_valid_color (current_turn.integer_item (2))

end
