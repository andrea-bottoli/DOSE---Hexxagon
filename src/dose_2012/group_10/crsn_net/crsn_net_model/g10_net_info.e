note
	description: "Contains intel for ip, userame, port of a player...it might be needed to be merged with game logic"
	author: "John Voyatzis, Angel Kyriako"
	date: "8/12/2012"
	revision: "2.0"

class
	G10_NET_INFO
	inherit
		G10_CRSN_CONSTANTS

create
	make_lobby, make_player

feature {NONE} -- attributes
	id 			: STRING
	internal_ip : STRING
	external_ip : STRING
	port		: STRING
	random_gen	: RANDOM

feature{ANY} -- constructors

	make_lobby( an_id, int_ip, ext_ip ,a_port :STRING)
	require
		--valid_defs : (a_port>0 AND a_port<65536) AND an_id.is_empty = False AND an_ip.is_empty = False
	do
		id := an_id
		internal_ip := int_ip
		external_ip := ext_ip
		port := a_port
	ensure
		id_ok: get_id = an_id
		internal_ip_ok: get_internal_ip = int_ip
		external_ip_ok : get_external_ip = ext_ip
		port_ok : get_port = a_port
	end

	make_player
	do
		id := ""
		internal_ip := get_internal_ip_by_file
		external_ip := get_external_ip_by_http
		port := generate_random_port
	ensure
		id_ok: get_id.is_empty
		internal_ip_ok: get_internal_ip = get_internal_ip_by_file
		external_ip_ok : get_external_ip = get_external_ip_by_http
	end

feature{G10_LOBBY_USER} -- regarding ip addresses and port of the user's pc


	get_internal_ip_by_file : STRING
	local
		input 	: PLAIN_TEXT_FILE
		i 		: INTEGER
		str 	: STRING
		ok  	: BOOLEAN
	once
--		rescue

--			from  ok := false
--			until (input.is_open_read = true)
--			loop
--				create input.make_open_read ("log.txt")
--			end
--			retry

		create input.make_open_read ("log.txt")

		create str.make_from_string ("")
		create Result.make(20)

	  	 from  input.start ; input.read_line ; ok := false
	  	 until ok = true
	  	 loop
			str.append_string (input.last_string)
			if str.has_substring ("IPv4 Address") = true
			then
				ok := true
				 from  i := str.substring_index ("IPv4 Address", 1) + 36
		         until i > str.count
		         loop
		  			Result.append_character (str.at (i))
		  			i:= i + 1
		         end
			end
			str.append_string ("%N")
	        input.read_line
	      end
	     --print("internal ip found: "+Result+"%N")
	     input.close
	end

	get_external_ip_by_http : STRING
	local
     	http 	: G10_HTTP_CLIENT
		url  	: HTTP_URL
		page,ip	: STRING
		i 		: INTEGER
		got_correct : BOOLEAN
	once
		create url.make ("http://www.auditmypc.com/digital-footprint.asp")
		create http.make (url)

--	rescue
--		from  got_correct := false
--		until http.is_packet_pending = false
--		loop
			page := http.get
--		end
--		retry

		create ip.make (15)
		from
			i:=page.substring_index ("IP address ", 1) + 14
		until
			page.at (i).is_space = true
		loop
		    ip.append_character (page.at (i))
			i := i + 1
		end
		Result := ip
	end

	generate_random_port : STRING -- provides a random port (10.000-60.000)
	local
		generated_port: INTEGER
		l_time: TIME
		l_seed: INTEGER
	once
		create l_time.make_now
		create random_gen.make
		l_seed := l_time.hour

		l_seed := l_seed * 60 + l_time.minute
		l_seed := l_seed * 60 + l_time.second
		l_seed := l_seed * 1000 + l_time.milli_second

		random_gen.set_seed (l_seed)
		random_gen.forth

		generated_port :=  ((random_gen.item // 50000 ) + 10000)
		Result := generated_port.out
	end

feature{G10_LOBBY_ENTRANCE_SCREEN} -- mutators
	set_id(new_id : STRING)
	require
		id_check : new_id /= void
	do
		id := new_id
	ensure
		id_set : id.is_equal(new_id) = true
	end

	set_internal_ip(new_ip : STRING)
	require
		ip_check : new_ip /= void
	do
		internal_ip := new_ip
	ensure
		ip_set : internal_ip.is_equal(new_ip) = true
	end

	set_external_ip(new_ip : STRING)
	require
		ip_check : new_ip /= void
	do
		external_ip := new_ip
	ensure
		ip_set : external_ip.is_equal(new_ip) = true
	end

	set_port(new_port : STRING)
	require
		port_check: new_port /= void
	do
		port := new_port
	ensure
		port_set : port.is_equal(new_port) = true
	end


feature{ANY} -- accessors
	get_id 	: STRING
	do
		Result := id
	ensure
		Result = id AND Result /= void
	end

	get_internal_ip	: STRING
	do
		Result := internal_ip
	ensure
		Result /= void AND Result = internal_ip
	end

	get_external_ip	: STRING
	do
		Result := external_ip
	ensure
		Result /= void AND Result = external_ip
	end

	get_port : STRING
	do
		Result := port
	ensure
		Result /= void AND Result = port
	end

invariant
	port_always_bigger 	: (port.to_integer > 1024) AND (port.to_integer < 65536 )
	string_var_are 		: id /= "" AND internal_ip /= ""
end
