note
	description: "Summary description for {HX_L_SERIALIZABLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_SERIALIZER

inherit
	ANY

create
	default_create

feature -- Methods

serialize (a_object: ANY): STRING
		-- Serialize `a_object'.
	require
		a_object_not_void: a_object /= Void
	local
		l_sed_rw: SED_MEMORY_READER_WRITER
		l_sed_ser: SED_INDEPENDENT_SERIALIZER
		l_cstring: C_STRING
		l_cnt: INTEGER
	do
		create l_sed_rw.make
		l_sed_rw.set_for_writing
		create l_sed_ser.make (l_sed_rw)
		l_sed_ser.set_root_object (a_object)
		l_sed_ser.encode
			-- the `count' gives us the number of bytes
			-- we have to read and put into the string.
		l_cnt := l_sed_rw.count
		create l_cstring.make_by_pointer_and_count (l_sed_rw.buffer.item, l_cnt)
		Result := l_cstring.substring (1, l_cnt)
	ensure
		serialize_not_void: Result /= Void
	end

deserialize (a_string: STRING): ANY
		-- Deserialize `a_string'.
	require
		a_string_not_void: a_string /= Void
	local
		l_sed_rw: SED_MEMORY_READER_WRITER
		l_sed_ser: SED_INDEPENDENT_DESERIALIZER
		l_cstring: C_STRING
	do
		create l_cstring.make (a_string)
		create l_sed_rw.make_with_buffer (l_cstring.managed_data)
		l_sed_rw.set_for_reading
		create l_sed_ser.make (l_sed_rw)
		l_sed_ser.decode (True)
		Result := l_sed_ser.last_decoded_object
	end

deserialize_from_file(path: STRING): ANY
	local
		l_file_string: STRING
	do
		l_file_string := open_file_read(path)
		Result := deserialize(l_file_string)
	end

serialize_to_file(a_path: STRING; a_object: ANY)
	local
		l_serialized_object: STRING
	do
		l_serialized_object := serialize (a_object)
		open_file_write (a_path, l_serialized_object)
	end

open_file_write(a_path, a_data: STRING)
	local
		l_file: PLAIN_TEXT_FILE
	do
		create l_file.make_open_write (a_path)
		l_file.put_string (a_data)
		l_file.close
	end

open_file_read(a_path: STRING): STRING
	local
		l_file: PLAIN_TEXT_FILE
	do
		create l_file.make (a_path)
	    -- We perform several checks until we make a real attempt to open the file.

	  	if not l_file.exists then
	    	print ("error: '" + a_path + "' does not exist%N")
	  	else
	    	if not l_file.is_readable then
	     		print ("error: '" + a_path + "' is not readable.%N")
	    	else
	      		l_file.open_read
	      		l_file.read_stream (l_file.count)
	      		Result := l_file.last_string.twin
	      		l_file.close
	      	end
	    end
	ensure
		non_void: Result /= Void
	end

end
