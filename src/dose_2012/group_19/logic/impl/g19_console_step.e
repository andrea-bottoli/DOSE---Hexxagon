class
	G19_CONSOLE_STEP

inherit
	G19_STEP

create
	make

feature{NONE}

	current_player_info: G19_CONSOLE_PLAYER_INFO
	current_coordinate: TUPLE[x, y:INTEGER]
	current_step_type: STRING

feature

	make(player_info: G19_CONSOLE_PLAYER_INFO; coordinate: TUPLE[x, y:INTEGER]; step_type: STRING)
		do
			current_player_info := player_info
			current_coordinate := coordinate
			current_step_type := step_type
		end

	get_x(): INTEGER
		do
			result := current_coordinate.x
		end

	get_y(): INTEGER
		do
			result := current_coordinate.y
		end

	perform(map: G19_MAP)
		do
			map.build (current_player_info, current_coordinate, current_step_type)
		end

end
