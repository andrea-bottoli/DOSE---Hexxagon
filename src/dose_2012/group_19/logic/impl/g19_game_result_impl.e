class
	G19_GAME_RESULT_IMPL

inherit
	G19_GAME_RESULT

create
	make

feature{NONE}
	current_winners: LINKED_SET[G19_PLAYER_INFO]
	current_scores: HASH_TABLE[INTEGER, G19_PLAYER_INFO]
	current_game: G19_GAME

feature
	make(game: G19_GAME)
		local
			player: G19_PLAYER_INFO
			result_counter: G19_RESULT_COUNTER
			i: INTEGER
			max_points: INTEGER
		do
				current_game := game
				create current_winners.make()
				create current_scores.make (16)
				max_points := 0
				from
					i := 1
				until
					i > current_game.get_players.count
				loop
					create result_counter.make(current_game.get_map(), current_game.get_players.at (i))
					current_scores.extend(result_counter.get_score(), current_game.get_players.at (i))
					if max_points < result_counter.get_score() then
						max_points := result_counter.get_score()
					end
					i := i + 1
				end

				from
					i := 1
				until
					i > current_game.get_players.count
				loop
					if current_scores.item (current_game.get_players.at (i)) = max_points then
						current_winners.extend (current_game.get_players.at (i))
					end
					i := i + 1
				end


		end

		get_winners(): SET[G19_PLAYER_INFO]
			do
				result := current_winners
			end

		get_scores(): TABLE[INTEGER, G19_PLAYER_INFO]
			do
				result := current_scores
			end

		get_game(): G19_GAME
			do
				result := current_game
			end

end
