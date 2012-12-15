note
	description: "Summary description for {IG_SCOREBOARD}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_SCOREBOARD

inherit
	IG_CONSTANTS

create
	make

feature {NONE} -- Initialization

	make
			-- Initialize the scoreboard.
		do
			create points.make (6)
			across hex_colors as l_cursor loop
				points.extend (0, l_cursor.item)
			end
		ensure
			has_all_colors: points.count = hex_colors.count
		end

feature -- Status Setting

	add_color_score (a_color:STRING; a_points: INTEGER)
			--Add point(s) in the color score
		require
			valid_color: is_color_valid(a_color) and a_points >= 0
		do
			if points[a_color] + a_points > 18 then
				points[a_color] := 18
			else
				points[a_color] := points[a_color] + a_points
			end
		ensure
			count_increased: points[a_color] >= old points[a_color]
			count_is_correct: points[a_color] = old points[a_color] + a_points or points[a_color] = 18
		end

	points_for_color (a_color:STRING): INTEGER
			-- The number of points for the color `a_color'.
		require
			valid_color: is_color_valid(a_color)
		do
			Result := points.item (a_color)
		end

	total_points: INTEGER
		do
			Result := points_for_color ("r").min (points_for_color ("b"))
			Result := Result.min (points_for_color ("g"))
			Result := Result.min (points_for_color ("p"))
			Result := Result.min (points_for_color ("y"))
			Result := Result.min (points_for_color ("o"))
		end

feature -- Query

	is_color_valid (a_color:STRING): BOOLEAN
				-- Return if the given color is valid.
		require
			color_not_empty: a_color /= Void and then not a_color.is_empty
		do
			Result := hex_colors.has (a_color)
		end

feature {NONE} -- Implementation

	points: HASH_TABLE[INTEGER, STRING]
			-- The number of points associated to each color.

invariant
	positive_scores: across points as l_cursor all l_cursor.item >= 0 end

end
