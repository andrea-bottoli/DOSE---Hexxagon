note
	description: "Server starter class. This class start the server in a separate thread to not have problem with network interaction"
	author: "MILANO7: Jiang Wu"
	date: "$16/12/2012$"
	revision: "$2.0$"

class
	G1_NET_SERVER_STARTER
inherit
	THREAD

create
	make_server

feature {NONE}
	server_game: G1_NET_SERVER_SINGLE

feature {ANY}

	make_server(match_name:STRING)
	do
		make
		create server_game.make(match_name)
	end

	execute
	do
		server_game.start_server
	end

	get_server_game: G1_NET_SERVER_SINGLE
	do
		Result:= server_game
	end
end
