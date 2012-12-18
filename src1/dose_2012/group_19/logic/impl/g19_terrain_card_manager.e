class
	G19_TERRAIN_CARD_MANAGER

create
	make

feature{NONE}

	current_cards: ARRAY[TUPLE[player: G19_PLAYER_INFO; card: INTEGER]]
	current_random_sequence: RANDOM

feature

	make
		local
			i: INTEGER
			time: TIME
		do
			create time.make_now

			create current_cards.make_filled([void, -1], 1, 4)
			create current_random_sequence.set_seed(time.milli_second)
		end

	next_card(player: G19_PLAYER_INFO)
		local
			random_value: INTEGER
			player_index: INTEGER
		do
			current_random_sequence.forth()
			random_value := (current_random_sequence.item \\ 4) + 1
			player_index := find_player(player)
			current_cards.put([current_cards.at(player_index).player, random_value], player_index)
		end

	get_card(player: G19_PLAYER_INFO): INTEGER
		do
			result := current_cards.at(find_player(player)).card
		end

feature{NONE}

	find_player(player: G19_PLAYER_INFO): INTEGER
		local
			i: INTEGER
		do
			result := -1

			from
				i := 1
			until
				i = 5 or result /= -1
			loop
				if player = current_cards.at(i).player then
					result := i
				end

				i := i + 1
			end

			if result = -1 then
				from
					i := 1
				until
					i = 5 or result /= -1
				loop
					if current_cards.at(i).player = void then
						current_cards.put([player, -1], i)
						result := i
					end

					i := i + 1
				end
			end
		end

end
