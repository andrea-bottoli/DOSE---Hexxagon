note
	description : "Root class of client and server"
	author		: "George Vardakis"
	date        : "6/12/2012"
	revision    : "0.0.1"

class
	B8_GAME_MODE --the class which describes both the server and the client
create
	make
feature
	make(a_ip:STRING;a_port,a_mode,a_players:INTEGER;a_logic:B8_LOGIC)
		do
			logic:=a_logic
			if(a_mode=0) then
				create server.make_server(a_players,a_port,logic)
				mode:=0
			else
				create client.make_client(a_ip,a_port,logic)
				mode:=1
			end
		end
feature
	server:B8_SERVER
	client:B8_CLIENT
	mode:INTEGER
	logic:B8_LOGIC
end
