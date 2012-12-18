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

	set_board_image_path(path: STRING)
		deferred
		end

	player1_piece_image_path: STRING
		-- Path to a player1 piece image. #597

	set_player1_piece_image_path(path: STRING)
		deferred
		end

	player2_piece_image_path: STRING
		-- Path to a player2 piece image. #598

	set_player2_piece_image_path(path: STRING)
		deferred
		end

end
