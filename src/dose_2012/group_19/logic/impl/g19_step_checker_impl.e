class
	G19_STEP_CHECKER_IMPL

inherit
	G19_STEP_CHECKER

create
	make

feature

	make
		do

		end

	is_step_valid(game: G19_GAME; step: G19_STEP): BOOLEAN
		local
			action: TUPLE[x, y: INTEGER; action_type: STRING]
			action_counter: INTEGER
			avaible_cells: SET[TUPLE[x, y: INTEGER]]
			avaible_cells_counter: INTEGER
		do
			result := true

			from
				action_counter := 1
			until
				action_counter > step.get_actions().count or result = false
			loop
				action := step.get_actions().at(action_counter)
				avaible_cells := game.get_map().get_avaible_cells(step.get_player(), action.action_type)

				if not has(avaible_cells, [action.x, action.y]) then
					result := false
				end

				action_counter := action_counter + 1
			end
		end

feature{NONE}

	has(set: SET[TUPLE[x, y: INTEGER]]; o:TUPLE[x, y: INTEGER]): BOOLEAN
		do
			result := false

			from
				set.linear_representation.start
			until
				set.linear_representation.exhausted or result = true
			loop
				if set.linear_representation.item.x = o.x and set.linear_representation.item.y = o.y then
					result := true
				end

				set.linear_representation.forth
			end
		end


end
