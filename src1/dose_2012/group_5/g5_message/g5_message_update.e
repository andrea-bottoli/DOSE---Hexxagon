note
	description: "Summary presentation of the class {G5_MESSAGE_UPDATE}, which manages the actions update_state and update_supply_state."
	author: "Riccardo Binetti"
	date: "14.11.2012"
	revison: "1.3"

class
	G5_MESSAGE_UPDATE

inherit
	G5_MESSAGE

create
	make

feature -- Status Report

	game_state: HASH_TABLE[INTEGER, STRING]
	-- This table contains all data needed to update the state of a player such as
	-- his/her number of coins, of possible actions, of cards that can be bought,
	-- of cards in the deck and of cards in the hand.

	supply_state: HASH_TABLE[INTEGER, STRING]
	-- This table contains all the IDs of the cards contained in the Supply with the
	-- correspondent quantity, which is still available to be bought.

feature {ANY} -- Initialization

	make(a_source: STRING; some_targets: ARRAY [STRING]; an_action: STRING;
			a_game_state: HASH_TABLE[INTEGER, STRING]; a_supply_state: HASH_TABLE[INTEGER, STRING])
			-- Initialization for Current.
		require

			accepted_action_for_update_message:
				an_action.is_equal ("update_state") xor an_action.is_equal ("update_supply")

			mutual_exclusion_game_and_supply_1:
				an_action.is_equal ("update_state") implies
				(a_game_state /= void and a_supply_state = void)

			mutual_exclusion_game_and_supply_2:
				an_action.is_equal ("update_supply") implies
				(a_game_state = void and a_supply_state /= void)

		do

			source := a_source
			targets := some_targets
			action := an_action

			-- Here depending from the action only one of the two attributes will be set "VOID"
			if action.is_equal ("update_state") then
				game_state := a_game_state
				supply_state := void
			elseif action.is_equal ("update_supply") then
				supply_state := a_supply_state
				game_state := void
			end

		ensure

			all_targets_are_kept:
				targets.count = some_targets.count and
				some_targets /= void implies
				some_targets.for_all (agent (player_name: STRING): BOOLEAN do Result := (targets.has(player_name)) end)

			attributes_equal_to_arguments:
				source = a_source
				action = an_action
				game_state = a_game_state
				supply_state = a_supply_state

		end

end
