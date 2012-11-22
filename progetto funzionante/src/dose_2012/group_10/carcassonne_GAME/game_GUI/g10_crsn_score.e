note
	description: "Summary description for {G10_CRSN_SCORE}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_SCORE
inherit
	EV_LABEL

create
	make

-- attributes
feature {NONE}
	-- background_color , height , width (inherited)
	score_number_display : STRING


-- costructors.
feature {ANY}
	make()
	do
	end

-- accesor methods.
feature {G10_CRSN_PLAYER_INFO , G10_CRSN_GAME_MAIN}
	get_background_color() : EV_COLORIZABLE -- routine returns the color of this object's background color attribute
	do
		ensure
			background_color_not_mutated : background_color = old background_color
	end

	get_score_number_display() : INTEGER -- routine returns the score attribute of this object
	do
		ensure
			score_not_mutated : score_number_display.to_integer_8 = old score_number_display.to_integer_8
	end

-- mutator methods.
feature {G10_CRSN_PLAYER_INFO}
	update_score(num : INTEGER) -- routine ipdates the score attribute of this object to num
	require
	--	valid_arg : num /= void
	do
		ensure
			valid_mutation : num = score_number_display.to_integer_8
			valid_attribute : score_number_display /= void and score_number_display.to_integer_8 >= 0
	end

-- class invariants.
invariant
	valid_attributes : score_number_display /= void and score_number_display.to_integer_8 >= 0

end
