class
	G19_STEP_IMPL

inherit
	G19_STEP

feature

	current_player_info: G19_PLAYER_INFO
	current_actions: LIST[TUPLE[x, y: INTEGER; action_type: STRING]]

feature

	make(player_info: G19_PLAYER_INFO; actions: LIST[TUPLE[x, y: INTEGER; action_type: STRING]])
		do
			current_player_info := player_info
			current_actions := actions
		end

	get_player(): G19_PLAYER_INFO
		do
			result := current_player_info
		end

	get_actions(): LIST[TUPLE[x, y: INTEGER; action_type: STRING]]
		do
			result := current_actions
		end

end
