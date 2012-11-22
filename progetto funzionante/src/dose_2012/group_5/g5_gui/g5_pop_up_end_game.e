note
	description: "This class will display the pop-up that cointains the final scores of the game."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_END_GAME

create
	make

feature

	make(the_scores: HASH_TABLE[INTEGER, STRING])
		-- The constructor of the class
		require
			valid_arg: the_scores /= void
		do
			final_Scores:= the_scores
		end

feature -- Variables

	final_scores: HASH_TABLE[INTEGER, STRING]
		-- The list of players with their names and their final scores

end
