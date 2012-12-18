class
	G19_READONLY_MAP_IMPL

inherit
	G19_READONLY_MAP

create
    make

feature{G19_READONLY_MAP_IMPL}

	current_map : ARRAY[TUPLE[type: INTEGER; owner: G19_PLAYER_INFO]]
	current_terrain_card_manager: G19_TERRAIN_CARD_MANAGER

feature

	make(name1, name2, name3, name4: STRING; terrain_card_manager: G19_TERRAIN_CARD_MANAGER)
		local
			i: INTEGER
		do
			current_terrain_card_manager := terrain_card_manager

			create current_map.make_filled([-1, void], 0, 400 - 1)

			load(00, 00, name1)
			load(10, 00, name2)
			load(00, 10, name3)
			load(10, 10, name4)
		end


    get_cell_at(x, y: INTEGER): TUPLE[type: INTEGER; owner: G19_PLAYER_INFO]
    	local
    		shift_x, shift_y: INTEGER
		do
			shift_x := x - 1
			shift_y := y - 1

			result := [current_map.at(shift_y * 20 + shift_x).type, current_map.at(shift_y * 20 + shift_x).owner]
		end


	get_avaible_cells(player: G19_PLAYER_INFO; action_type: STRING): SET[TUPLE[x, y: INTEGER]]
		local
			terrain_card: INTEGER
			cells_counter: INTEGER
			x, y: INTEGER
			avaible_cells: LINKED_SET[TUPLE[x, y: INTEGER]]
		do
			create avaible_cells.make()

			terrain_card := current_terrain_card_manager.get_card(player)

			from
				cells_counter := 0
			until
				cells_counter > 400 - 1
			loop
				if current_map.at(cells_counter).type - 96 = terrain_card and current_map.at(cells_counter).owner = void then
					y := (cells_counter / 20).floor
					x := cells_counter \\ 20

					avaible_cells.extend([x, y])
				end

				cells_counter := cells_counter + 1
			end

			result := avaible_cells
		end

	get_size(): TUPLE[width, height: INTEGER]
		do
			result := [20, 20]
		end

feature {NONE}

	load(shift_x, shift_y: INTEGER; name: STRING)
		local
			i, j: INTEGER
			x, y: INTEGER
			line: STRING
			file: PLAIN_TEXT_FILE
		do
			create file.make_open_read("dose_2012\group_19\resourses\maps\" + name + ".kgm")

			from
				i := 0
			until
				i = 10
			loop
				file.read_line()
				line := file.last_string()

				from
					j := 0
				until
					j = 10
				loop
					x := shift_x + j
					y := shift_y + i

					current_map.put([line.at(j + 1).code, void],  y * 20 + x)

					j := j + 1
				end

				i := i + 1
			end
		end

end
