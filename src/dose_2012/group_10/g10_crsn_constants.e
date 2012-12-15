note
	description: "Summary description for {G10_CRSN_CONSTANTS}."
	author: "Angel Kyriako"
	date: "$Date$"
	revision: "$Revision$"

class
	G10_CRSN_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {ANY} --common for both gui and lobby

	-- text
	crsn_game_title: STRING = "Carcassonne Game"
	crsn_lobby_title: STRING = "Carcassonne Lobby"
	quit_Message: STRING = "Are you sure you want to return to the main window ?"

	-- folders
	dose_folder: STRING = "dose_2012"
	group10_folder: STRING = "group_10"
	image_folder: STRING = "images"
	crsn_folder: STRING = "carcassonne"

	-- paths of crsn images folder	
	img_path: KL_PATHNAME
	do
		create Result.make
		Result.set_relative (True)
		Result.append_name (dose_folder)
		Result.append_name (image_folder)
		Result.append_name (crsn_folder)
	end

	-- path of group10 folder
	group_10_path: KL_PATHNAME
	do
		create Result.make
		Result.set_relative (True)
		Result.append_name (dose_folder)
		Result.append_name (group10_folder)
	end

	ipconfig_script_path: KL_PATHNAME -- path of ip config script
	do
		Result := group_10_path
		Result.append_name ("ipconf.bat")
	end

	ip_config_log_path: KL_PATHNAME -- path of log.txt
	do
		Result := group_10_path
		Result.append_name ("log.txt")
	end

	-- regarding screen
	screen_height: INTEGER
			-- Returns the screen heigt
		once
			Result := (create {EV_SCREEN}).height
		end
	screen_width: INTEGER
			-- Returns the screen width
		once
			Result := (create {EV_SCREEN}).width
		end

	-- height/width sizes
	distance_between_components : INTEGER = 5

end
