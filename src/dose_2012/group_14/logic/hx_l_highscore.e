note
	description: "Summary description for {HX_L_HIGHSCORE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_HIGHSCORE

inherit
	HX_L_IHIGHSCORE
    KL_SHARED_FILE_SYSTEM
    		-- use KL_SHARED_FILE_SYSTEM to make file paths OS independent
        export {NONE}
            all
        end

feature {NONE }-- Internal

	dose_directory: STRING = "dose_2012"
	group14_directory: STRING = "group_14"
	logic_directory: STRING = "logic"
	highscore_file: STRING = "highscore.txt"

	highscore_path: KL_PATHNAME
			-- Path for highscore file.
		do
			create Result.make
			Result.set_relative (TRUE)
			Result.append_name (dose_directory)
			Result.append_name (group14_directory)
			Result.append_name (logic_directory)
			Result.append_name (highscore_file)
		end

	player_name_path: KL_PATHNAME
			-- Path for highscore file.
		do
			create Result.make
			Result.set_relative (TRUE)
			Result.append_name (dose_directory)
			Result.append_name (group14_directory)
			Result.append_name (logic_directory)
			Result.append_name ("highscore_player.txt")
		end

feature -- access

	set_high_score(new_high_score: INTEGER)
		-- Set the value of the high score
		local
			l_highscore_file: PLAIN_TEXT_FILE
		do
            create l_highscore_file.make_open_write (file_system.pathname_to_string (highscore_path))
            l_highscore_file.put_integer (new_high_score)
            l_highscore_file.close
        end

	high_score: INTEGER
		-- Get the value of the high score
		local
			l_highscore_file: PLAIN_TEXT_FILE
		do

            create l_highscore_file.make_open_read (file_system.pathname_to_string (highscore_path))

            l_highscore_file.read_integer
			Result := l_highscore_file.last_integer

            l_highscore_file.close

		end

	set_player_name(new_player_name: STRING)
		-- Set the value of the high score
		local
			l_highscore_file: PLAIN_TEXT_FILE
		do
            create l_highscore_file.make_open_write (file_system.pathname_to_string (player_name_path))
            l_highscore_file.put_string (new_player_name)
            l_highscore_file.close
        end

	player_name: STRING
		-- Get the value of the high score
		local
			l_highscore_file: PLAIN_TEXT_FILE
		do

            create l_highscore_file.make_open_read (file_system.pathname_to_string (player_name_path))

            l_highscore_file.readline
			Result := l_highscore_file.last_string

            l_highscore_file.close

		end

end
