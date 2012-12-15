note
	description: "Summary description for {GR11_COSTANTS}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "1.0"

class
	GR11_CONSTANTS

inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	src_folder:STRING = "src"
	Dose_folder: STRING = "dose_2012"
	gr11_folder: STRING = "group_11"
	logic_folder: STRING = "gr11_file"

file_path: KL_PATHNAME
		-- Path where the files are stored
	local
		l_path : EXECUTION_ENVIRONMENT
		l_tokens : LIST[STRING]
		l_index : INTEGER
	do
		create Result.make
		create l_path
		Result.set_relative (True)
		Result.append_name ("/")

		from
			l_tokens := l_path.current_working_directory.split ('/')
			l_index := 1
		until
			l_tokens[l_index].is_equal (src_folder)
		loop
			if
				not l_tokens[l_index].is_empty
			then
				Result.append_name (l_tokens[l_index])
			end
			l_index := l_index + 1
		end

		Result.append_name (src_folder)
		Result.append_name (Dose_folder)
		Result.append_name (gr11_folder)
		Result.append_name (logic_folder)
	end

board_path : KL_PATHNAME
		-- Path where the board.txt is stored
	do
		Result := file_path
		Result.append_name("board.txt")
	end

end
