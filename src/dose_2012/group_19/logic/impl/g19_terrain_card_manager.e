class
	G19_TERRAIN_CARD_MANAGER

create
	make

feature{NONE}

	deck: ARRAY[INTEGER]
	current_cards: ARRAY[TUPLE[player: G19_PLAYER_INFO; card: INTEGER]]
	rand: RANDOM

feature

	make
		local
			i: INTEGER
		do
			create deck.make(1, 5)
			create current_cards.make(1, 4)
			create rand.make
			from
				i := 1
			until
				i = 6
			loop
				deck.item(i) := 5
				i := i+1
			end
		end

	find_player(player: G19_PLAYER_INFO): INTEGER
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i = 5
			loop
				if player = current_cards.item (i).player then
					Result := i
					--break
				end
			end

			from
				i := 1
			until
				i = 5
			loop
				if current_cards.item (i).player = void then
					current_cards.item (i).player := player
					Result := i

				end
			end

		end

	next_card(player: G19_PLAYER_INFO)
		local
			i, j: INTEGER
		do
			from
				i := rand.next_random (4) + 1
			until
				i /= 0
			loop

			end

			deck.item (i) := deck.item (i) - 1
			j := find_player (player)
			current_cards.item(j).card :=  i
		end

	get_card(player: G19_PLAYER_INFO): INTEGER
		local
			i:INTEGER
		do
			i := find_player (player)
			Result := current_cards.item(i).card
		end

end
