note
	description: "Summary description for {G1_NET_SERVER_THREAD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

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
