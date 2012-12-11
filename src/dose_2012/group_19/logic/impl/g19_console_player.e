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
			print(">>>> " + player_info.get_nickname() + ": on_next_step()%N")
			io.read_line
		end


	on_terrain_card_recieve(game: G19_GAME; terrain_card: INTEGER)
		do
			print(">>>> " + player_info.get_nickname() + ": on_next_step()%N")
			io.read_line
		end

	on_waiting_for(game: G19_GAME; player: G19_PLAYER_INFO)
		do
			print(">>>> " + player_info.get_nickname() + ": on_next_step()%N")
			io.read_line
		end

	on_next_step(game: G19_GAME): G19_STEP
		local
			step : G19_CONSOLE_STEP
			x: INTEGER
			y: INTEGER
			step_type: STRING
		do
			print(">>>> " + player_info.get_nickname() + ": on_next_step()%N")

			print("<< x: ")
			io.read_integer_32
			x := io.last_integer_32

			print("<< y: ")
			io.read_integer_32
			y := io.last_integer_32

			print("<< type: ")
			io.read_line
			step_type := io.last_string

			create step.make(player_info, [x,y], step_type)
			result := step
			io.read_line
		end

	on_wrong_step(game: G19_GAME; wrong_step: G19_STEP): G19_STEP
		local
			step : G19_CONSOLE_STEP
			x: INTEGER
			y: INTEGER
			step_type: STRING
		do
			print(">>>> " + player_info.get_nickname() + ": wrong_step()%N")

			print("<< x: ")
			io.read_integer_32
			x := io.last_integer_32

			print("<< y: ")
			io.read_integer_32
			y := io.last_integer_32

			print("<< type: ")
			io.read_line
			step_type := io.last_string

			create step.make(player_info, [x,y], step_type)
			result := step
			io.read_line
		end

	on_step(game: G19_GAME; player: G19_PLAYER_INFO; step: G19_STEP)
		do
			print(">>>> " + player_info.get_nickname() + ": on_step()%N")
			io.read_line
		end

	on_game_end(game: G19_GAME; game_result: G19_GAME_RESULT)
		do
			print(">>>> " + player_info.get_nickname() + ": on_game_end()%N")
			io.read_line
		end

end
