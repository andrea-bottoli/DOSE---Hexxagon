note
	description: "Summary description for {HX_L_RESOURCE_MANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_RESOURCE_MANAGER

inherit
    KL_SHARED_FILE_SYSTEM
    		-- use KL_SHARED_FILE_SYSTEM to make file paths OS independent
        export {NONE}
            all
        end

feature -- Access

	dose_directory: STRING = "dose_2012"
	group14_directory: STRING = "group_14"
	logic_directory: STRING = "logic"
	templates_directory: STRING = "templates"

	templates_path: KL_PATHNAME
			-- Path for templates directory.
		do
			create Result.make
			Result.set_relative (TRUE)
			-- FIXME: Will it work not only in tests?
			--Result.append_name ("..")
			--Result.append_name ("..")
			--Result.append_name ("..")
			--Result.append_name ("..")
			--Result.append_name ("..")
			Result.append_name (dose_directory)
			Result.append_name (group14_directory)
			Result.append_name (logic_directory)
			Result.append_name (templates_directory)
		end

	templates: LINKED_LIST[TUPLE[STRING, STRING]]
		local
			l_directory: DIRECTORY
			l_name: STRING
			l_file_name: STRING
			l_path: KL_PATHNAME
		do
			create l_directory.make_open_read (file_system.pathname_to_string (templates_path))
			create Result.make
			from
				l_directory.readentry
			until
				l_directory.lastentry = Void
			loop
				l_file_name := l_directory.lastentry
				if (not l_file_name.is_equal (".")) and
					(not l_file_name.is_equal ("..")) then
					l_name := l_file_name.split ('.').at (1)
					l_path := templates_path
					l_path.append_name (l_file_name)
					Result.extend([l_name, file_system.pathname_to_string (l_path)])
				end
				l_directory.readentry
			end
		end

	template(a_path: STRING): ARRAY2[INTEGER]
		local
			l_file: PLAIN_TEXT_FILE
			l_width: INTEGER
			l_height: INTEGER
			i, j: INTEGER
		do
			create l_file.make_open_read (a_path)
			l_file.read_integer
			l_height := l_file.last_integer
			l_file.read_integer
			l_width := l_file.last_integer
			create Result.make_filled (-1, l_height, l_width)
			from
				i := 1
			until
				i > l_height
			loop
				from
					j := 1
				until
					j > l_width
				loop
					l_file.read_integer
					Result.put (l_file.last_integer, i, j)
					j := j + 1
				end
				i := i + 1
			end
			l_file.close
		end

	template_by_name(a_name: STRING): ARRAY2[INTEGER]
		local
			l_name: STRING
			l_path: STRING
		do
			across templates as l_pair loop
				-- FIXME: Do normal type cast.
				l_name := l_pair.item.item (1).out
				l_path := l_pair.item.item (2).out
				if a_name = l_name then
					Result := template (l_path)
				end
			end
		ensure
			non_void: Result /= Void
		end

end
