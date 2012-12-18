note
	description: "Constants for the Graphical User Interface of the TicTacToe game."
	author: "Christian Eslter"
	date: "$Date: 2011/09/30 13:3:13 $"
	revision: "1.0.0"

class
	TTT_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	TTT_folder: STRING = "tictactoe"

	img_path: KL_PATHNAME
			-- Path were the images of TTT are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (TTT_folder)
		end

	img_background: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("background.png")
		end

	img_background_sepia: KL_PATHNAME
			-- Path to "background_sepia" image
		do
			Result := img_path
			Result.append_name ("background_sepia.png")
		end

	img_wait: KL_PATHNAME
			-- Path to "wait" image
		do
			Result := img_path
			Result.append_name ("text_wait.png")
		end

	img_move: KL_PATHNAME
			-- Path to "move" image
		do
			Result := img_path
			Result.append_name ("text_move.png")
		end

	img_win: KL_PATHNAME
			-- Path to "win" image
		do
			Result := img_path
			Result.append_name ("text_win.png")
		end

	img_lose: KL_PATHNAME
			-- Path to "lose" image
		do
			Result := img_path
			Result.append_name ("text_lose.png")
		end

	img_tie: KL_PATHNAME
			-- Path to "tie" image
		do
			Result := img_path
			Result.append_name ("text_tie.png")
		end

	img_tile_prefix: KL_PATHNAME
			-- Path to prefix for the tile pictures
		do
			Result := img_path
			Result.append_name ("tile_")
		end

			-- The postfixes for the different tiles
	Img_bender_postfix: STRING = "_bender.png"
	Img_fry_postfix: STRING = "_fry.png"
	Img_blank_postfix: STRING = "_blank.png"
	Img_highlight_postfix: STRING = "_highlight.png"

	Window_title: STRING = "TicTacToe"
			-- Title of the main window

	Quit_dialog_message: STRING = "Do you really want to close?"
			-- Message for the quit dialog box

end -- class TTT_GUI_CONSTANTS
