note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_AI_TEST_SET

inherit

	EQA_TEST_SET

inherit {NONE}

	BS_CONSTANTS
		undefine
			copy, default_create
		end

feature -- Test routines

	bs_ai_single_testset
		local
			player: BS_AI_PLAYER
			i: INTEGER
			j: INTEGER
			move: BS_MOVE
			board: BS_BOARD
			start_time: DATE_TIME
			end_time: DATE_TIME
		do
			from
				i := 0
			until
				i > 3 -- Testing with all valid difficulty levels
			loop
				create board.make ()
				create player.make_ai (i, 1)
				from
					j := 1
				until
					j > 21
				loop
					create start_time.make_now ()
					move := player.do_move (board)
					create end_time.make_now ()
					assert ("Time limit not exceeded.", (end_time.time_duration.seconds_count - start_time.time_duration.seconds_count) <= given_ai_time)
					assert ("At any level of difficulty, an AI player playing alone should always be able to make a move.", move /= void)
					board.insert_player_tile (1, move)
					assert ("Every AI move is valid.", board.last_insertion_result = 0)
						-- Please note that the last test also tests the requirement that the first move of an AI player must
						-- have a block in a corner of the game board. If it wasn't so, the move wouldn't be valid at all.
				end
				assert ("Skill level has not changed", player.get_difficulty = i)
			end
		end

	bs_ai_multi_testset
		local
			players: ARRAY [BS_AI_PLAYER]
			player_passed: ARRAY [BOOLEAN]
			this_player: BS_AI_PLAYER
			i: INTEGER
			j: INTEGER
			k: INTEGER
			move: BS_MOVE
			board: BS_BOARD
			start_time: DATE_TIME
			end_time: DATE_TIME
		do
			from
				i := 0
			until
				i > 3 -- Testing with all valid difficulty levels
			loop
				create board.make ()
				create players.make_filled (void, 1, 4)
				create player_passed.make_filled (false, 1, 4)
				from
					k := 1 -- Player ID
				until
					k > 4
				loop
					create this_player.make_ai (i, k)
					players.at (k) := this_player
				end
				from
					j := 1
				until
					j > 21
				loop
					from
						k := 1 -- Player ID
					until
						k > 4
					loop
						create start_time.make_now ()
						move := players.at (k).do_move (board)
						create end_time.make_now ()
						assert ("Time limit not exceeded.", (end_time.time_duration.seconds_count - start_time.time_duration.seconds_count) <= given_ai_time)
						assert ("If the player has already passed a move (that is, no possible move), he should not be able to move again.", (player_passed.at (k) implies move = void))
						if move = void then
							player_passed.at (k) := true
						else
							board.insert_player_tile (1, move)
							assert ("Every AI move is valid.", board.last_insertion_result = 0)
								-- Please note that the last test also tests the requirement that the first move of an AI player must
								-- have a block in a corner of the game board. If it wasn't so, the move wouldn't be valid at all.
						end
						assert ("Skill level has not changed", players.at(k).get_difficulty = i)
					end
				end
			end
		end

end
