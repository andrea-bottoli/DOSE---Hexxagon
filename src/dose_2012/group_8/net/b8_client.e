note
	description : "Game client"
	author		: "George Vardakis"
	date        : "6/12/2012"
	revision    : "0.0.1"

class
	B8_CLIENT --the class which creates the thread of the client

inherit
	SED_STORABLE_FACILITIES
--	SOCKET_RESOURCES
--	STORABLE
--	THREAD_CONTROL
--	B8_GAME_MODE
create
	make_client

feature


	make_client(a_ip_address:STRING;a_port_number:INTEGER;a_logic:B8_LOGIC;l_3rd_layer: B8_3RD_LAYER_WINDOW)


		local
			message:STRING
			players,id:INTEGER
			info:LIST[STRING]
			-- Run application.
		do
					logic:=a_logic
					ip_address:=a_ip_address
					port_number:=a_port_number
					create soc.make_client_by_port(port_number,ip_address)
					soc.connect
					create l_medium.make (soc)

					l_medium.set_for_writing
					store ("This is the client", l_medium)--message sent to the server
					l_medium.set_for_reading

			 		if attached{STRING} retrieved (l_medium, True) as l_msg then--message retrieved from the server
			 			--io.putstring (l_msg)
			 			message:=l_msg
					end
						info:=message.split(' ')
						id:=info.at (1).to_integer
						players:=info.at (2).to_integer
						logic.set_player_id (id)

						if players=4 then
					      	logic.set_game_mode (0)
					    else
					      	logic.set_game_mode (1)
					    end

						logic.start_game

					create thread.make(port_number,ip_address,logic,l_medium,l_3rd_layer)
					thread.launch
			end
	send_message(mesg:STRING)
		do
			l_medium.set_for_writing
			store (mesg, l_medium)
		end

feature
	ip_address:STRING
	port_number:INTEGER
	thread:B8_MY_THREAD_CLIENT
	logic:B8_LOGIC
	soc:NETWORK_STREAM_SOCKET
	l_medium: SED_MEDIUM_READER_WRITER
end
