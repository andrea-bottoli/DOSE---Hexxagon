note
	description: "Summary description for {HX_L_IPLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IPLAYER

feature -- Access

	id: INTEGER
		-- Unique player id.
		deferred
		ensure
			two_players: Result = 1 or Result = 2
		end

	name: STRING
		-- Player name.

	is_active: BOOLEAN
		-- Is this player's turn now?
		deferred
		end

	pieces_count: INTEGER
		-- How many pieces has this player.
		deferred
		end

	is_human: BOOLEAN
end
