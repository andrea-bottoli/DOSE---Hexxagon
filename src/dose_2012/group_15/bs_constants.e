note
	description: "Summary description for {BS_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_CONSTANTS

feature -- Constants

	min_color : INTEGER = 1

	max_color : INTEGER = 4

	color_blue : INTEGER = 1

	color_red : INTEGER = 2

	color_yellow : INTEGER = 3

	color_green : INTEGER = 4

	is_valid_color (color_id: INTEGER): BOOLEAN
		do
			result := (min_color <= color_id and color_id <= max_color)
		end



	max_players: INTEGER = 4

	is_valid_player_range (player_id: INTEGER): BOOLEAN
		do
			result := (1 <= player_id and player_id <= max_players)
		end


	tile_count : INTEGER = 21

	given_time : INTEGER = 60

	given_ai_time : INTEGER = 3

	player_type_human : INTEGER = 0
	player_type_ai_easy : INTEGER = 1
	player_type_ai_medium : INTEGER = 2
	player_type_ai_difficult : INTEGER = 3

	is_valid_player_type(player_type: INTEGER) : BOOLEAN
	do
		result := (player_type = player_type_human or player_type = player_type_ai_easy or player_type = player_type_ai_medium or player_type =  player_type_ai_difficult)
	end

	protocol_error: STRING = "Protocol error"

	max_passes : INTEGER = 3

end
