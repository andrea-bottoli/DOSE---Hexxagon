note
	description : "Thread for the server"
	author		: "George Vardakis"
	date        : "6/12/2012"
	revision    : "0.0.1"

class
	B8_MY_THREAD_SERVER
inherit
	THREAD
		rename
			make as thread_make
		end
--	EXECUTION_ENVIRONMENT
create
	make

feature


	make(a_id,a_players:INTEGER;a_soc:  NETWORK_STREAM_SOCKET)
	do
		players:=a_players
		thread_make
		soc1:=a_soc
		id:=a_id



	end
	execute --feature called when thread is launched
	local
		l_i:INTEGER
        do


--            if attached{STRING} soc1.retrieved as l_msg then --incoming message from client
--            --	io.put_string (l_msg+" Thread "+id.out+" reporting%N")
--            end
--			message:=""
--			message.append_integer (id)
--			message:=message+" "
--			message.append_integer (players)
--            soc1.independent_store (message) --message sent to the client

            from
            	l_i:=0
            until
            	l_i=1
            loop
				sleep(1000)
--            	if attached{STRING} soc1.retrieved as l_msg then --incoming message from client
--            		message:=l_msg
--            	end

--            		info:=message.split(' ')
--					last_played:=info.at (1).to_integer
--					x:=info.at (2).to_integer
--					y:=info.at (3).to_integer
--					rotate_position:=info.at (4).to_integer
--					color:=info.at (5).to_integer
--					type:=info.at (6).to_integer
--					--create game_tile.make(color,type) Stefano: you don't have to create a new instance of the tile, the logic already has it
--					game_tile:=logic.get_game_tile (color,type)
--					in:=logic.make_a_move (last_played, x, y, game_tile)
--					message:=logic.confirm_last_move
--					message:=Void
--					info:=Void
            end
        end

feature{NONE}
	id:INTEGER --id of the thread
	soc1:  NETWORK_STREAM_SOCKET --socket which the thread manipulates
	message:STRING
	players,first_time,x,y,rotate_position,player,color,last_played,type:INTEGER
	info:LIST[STRING]
	logic:B8_LOGIC
	game_tile:B8_GAME_TILE
	in:BOOLEAN
end
