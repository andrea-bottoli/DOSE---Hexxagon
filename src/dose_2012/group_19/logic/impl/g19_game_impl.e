class
	G19_GAME_IMPL

inherit
	G19_GAME

create
	make

feature{NONE}

	current_players: TWO_WAY_SORTED_SET[G19_PLAYER]
	current_infos: TWO_WAY_SORTED_SET[G19_PLAYER_INFO]

	current_map: G19_MAP_IMPL
	current_terrain_card_manager: G19_TERRAIN_CARD_MANAGER

	current_step_checker: G19_STEP_CHECKER_IMPL

	current_avaible_actions_count: ARRAY[INTEGER]

feature{G19_GAME_BUILDER}

	make(players: TWO_WAY_SORTED_SET[G19_PLAYER])
		local
			pos: INTEGER
		do
			current_players := players

			create current_infos.make()

			from
				pos := 1
			until
				pos > current_players.count
			loop
				current_infos.extend(current_players.at(pos).get_info())

				pos := pos + 1
			end

			create current_terrain_card_manager.make()
			create current_map.make("map1", "map2", "map3", "map4", current_terrain_card_manager)

			create current_step_checker.make()
			create current_avaible_actions_count.make_filled(18 -- todo 20
			, 1, current_players.count)


		end

feature

	start()
		local
			end_of_game: BOOLEAN
			last_step: G19_STEP
			i, changes_count, actions_counter: INTEGER
			game_result: G19_GAME_RESULT_IMPL
			current_winners: SET[G19_PLAYER_INFO]
		do
			emit_on_game_start(current)
			emit_on_terrain_card_recieve(current, current_terrain_card_manager)

			from
				end_of_game := false
			until
				end_of_game
			loop
				end_of_game := true
				from
					i := 1
				until
					i > current_players.count
				loop
					if current_avaible_actions_count.at(i) > 0 then
						end_of_game := false
						emit_on_waiting_for(current, current_players.at(i).get_info())

						from
							last_step := current_players.at(i).on_next_step(current)
						until
							current_step_checker.is_step_valid(Current, last_step)
						loop
							last_step := current_players.at(i).on_wrong_step(current, last_step)
						end
						current_map.apply (last_step)

						--
						update_avaible_actions_count (last_step, i)
						emit_on_step(current, current_players.at(i).get_info(), last_step)
					end

					i := i + 1
				end
			end
			create game_result.make(current)
			emit_on_game_end(current, game_result)

			current_winners := game_result.get_winners()
			io.put_string ("Winners: %N")

			from
				current_winners.linear_representation.start()
			until
				current_winners.linear_representation.after()
			loop
				io.put_character ('%T')
				io.put_string (current_winners.linear_representation.item_for_iteration.get_nickname())
				io.put_character ('%N')
				current_winners.linear_representation.forth()
			end

		end

	get_avaible_actions_count(player: G19_PLAYER_INFO): TABLE[INTEGER, STRING]
		local
			table: HASH_TABLE[INTEGER, STRING]
		do
			create table.make(4)
			table.put(current_avaible_actions_count.at(current_infos.index_of(player, 1)), "NORMAL")
			result := table
		end

	get_players(): TWO_WAY_SORTED_SET[G19_PLAYER_INFO]
		do
			result := current_infos
		end

	get_map(): G19_READONLY_MAP
		do
			result := current_map
		end

feature{NONE}

	update_avaible_actions_count(last_step: G19_STEP; player: INTEGER)
		local
			actions_counter, old_value: INTEGER
		do
			from
				actions_counter := 1
			until
				actions_counter > last_step.get_actions.count
			loop
				old_value := current_avaible_actions_count.at(player) - 1
				current_avaible_actions_count.put(old_value, player)

				actions_counter := actions_counter + 1
			end
		end

	emit_on_game_start(game: G19_GAME)
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > current_players.count
			loop
				current_players.at(i).on_game_start(game)

				i := i + 1
			end
		end

	emit_on_terrain_card_recieve(game: G19_GAME; terrain_card_manager: G19_TERRAIN_CARD_MANAGER)
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > current_players.count
			loop
				terrain_card_manager.next_card(current_players.at(i).get_info())
				current_players.at(i).on_terrain_card_recieve(game, terrain_card_manager.get_card(current_players.at(i).get_info()))

				i := i + 1
			end
		end

	emit_on_waiting_for(game: G19_GAME; player: G19_PLAYER_INFO)
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > current_players.count
			loop
				if not player.is_equal(current_players.at(i).get_info()) then
					current_players.at(i).on_waiting_for(game, player)
				end

				i := i + 1
			end
		end

	emit_on_step(game: G19_GAME; player: G19_PLAYER_INFO; step: G19_STEP)
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > current_players.count
			loop
				if not player.is_equal(current_players.at(i).get_info()) then
					current_players.at(i).on_step(game, player, step)
				end

				i := i + 1
			end
		end

	emit_on_game_end(game: G19_GAME; game_result: G19_GAME_RESULT)
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > current_players.count
			loop
				current_players.at(i).on_game_end(game, game_result)

				i := i + 1
			end
		end

end
