note
	description: "Summary description for {CP_IFPLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CP_IFPLAYER

feature -- Access

	id: INTEGER
		-- player id.
		deferred
		ensure
			two_players: Result = 1 or Result = 2
		end

	name: STRING
		-- Player name.

	is_active: BOOLEAN
		-- check if this is the player who should put an insect in the hive
		deferred
		end

	number_of_pieces: INTEGER
		-- How many pieces the player still has.
		deferred
		end
end
