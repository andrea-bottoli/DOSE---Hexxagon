note
	description: "Contains intel for ip, userame, port of a player...it might be needed to be merged with game logic"
	author: "John Voyatzis, Angel Kyriako"
	date: "8/12/2012"
	revision: "2.0"

class
	G10_NET_PLAYER_INFO

create
	dflt_make, make

feature {NONE} -- attributes
	player_ip 	: STRING
	player_id 	: STRING
	player_port : STRING

feature{ANY} -- constructors

	dflt_make
	do
		player_ip := ""
		player_id := ""
		player_port := ""

	end

	make( a_port,an_ip, an_id :STRING)
	require
		--valid_defs : (a_port>0 AND a_port<65536) AND an_id.is_empty = False AND an_ip.is_empty = False
	do
		player_port := a_port
		player_ip := an_ip
		player_id := an_id
	ensure
		port_ok : get_port = a_port
		ip_ok: get_ip = an_ip
		id_ok: get_id = an_id
	end

feature{G10_LOBBY_ENTRANCE_SCREEN} -- mutators
	set_id(new_id : STRING)
	require
		id_check : new_id /= void
	do
		player_id := new_id
	ensure
		id_set : player_id.same_string(new_id)
	end

	set_ip(new_ip : STRING)
	require
		ip_check : new_ip /= void
	do
		player_ip := new_ip
	ensure
		ip_set : player_ip.same_string(new_ip)
	end

	set_port(new_port : STRING)
	require
		port_check: new_port /= void
	do
		player_port := new_port
	ensure
		port_set : player_port.same_string(new_port)
	end


feature{ANY} -- accessors
	get_id 	: STRING
	do
		Result := player_id
	ensure
		Result = player_id AND Result /= void
	end

	get_ip	: STRING
	do
		Result := player_ip
	ensure
		Result /= void AND Result = player_ip
	end

	get_port	: STRING
	do
		Result := player_port
	ensure
		Result /= void AND Result = player_port
	end

end
