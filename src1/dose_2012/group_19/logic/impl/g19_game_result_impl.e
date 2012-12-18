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
		do
				current_game := game
				create current_winners.make()
				create current_scores.make (16)
				from
					i := 1
				until
					i > current_game.get_players.count
				loop
					create result_counter.make(current_game.get_map(), current_game.get_players.at (i))
					current_scores.extend(result_counter.get_score(), current_game.get_players.at (i))
					i := i + 1
				end

				from
					current_scores.start
				until
					current_scores.after
				loop
					if current_scores.item_for_iteration = get_max_points() then
						current_winners.put(current_scores.key_for_iteration)
					end
					current_scores.forth
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

			end

feature {NONE}

	get_max_points(): INTEGER
		local
			i: INTEGER
		once
			result := 0

			from
				current_scores.linear_representation.start
			until
				current_scores.linear_representation.exhausted
			loop
				if result < current_scores.linear_representation.item then
					result := current_scores.linear_representation.item
				end

				current_scores.linear_representation.forth
			end
		end

end
