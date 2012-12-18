note
	description: "Summary description for {RI_GUI_CONSTANTS}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GUI_CONSTANTS

	inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

	feature {NONE} -- Access

		Dose_folder: STRING = "dose_2012"
		Image_folder: STRING = "images"
		RI_folder: STRING = "group9"
		RI1_folder: STRING = "before game"

		img_path: KL_PATHNAME
			-- Path were the images of RI are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (RI_folder)
			Result.append_name (RI1_folder)
		end


		-----------------------
		-- RI_WELCOME_WINDOW --
		-----------------------

		img_bg_welcome: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("risk_welcome_1000_600.png")
		end

		img_start_d_serv_btn: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_dedicated_connect.png")
		end

		img_conn_to_serv_btn: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_server_connect.png")
		end

		img_start_d_servp_btn: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_dedicated_connect_pressed.png")
		end

		img_conn_to_servp_btn: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_server_connect_pressed.png")
		end

		img_quit_btn: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_quit.png")
		end

		img_quitp_btn: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_quit_pressed.png")
		end

		img_lobby_bg: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("risk_back_1000_600.png")
		end

		-----------------------
		-- RI_GAME_LOBBY_PIX --
		-----------------------

		img_create_gpr: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_create_game_pressed.png")
		end

		img_create_gupr: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_create_game.png")
		end

		img_join_gpr: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_join_game_pressed.png")
		end

		img_join_gupr: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_join_game.png")
		end

		img_back_pr: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_back_pressed.png")
		end

		img_back_upr: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_back.png")
		end

end
