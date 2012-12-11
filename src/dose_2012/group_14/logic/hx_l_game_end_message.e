note
	description: "Summary description for {HX_L_GAME_END_MESSAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_GAME_END_MESSAGE

inherit
	HX_L_IGAME_END_MESSAGE

create
	make

feature -- Access

	make(a_winner_id, a_player1_pieces, a_player2_pieces: INTEGER)
		do
			winner_id := a_winner_id
			player1_pieces := a_player1_pieces
			player2_pieces := a_player2_pieces
		end

	serialized(): STRING
		-- Serialized game end message.
		do
			-- TODO: Implement.
		end

	deserialize(state: STRING)
		-- Initializes game end message from serialized state.
		do
			-- TODO: Implement.
		end

end
