note
	description: "Implementation of bot"
	author: "Kasetkin"
	date: "17/12/12"
	revision: "Prototype"

class
	G19_BOT_IMPL

inherit
	G19_BOT

create
	make

feature{NONE}
	bot_player_info: G19_PLAYER_INFO
	random_generator: RANDOM

feature
	make(info: G19_PLAYER_INFO)
	do
		create random_generator.set_seed(31337)
		bot_player_info := info
	end

	get_action_by_strategy(actions: TABLE[INTEGER, STRING]; game: G19_GAME) : STRING
	local
		all_actions_count: INTEGER
	do
		all_actions_count := 0
		from
			actions.linear_representation.start
		until
			actions.linear_representation.after
		loop
			all_actions_count := all_actions_count + actions.linear_representation.item_for_iteration
			actions.linear_representation.forth
		end
		result := "NORMAL"
	end

	decide_next_step(game: G19_GAME) : G19_STEP
	local
		cell_index, item: INTEGER
		step: G19_CONSOLE_STEP
		available_cells: SET[TUPLE[x, y: INTEGER]]
		available_actions: TABLE[INTEGER, STRING]
		free_space : INTEGER
	do
		available_actions := game.get_avaible_actions_count (bot_player_info)
		free_space := available_cells.count
		from
			item := 1
			available_cells.linear_representation.start
		until
			item > 3
		loop
			available_cells := game.get_map.get_avaible_cells (bot_player_info, get_action_by_strategy (available_actions, game))
			random_generator.forth()
			cell_index := random_generator.item() \\ free_space
			free_space := free_space - cell_index
			create step.make(bot_player_info)
			from
			until
				cell_index = 0
			loop
				available_cells.linear_representation.forth
				cell_index := cell_index - 1
			end
			step.add_action ([available_cells.linear_representation.item_for_iteration.x, available_cells.linear_representation.item_for_iteration.y], "NORMAL")
			item := item + 1
		end

		result := step
	end

end
