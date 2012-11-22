note
	description: "Summary presentation of the class {G5_MESSAGE_THIEF}, which manages the actions related to the Kingdom Card Thief."
	author: "Riccardo Binetti"
	date: "14.11.2012"
	revision: "1.3"

class
	G5_MESSAGE_THIEF

inherit
	G5_MESSAGE

create
	make

feature -- Status Report

	thief_table: HASH_TABLE[ARRAY[STRING],STRING]
			-- This table contains all the players (identified by their name as the key)
			-- and the array of their cards affected by the thief card.

feature {ANY} -- Initialization

	make(a_source: STRING; some_targets: ARRAY [STRING]; an_action: STRING; a_thief_table: HASH_TABLE[ARRAY[STRING], STRING])
			-- Initialization for Current.
		require

			not_void_table: a_thief_table /= void

			accepted_action_for_thief_message:
				an_action.is_equal ("update_thief_trash") xor an_action.is_equal ("update_thief_gain") xor
				an_action.is_equal ("trashed_by_thief") xor an_action.is_equal ("gained_by_thief")
		do
		ensure

			attributes_equal_to_arguments:
				source = a_source
				targets = some_targets
				action = an_action
				thief_table = a_thief_table
		end

end
