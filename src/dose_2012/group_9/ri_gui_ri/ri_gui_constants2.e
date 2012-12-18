note
	description: "Summary description for {RI_GUI_CONSTANTS2}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GUI_CONSTANTS2

	inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

	feature {NONE} -- Access

		Dose_folder: STRING = "dose_2012"
		Image_folder: STRING = "images"
		RI_folder: STRING = "group9"
		RI1_folder: STRING = "after game"

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

		img_map: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("RiskMap__0013_1000px-Risk_game_map_fixed.png")
		end

		img_cards: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_cards.png")
		end

		img_info: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_info.png")
		end

		img_mission: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_mission.png")
		end

		img_cardsp: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_cards_pressed.png")
		end

		img_infop: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_info_pressed.png")
		end

		img_missionp: KL_PATHNAME
		do
			Result:= img_path
			Result.append_name("btn_mission_pressed.png")
		end


end
