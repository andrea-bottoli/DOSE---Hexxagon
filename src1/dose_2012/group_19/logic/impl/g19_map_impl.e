class
	G19_MAP_IMPL

inherit
	G19_READONLY_MAP_IMPL
		rename
			make as super_make
		end

create
	make

feature

	make(name1, name2, name3, name4: STRING; terrain_card_manager: G19_TERRAIN_CARD_MANAGER)
		do
			super_make(name1, name2, name3, name4, terrain_card_manager)
		end

	apply(step: G19_STEP)
		local
			action_counter: INTEGER
			action: TUPLE[x, y: INTEGER; action_type: STRING]
		do
			from
				action_counter := 1
			until
				action_counter > step.get_actions().count
			loop
				action := step.get_actions().at(action_counter)

				current_map.put([current_map.at((action.y * 20) + action.x).type, step.get_player()], (action.y * 20) + action.x)

				action_counter := action_counter + 1
			end
		end


end
