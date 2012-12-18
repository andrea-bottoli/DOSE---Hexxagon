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

	preferences_path: KL_PATHNAME
			-- Path for highscore file.
		do
			create Result.make
			Result.set_relative (TRUE)
			Result.append_name (dose_directory)
			Result.append_name (group14_directory)
			Result.append_name (logic_directory)
		end

	board_image_path_string: STRING
		local
			l_preferences_path: KL_PATHNAME
		do
			l_preferences_path := preferences_path
			l_preferences_path.append_name ("preferences_board.txt")
			Result := file_system.pathname_to_string (l_preferences_path)
		end

	piece_p1_image_path_string: STRING
		local
			l_preferences_path: KL_PATHNAME
		do
			l_preferences_path := preferences_path
			l_preferences_path.append_name ("preferences_piece_p1.txt")
			Result := file_system.pathname_to_string (l_preferences_path)
		end

	piece_p2_image_path_string: STRING
		local
			l_preferences_path: KL_PATHNAME
		do
			l_preferences_path := preferences_path
			l_preferences_path.append_name ("preferences_piece_p2.txt")
			Result := file_system.pathname_to_string (l_preferences_path)
		end

feature
	make
		local
			l_preferences_file: PLAIN_TEXT_FILE
		do
            create l_preferences_file.make_open_read (board_image_path_string)
			l_preferences_file.readline
            board_image_path := l_preferences_file.last_string
			l_preferences_file.close

            create l_preferences_file.make_open_read (piece_p1_image_path_string)
            l_preferences_file.readline
            player1_piece_image_path := l_preferences_file.last_string
			l_preferences_file.close

            create l_preferences_file.make_open_read (piece_p2_image_path_string)
            l_preferences_file.readline
            player2_piece_image_path := l_preferences_file.last_string
            l_preferences_file.close
        end

feature -- access

	save()
		-- Saves preferences to a file.
		local
			l_preferences_file: PLAIN_TEXT_FILE
		do
            create l_preferences_file.make_open_write (board_image_path_string)
            if	board_image_path /= void then
				l_preferences_file.put_string (board_image_path)
			else
				l_preferences_file.put_string ("dose_2012/images/group14/background151.png")
			end

			l_preferences_file.close

			create l_preferences_file.make_open_write (piece_p1_image_path_string)
			if	player1_piece_image_path /= void then
				l_preferences_file.put_string (player1_piece_image_path)
			else
				l_preferences_file.put_string ("dose_2012/images/group14/cell1.png")
			end
			l_preferences_file.close

			create l_preferences_file.make_open_write (piece_p2_image_path_string)
			if	player2_piece_image_path /= void then
				l_preferences_file.put_string (player2_piece_image_path)
			else
				l_preferences_file.put_string ("dose_2012/images/group14/cell6.png")
			end
			l_preferences_file.close

		end

	set_board_image_path(path: STRING)
		do
			board_image_path := path
		end

	set_player1_piece_image_path(path: STRING)
		do
			player1_piece_image_path := path
		end

	set_player2_piece_image_path(path: STRING)
		do
			player2_piece_image_path := path
		end


end
