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

	end

	make_with_parameters ( team_: TUPLE [player1,player2 : G3_PLAYER];score_:INTEGER)
			-- Initialize Score whit parameters
		require

		do
		ensure
			score = score_
			team = team_
		end

feature
	team: TUPLE [player1,player2:G3_PLAYER]
	score: INTEGER

end
