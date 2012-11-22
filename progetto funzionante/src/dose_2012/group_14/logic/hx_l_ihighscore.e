note
	description: "Summary description for {HX_L_IHIGHSCORE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IHIGHSCORE

feature -- Access

	save()
		-- Saves highscores to a file.
		deferred
		end

	high_score: INTEGER
		-- The value of the high score.

	set_high_score(new_high_score: INTEGER)
		-- Set the value of the high score
		require
			is_higher_than_old: new_high_score <= high_score
		deferred

		ensure
			new_high_score_set: high_score = new_high_score
		end

end
