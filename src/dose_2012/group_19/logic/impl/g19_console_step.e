class
	G19_CONSOLE_STEP

inherit
	G19_STEP

create
	make

feature{NONE}

	current_player_info: G19_PLAYER_INFO
	current_actions: LINKED_LIST[TUPLE[x, y: INTEGER; action_type: STRING]]

feature

	make(player_info: G19_PLAYER_INFO)
		do
			current_player_info := player_info

			create current_actions.make()
		end

	get_player(): G19_PLAYER_INFO
		do
			result := current_player_info
		end

	get_actions(): LIST[TUPLE[x, y: INTEGER; action_type: STRING]]
		do
			result := current_actions
		end

	add_action(position: TUPLE[x, y:INTEGER]; action_type: STRING)
		do
			current_actions.extend([position.x, position.y, action_type])
		end

end
