note
	description: "Interface to game end message."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IGAME_END_MESSAGE

feature -- Access

	winner_id: INTEGER
		-- Id of the player, who won.
	player1_pieces: INTEGER
		-- How many pieces has first player.
	player2_pieces: INTEGER
		-- How many pieces has second player.

	serialized(): STRING
		-- Serialized game end message.
		deferred
		ensure
			non_void: Result /= Void
		end

	deserialize(state: STRING)
		-- Initializes game end message from serialized state.
		require
			non_void: state /= Void
		deferred
		end

end
