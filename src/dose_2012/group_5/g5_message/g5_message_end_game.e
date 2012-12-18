note
	description: "[
					The class G5_MESSAGE_END_GAME inherits from G5_MESSSAGE.
					It will be used between network components to state
					that the current game is finished and which is the 
					result of the game.
					]"
	author: "Luca Falsina"
	date: "03.12.2012"
	revision: "0.1"

class
	G5_MESSAGE_END_GAME

inherit
	G5_MESSAGE

create
	make

feature -- Status Report

	score_table: HASH_TABLE[INTEGER, STRING]
		-- This table will contains the amount of points that every player obtained
		-- at the end of a Dominion Game. Points can retrieved by using players'name.

feature -- Initialization

	make(a_source: STRING; some_targets: ARRAY [STRING]; an_action: STRING; a_score_table: HASH_TABLE[INTEGER, STRING])
			-- Initialization for Current
		require

			not_void_table: a_score_table /= void

			correct_table_count: a_score_table.count >= 2 and a_score_table.count <= 4

			accepted_actions_for_end_message:	an_action.is_equal ("end")

			server_is_source:	a_source.is_equal ("SERVER")

			target_is_not_server:
				some_targets.for_all (agent (target: STRING): BOOLEAN do Result := (not(target.is_equal ("SERVER"))) end)

		do

			source := a_source
			targets := some_targets
			action := an_action
			score_table := a_score_table

		ensure

			all_targets_are_kept:
				targets.count = some_targets.count and
				some_targets /= void implies
				some_targets.for_all (agent (player_name: STRING): BOOLEAN do Result := (targets.has(player_name)) end)

			attributes_equal_to_arguments:
				source = a_source
				action = an_action
				score_table = a_score_table

		end

end
