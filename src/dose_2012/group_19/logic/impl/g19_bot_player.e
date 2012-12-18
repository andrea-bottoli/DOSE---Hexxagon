class
	G19_BOT_PLAYER

inherit
	G19_PLAYER

create
	make

feature
	player_info: G19_CONSOLE_PLAYER_INFO
	player_bot: G19_RANDOM_BOT

feature
	make()
		do
			print("[WARNING]: This randomized bot has developed by Odessa1 team as debug tools.%N")
			print("[WARNING]: It should be replaced by true bot.%N")
			print("[WARNING]: If you see it, it means that ITMO1 haven't done their tasks.%N")

			create player_info.make()
			create player_bot.make(player_info)
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
		do
			print(">>>> " + player_info.get_nickname() + " on_next_step()%N")
			result := player_bot.decide_next_step(game)
		end

	on_wrong_step(game: G19_GAME; wrong_step: G19_STEP): G19_STEP
		do
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
end
