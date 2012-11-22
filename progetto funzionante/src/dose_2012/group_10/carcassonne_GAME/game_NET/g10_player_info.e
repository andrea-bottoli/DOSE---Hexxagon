note
	description: "Summary description for {G10_PLAYER_INFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_PLAYER_INFO

create
	make
feature
	make( a_port: INTEGER  an_id, an_ip :STRING)
	do

	end
feature {NONE}
	player_ip 	: STRING
	player_id 	: STRING
	player_port : INTEGER

feature
	get_player_id 	: STRING
	do

	end
	get_player_ip 	: STRING
	do

	end
	get_player_port	: INTEGER
	do

	end

feature --{specific classes}

	set_id(new_id : STRING)
	require
		id_check : new_id.is_empty
	do


	ensure
		id_set : player_id.same_string(new_id)
	end

	set_ip(new_ip : STRING)
	require
		ip_check : new_ip.is_empty
	do

	ensure
		ip_set : player_ip.same_string(new_ip)
	end
	set_port(new_port : INTEGER)
	require
		port_check: 0 < new_port OR new_port <65536
	do

	ensure
		port_set : player_port = new_port
	end
end
