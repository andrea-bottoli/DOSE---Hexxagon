class
	G19_RANDOM_BOT

inherit
	G19_BOT

create
	make

feature{NONE}
	current_random_step: RANDOM
	current_player_info: G19_PLAYER_INFO

feature

	make(player_info: G19_PLAYER_INFO)
		local
			time: TIME
		do
			create time.make_now
			current_player_info := player_info
			create current_random_step.set_seed(time.milli_second)
		end

	decide_next_step(game: G19_GAME): G19_STEP
		local
			cell_index, item: INTEGER
			step: G19_CONSOLE_STEP
			avaible_cells: SET[TUPLE[x, y: INTEGER]]
		do
			avaible_cells := game.get_map.get_avaible_cells (current_player_info, "NORMAL")
			current_random_step.forth()
			cell_index := current_random_step.item() \\ (avaible_cells.count - 2)
			create step.make(current_player_info)



			from
				avaible_cells.linear_representation.start
			until
				cell_index = 0
			loop
				avaible_cells.linear_representation.forth
				cell_index := cell_index - 1
			end

			from
				item := 1
			until
				item > 3
			loop
				step.add_action ([avaible_cells.linear_representation.item_for_iteration.x, avaible_cells.linear_representation.item_for_iteration.y], "NORMAL")
				io.put_integer(avaible_cells.linear_representation.item_for_iteration.x)
				io.put_character (':')
				io.put_integer (avaible_cells.linear_representation.item_for_iteration.y)
				io.put_character ('%N')
				avaible_cells.linear_representation.forth()

				item := item + 1
			end

			result := step
		end
end
