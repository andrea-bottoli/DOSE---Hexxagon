note
	description: "Blokus GUI Constants"
	author: "Dimitris Deyannis"
	date: "3/12/2012"
	revision: "0.0.1"

class
	B8_GUI_CONST

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	Blokus_folder: STRING = "group8"

	img_path: KL_PATHNAME
			-- Path were the images of Blokus are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Blokus_folder)
		end

-- Path of 1st layer background
	img_1st_layer: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("1st_layer_back.png")
	end

-- Path of 2nd layer client background
	img_2nd_layer_client: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("2nd_layer_client_back.png")
	end

-- Path of 2nd layer server background
	img_2nd_layer_server: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("2nd_layer_server_back.png")
	end

-- Path name of 3rd layer bot tile area background
	img_3rd_layer_bot: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("3rd_layer_bot_back.png")
	end

-- Path of 4rth layer background
	img_4rth_layer: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("4rth_layer_back.png")
	end

-- Path of connection error background
	img_connection_error: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("connection_error.png")
	end

-- Path of full room background
	img_full_room: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("full_room.png")
	end

-- Path of blokus board
	img_blokus_board: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("blokus_board.png")
	end

-- Path of Join image
	img_join: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("join.png")
	end

-- Path of Join image on pointer enter
	img_join_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("join_enter.png")
	end

-- Path of Create image
	img_create: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("create.png")
	end

-- Path of Create image on pointer enter
	img_create_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("create_enter.png")
	end

-- Path of Next image
	img_next: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("next.png")
	end

-- Path of Next image on pointer enter
	img_next_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("next_enter.png")
	end

-- Path of Back image
	img_back: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("back.png")
	end

-- Path of Back image on pointer enter
	img_back_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("back_enter.png")
	end

-- Path of Play Again image
	img_play_again: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("play_again.png")
	end

-- Path of Play Again image on pointer enter
	img_play_again_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("play_again_enter.png")
	end

-- Path of Exit image
	img_exit: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("exit.png")
	end

-- Path of Exit image on pointer enter
	img_exit_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("exit_enter.png")
	end

-- Path of Rotate Left image
	img_rotate_left: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("rotate_left.png")
	end

-- Path of Rotate Left image on pointer enter
	img_rotate_left_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("rotate_left_enter.png")
	end

-- Path of Rotate Right image
	img_rotate_right: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("rotate_right.png")
	end

-- Path of Rotate Right image on poiner enter
	img_rotate_right_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("rotate_right_enter.png")
	end

-- Path of Undo button image
	img_undo: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("undo.png")
	end

-- Path of Undo button image on pointer enter
	img_undo_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("undo_enter.png")
	end

-- Path of Ready button image
	img_ready: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("ready.png")
	end

-- Path of Ready button image on pointer enter
	img_ready_enter: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("ready_enter.png")
	end

-- Path of Blokus logo image
	img_blokus_logo: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("blokus_logo.png")
	end

-- Path to red monomino
	img_red_monomino: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("red_monomino.png")
	end

-- Path to yellow monomino
	img_yellow_monomino: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("yellow_monomino.png")
	end

-- Path to green monomino
	img_green_monomino: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("green_monomino.png")
	end

-- Path to blue monomino
	img_blue_monomino: KL_PATHNAME
	do
		Result := img_path
		Result.append_name("blue_monomino.png")
	end

end
