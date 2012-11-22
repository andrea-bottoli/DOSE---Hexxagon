note
	description: "Summary description for {G3_MODEL}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$0.1$"

class
	G3_MODEL

inherit
	G3_ABSTRACT_SUBJECT

create
	make

feature {NONE}

	make
		do
			-- make_subject
		end


feature

	turn : G3_PLAYER_ID
			-- Retrieve a id of the player that has to play.
		do
		ensure
			Result /= Void
		end

	team_info ( team_id : INTEGER ) :  TUPLE [player1, player2: STRING; score_global, score_partial: INTEGER]
			-- Retrieve a copy of the score of the game.
		do
		ensure
			Result /= Void
		end

	get_player (id : G3_PLAYER_ID) : G3_PLAYER
		-- Retrieve a player associated to an id.
		require
			valid_arg: id /= Void
		do

		ensure
			Result /= Void
		end

	do_a_move(move: G3_COMBINATION)
			-- Modifies the model with a new move.
		require
			valid_arg: move /= Void and move.is_valid = True
		do

		end

	shuffle : LIST[LIST[G3_CARD]]
		-- Gives the cards a shuffle.
	do
	ensure
		valid_result: Result /= Void
	end

feature {NONE}

	table : G3_TABLE

	score : G3_SCORE

	players : LINKED_LIST [G3_PLAYER]

	game_over: BOOLEAN
		-- Is the game over?

	-- winner_info : G3_TEAM
			-- Retrieves the winner team.
	--	require
	--		game_over
	--	do
	--	end



feature {None}

	is_valid_id(id: G3_PLAYER_ID): BOOLEAN
			-- Verifies if the id is valid (it's one of the player IDs of the game).
		require
			valid_arg: id /= Void
		do
		ensure
			Result = True or Result = False
		end

invariant
	correct_attributes: table /= Void and score /= Void and players /= Void
	valid_turn: is_valid_id(turn)
end
