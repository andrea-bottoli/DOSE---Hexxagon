note
	description: "Summary description for {G3_SCORE}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_SCORE

create
	make,
	make_with_parameters

feature

	make
		do
			create team.make
			global_score := 0
			partial_score := 0
		ensure
			team /= Void
		end

	make_with_parameters ( player1: G3_PLAYER; player2: G3_PLAYER )
			-- Initialize Score whit parameters
		do
			create team.make
			team.put (player1, 0)
			team.put (player2, 0)
			global_score := 0
			partial_score := 0
		ensure
			global_score = 0
			partial_score = 0
			team /= Void
		end

feature{G3_MODEL}

	set_team(player1: G3_PLAYER; player2: G3_PLAYER)
		require
			valid_arg: player1 /= Void and player2 /= Void
		do
			team.put (player1, 0)
			team.put (player2, 1)
		end

	set_global_score(global_score_ : INTEGER)
		do
			global_score := global_score_
		end

	set_partial_score(partial_score_ : INTEGER)
		do
			partial_score := partial_score_
		end

feature
	team: TUPLE [player1,player2:G3_PLAYER]
	global_score: INTEGER
	partial_score: INTEGER

invariant
	team /= Void
end
