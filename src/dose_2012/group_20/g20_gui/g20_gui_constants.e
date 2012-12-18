note
	description: "Constants for the Graphical User Interface of the TicTacToe game."
	author: "Christian Eslter"
	date: "$Date: 2011/09/30 13:3:13 $"
	revision: "1.0.0"

class
	G20_GUI_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access
	hex_x:INTEGER = 190
	hex_y:INTEGER = 0
	hex_top:INTEGER = 21


	tile_size: INTEGER_32 = 30
	pointer_image:EV_POINTER_STYLE

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	G20_folder: STRING = "group20"

	img_path: KL_PATHNAME
			-- Path were the images of TTT are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (G20_folder)
		end

	path_main_back: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("main_back.png")
		end


	path_board_back: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("board_back.png")
		end


	path_tile1: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile1.ico")
		end


	path_tile2: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile2.ico")
		end


	path_tile3: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile3.ico")
		end


	path_tile_selected: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_selected.ico")
		end

	path_dot1: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dot1.ico")
		end
	path_dot2: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dot2.ico")
		end
	path_dot3: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dot3.ico")
		end
	path_dot4: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dot4.ico")
		end
	path_dot5: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dot5.ico")
		end
	path_dot6: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("dot6.ico")
		end
	path_tile_ground: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_ground.ico")
		end

	path_score_pane: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("score_pane.ico")
		end
	path_board_pane: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("board_pane.ico")
		end
	path_satchel_pane: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("satchel_pane.ico")
		end
	path_turtle: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_turtle.ico")
		end


	path_star: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_star.ico")
		end


	path_mushroom: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_mushroom.ico")
		end
	path_goomba: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_goomba.ico")
		end


	path_bullet: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_bullet.ico")
		end


	path_box: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("tile_box.ico")
		end
	path_pick1: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("pick1.ico")
		end
	path_pick: KL_PATHNAME
			-- Path to "background" image
		do
			Result := img_path
			Result.append_name ("pick.png")
		end
end
