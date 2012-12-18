class
	G19_CONSOLE_PLAYER

inherit
	G19_PLAYER

create
	make

feature{NONE}

	player_info: G19_CONSOLE_PLAYER_INFO

feature
	make()
		do
			create player_info.make()
		end

	get_info(): G19_PLAYER_INFO
		do
			result := player_info
		end

	on_game_start(game: G19_GAME)
		do
			print(">>>> " + player_info.get_nickname() + ": on_game_start()%N")
		end


	on_terrain_card_recieve(game: G19_GAME; terrain_card: INTEGER)
		do
			print(">>>> " + player_info.get_nickname() + ": on_terrain_card_recieve(")
			io.put_integer(terrain_card)
			print(")%N")
		end

	on_waiting_for(game: G19_GAME; player: G19_PLAYER_INFO)
		do
			print(">>>> " + player_info.get_nickname() + ": on_waiting_for(" + player.get_nickname() + ")%N")
		end

	on_next_step(game: G19_GAME): G19_STEP
		local
			step : G19_CONSOLE_STEP
			x: INTEGER
			y: INTEGER
			step_type: STRING
			temp: BOOLEAN
		do
			print(">>>> " + player_info.get_nickname() + ": on_next_step()%N")

			print(">>>> map:%N")
			print_map(game.get_map())

			temp := game.get_map.get_avaible_cells (player_info, "NORMAL").linear_representation.for_all(agent print_cell)

			print("<< x: ")
			io.read_integer_32
			x := io.last_integer_32

			print("<< y: ")
			io.read_integer_32
			y := io.last_integer_32

--			print("<< type: ")
--			io.read_line
			step_type := "NORMAL"

			create step.make(player_info, [x,y], step_type)
			result := step
		end

	on_wrong_step(game: G19_GAME; wrong_step: G19_STEP): G19_STEP
		local
			step : G19_CONSOLE_STEP
			x: INTEGER
			y: INTEGER
			step_type: STRING
			temp: BOOLEAN
		do
			print(">>>> " + player_info.get_nickname() + ": on_wrong_step()%N")

			print(">>>> map:%N")
			print_map(game.get_map())

			temp := game.get_map.get_avaible_cells (player_info, "NORMAL").linear_representation.for_all(agent print_cell)
			print("<< x: ")
			io.read_integer_32
			x := io.last_integer_32
			print("<< y: ")
			io.read_integer_32
			y := io.last_integer_32

		--	print("<< type: ")
		--	io.read_line
			step_type := "NORMAL"

			create step.make(player_info, [x,y], step_type)
			result := step
		end

	on_step(game: G19_GAME; player: G19_PLAYER_INFO; step: G19_STEP)
		do
			print(">>>> " + player_info.get_nickname() + ": on_step(" + player.get_nickname() + ")%N")
		end

	on_game_end(game: G19_GAME; game_result: G19_GAME_RESULT)
		do
			print(">>>> " + player_info.get_nickname() + ": on_game_end()%N")
			print(game_result.get_scores().item(player_info))
			print("%N")
		end

feature{NONE}

	print_map(map: G19_READONLY_MAP)
		local
			x, y: INTEGER
		do
			from
				y := 1
			until
				y > 20
			loop
				io.put_integer (y)
				io.put_character ('%T')
				if y \\ 2 = 0 then
					io.put_character(' ')
				end

				from
					x := 1
				until
					x > 20
				loop
					io.put_character(cell_to_char(map.get_cell_at(x, y).type))
					io.put_character(' ')

					x := x + 1
				end

				io.put_character('%N')
				y := y + 1
			end
		end

	cell_to_char(code: INTEGER): CHARACTER
		do
			inspect code
			when 97 then  -- a
				result := 'w'
			when 98 then  -- b
				result := 'v'
			when 99 then  -- c
				result := ':'
			when 100 then -- d
				result := '_'
			when 101 then -- e
				result := '|'
			when 102 then -- f
				result := '#'
			when 103 then -- g
				result := '~'
			when 104 then -- h
				result := '^'
			when 105 then -- i
				result := '&'
			when 106 then -- j
				result := '&'
			when 107 then -- k
				result := '&'
			when 108 then -- l
				result := '&'
			when 109 then -- m
				result := '&'
			when 110 then -- n
				result := '&'
			when 111 then -- o
				result := '&'
			when 112 then -- p
				result := '&'
			end
		end

		print_cell(cell: TUPLE[x,y: INTEGER]):BOOLEAN
			do
				io.put_integer (cell.x)
				print(": ")
				io.put_integer (cell.y)
				print("%N")
				result := true
			end

end
