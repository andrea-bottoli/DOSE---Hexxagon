note
	description : "Thread for the client"
	author		: "George Vardakis"
	date        : "6/12/2012"
	revision    : "0.0.1"

class
	B8_MY_THREAD_CLIENT --the class for the thread of the client
inherit
	THREAD
		rename
			make as thread_make
		end
create
	make

feature
	make(a_port_number:INTEGER;a_ip_address:STRING;a_logic:B8_LOGIC;a_soc:NETWORK_STREAM_SOCKET)
	do
		logic:=a_logic
		first_time:=0
		port_number:=a_port_number
		ip_address:=a_ip_address
		soc:=a_soc
		thread_make

	end
	execute
		local
			i:INTEGER
		do
	--		create soc.make_client_by_port(port_number,ip_address)--the ip in this prototype is hardcoded-must change depending on the server
			--soc.is
	--		soc.connect
	--		soc.independent_store ("This is a test")--message sent to the server
			from
				i:=0
			until
				i=1
			loop
				sleep(1000)



--			 		if attached{STRING} soc.retrieved as l_msg then--message retrieved from the server
--			 			--io.putstring (l_msg)
--			 			message:=l_msg
--					end
--					if message="end" then
--						i:=1
--						first_time:=2
--					end
--					if first_time=0 then

--						info:=message.split(' ')
--						id:=info.at (1).to_integer
--						players:=info.at (2).to_integer
--						logic.set_player_id (id)

--						if players=4 then
--					      	logic.set_game_mode (0)
--					    else
--					      	logic.set_game_mode (1)
--					    end

--						logic.start_game
--						first_time:=first_time+1
--					else if first_time=1 then
--						info:=message.split(' ')
--						last_played:=info.at (1).to_integer
--						x:=info.at (2).to_integer
--						y:=info.at (3).to_integer
--						rotate_position:=info.at (4).to_integer
--						color:=info.at (5).to_integer
--						type:=info.at (6).to_integer
--						--create game_tile.make(color,type) Stefano: you don't have to create a new instance of the tile, the logic already has it
--						game_tile:=logic.get_game_tile (color,type)
--						in:=logic.make_a_move (last_played, x, y, game_tile)
--						message:=logic.confirm_last_move
--					end
--					message:=Void
--					info:=Void

--					end
            end
            			--soc.cleanup

--			rescue
--				if soc/=Void then
--					soc.cleanup
--				end
--            soc.close
		end

feature
	ip_address,message:STRING
	port_number:INTEGER
	soc:NETWORK_STREAM_SOCKET
	first_time,players,id,x,y,rotate_position,color,last_played,type:INTEGER
	info:LIST[STRING]
	logic:B8_LOGIC
	game_tile:B8_GAME_TILE
	in:BOOLEAN
end
