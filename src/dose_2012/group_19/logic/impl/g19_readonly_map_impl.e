class
	G19_READONLY_MAP_IMPL

inherit
	G19_READONLY_MAP

create
    make

feature{NONE}

	map : ARRAY[TUPLE[type: CHARACTER; owner: G19_PLAYER_INFO]]
	tc_manager: G19_TERRAIN_CARD_MANAGER

feature

	make(name1, name2, name3, name4 : STRING; tc_m: G19_TERRAIN_CARD_MANAGER)
		local
			i:INTEGER
		do
			create map.make_filled (void, 0, 400)

			load(00, 00, "normal")
			load(00, 10, "normal")
			load(10, 00, "normal")
			load(10, 10, "normal")
		end

	load(shift_x, shift_y: INTEGER; name: STRING)
		local
			i, j: INTEGER
			x, y: INTEGER
			line: STRING
			file: PLAIN_TEXT_FILE
		do
			create file.make_open_read ("Maps\" + name + ".kgm")

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
					x := shift_x + i
					y := shift_y + j

					map.put([line.at(j + 1), void],  y * 10 + x)

					j := j + 1
				end

				i := i + 1
			end
		end


    get_cell_at(x, y: INTEGER): TUPLE[type: CHARACTER; owner: G19_PLAYER_INFO]
    	local
    		shift_x, shift_y: INTEGER
		do
			shift_x := x - 1
			shift_y := y - 1

			result := [map.at (shift_y * 10 + shift_x).type, map.at (shift_y * 10 + shift_x).owner]
		end


	get_avaible_cells(player: G19_PLAYER_INFO; action_type: STRING): TABLE[SET[TUPLE[x: INTEGER; y: INTEGER]], STRING]
		-- i'm not sure about return format, so we should discuss this
		local
			i, j, x, y: INTEGER
			st: LINKED_SET[TUPLE[x: INTEGER; y: INTEGER]]
			table: HASH_TABLE[SET[TUPLE[x: INTEGER; y: INTEGER]], STRING]
		do
			i := tc_manager.get_card(player)
			create st.make()

			from
				j := 1
			until
				j > 400
			loop
				if map.at (j).type = i and map.at (j).owner = void then
					x ?= j / 20
					y := j \\ 20

					st.extend ([x, y])
				end
			end

			create table.make(10)
			table.put(st, "NORMAL")

			result := table
		end

	get_size(): TUPLE[width, height: INTEGER]
		do
			result := [20, 20]
		end
end
