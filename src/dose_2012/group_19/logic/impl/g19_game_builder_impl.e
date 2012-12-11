class
	G19_GAME_BUILDER_IMPL

inherit
	G19_GAME_BUILDER

create
	make

feature{NONE}

	current_players: TWO_WAY_SORTED_SET[G19_PLAYER]

feature

	make()
		local
			players: TWO_WAY_SORTED_SET[G19_PLAYER]
		do
			create players.make()

			current_players := players
		end

	add_player(player: G19_PLAYER): INTEGER
		do
			current_players.extend(player)

			result := 4 - current_players.count
		end

	remove_player(player: G19_PLAYER): INTEGER
		do
			current_players.prune(player)

			result := 4 - current_players.count
		end

	build(): G19_GAME
		local
			game: G19_GAME_IMPL
		do
			create game.make(current_players)

			result := game
		end

end
