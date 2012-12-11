note
	description: "Interface to the game preferences. #595"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_L_IPREFERENCES

feature -- Access

	save()
		-- Saves preferences to a file.
		deferred
		end

	board_image_path: STRING
		-- Path to a board image. #596

	player1_piece_image_path: STRING
		-- Path to a player1 piece image. #597

	player2_piece_image_path: STRING
		-- Path to a player2 piece image. #598

	empty_place_image_path: STRING
		-- Path to a empty place image. #599

end
