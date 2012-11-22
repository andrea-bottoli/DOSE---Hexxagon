note
	description: "Summary description for {BS_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	BS_CONSTANTS

feature

	min_color : INTEGER
	once
		result := 1;
	end

	max_color : INTEGER
	once
		result := 4
	end

	color_blue : INTEGER
	once
		result := 1
	end

	color_red : INTEGER
	once
		result := 2
	end

	color_yellow : INTEGER
	once
		result := 3
	end

	color_green : INTEGER
	once
		result := 4
	end

	tile_count : INTEGER
	once
		result := 21
	end

	given_time : INTEGER
	once
		result := 60
	end

	given_ai_time : INTEGER
	once
		result := 3
	end

end
