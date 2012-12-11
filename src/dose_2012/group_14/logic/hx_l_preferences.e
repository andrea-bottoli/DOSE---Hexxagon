note
	description: "Summary description for {HX_L_PREFERENCES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_PREFERENCES

inherit
	HX_L_IPREFERENCES
    KL_SHARED_FILE_SYSTEM
    		-- use KL_SHARED_FILE_SYSTEM to make file paths OS independent
        export {NONE}
            all
        end

create
	make

feature {NONE }-- Internal

	dose_directory: STRING = "dose_2012"
	group14_directory: STRING = "group_14"
	logic_directory: STRING = "logic"
	preferences_file: STRING = "preferences.txt"

	preferences_path: KL_PATHNAME
			-- Path for highscore file.
		do
			create Result.make
			Result.set_relative (TRUE)
			Result.append_name (dose_directory)
			Result.append_name (group14_directory)
			Result.append_name (logic_directory)
			Result.append_name (preferences_file)
		end

feature
	make
		local
			l_preferences_file: RAW_FILE
		do
            create l_preferences_file.make_open_read (file_system.pathname_to_string (preferences_path))
			l_preferences_file.readline
            board_image_path := l_preferences_file.last_string

            l_preferences_file.readline
            player1_piece_image_path := l_preferences_file.last_string

            l_preferences_file.readline
            player2_piece_image_path := l_preferences_file.last_string

            l_preferences_file.readline
            empty_place_image_path := l_preferences_file.last_string

            l_preferences_file.close
        end

feature -- access

	save()
		-- Saves preferences to a file.
		local
			l_preferences_file: RAW_FILE
		do
            create l_preferences_file.make_open_write (file_system.pathname_to_string (preferences_path))
			l_preferences_file.wipe_out

			l_preferences_file.put_string (board_image_path)
			l_preferences_file.put_new_line

			l_preferences_file.put_string (player1_piece_image_path)
			l_preferences_file.put_new_line

			l_preferences_file.put_string (player2_piece_image_path)
			l_preferences_file.put_new_line

			l_preferences_file.put_string (empty_place_image_path)
			l_preferences_file.put_new_line

			l_preferences_file.close
		end



end
