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
	SED_STORABLE_FACILITIES

--	EXECUTION_ENVIRONMENT
create
	make

feature


	make(a_id,a_players:INTEGER;a_soc:  SED_MEDIUM_READER_WRITER;a_l_3rd_layer: B8_3RD_LAYER_WINDOW;a_server:B8_SERVER;a_logic:B8_LOGIC)
	do
		players:=a_players
		thread_make
		soc1:=a_soc
		id:=a_id
		l_3rd_layer:=a_l_3rd_layer
		server:=a_server
		logic:=a_logic
		thread_make
	end
	execute --feature called when thread is launched
	local
		l_i:INTEGER
		i:INTEGER
        do

			soc1.set_for_reading
            if attached{STRING} retrieved (soc1, True)  as l_msg then --incoming message from client
            --	io.put_string (l_msg+" Thread "+id.out+" reporting%N")
           end
			message:=""
			message.append_integer (id)
			message:=message+" "
			message.append_integer (players)
			soc1.set_for_writing
			store (message, soc1) --message sent to the client

            from
            	l_i:=0
            until
            	l_i=1
            loop
				soc1.set_for_reading
            	if attached{STRING} retrieved (soc1, True) as l_msg then --incoming message from client
            		--io.putstring (l_msg+"%N")
            		message:=l_msg
            	end
            	if message="end" then
            		l_i:=1
            		io.putstring ("Game ended")
            	else

					from
							i:=1
						until
							i=players
						loop
							server.sockets.at (i).set_for_writing
							store (message,server.sockets.at (i))
							server.sockets.at (i).set_for_reading
							i:=i+1
						end
            		info:=message.split(' ')
					last_played:=info.at (1).to_integer
					x:=info.at (2).to_integer
					y:=info.at (3).to_integer
					rotate_position:=info.at (4).to_integer
					color:=info.at (5).to_integer
					type:=info.at (6).to_integer
					--create game_tile.make(color,type) Stefano: you don't have to create a new instance of the tile, the logic already has it
					game_tile:=logic.get_game_tile (color,type)
					in:=logic.make_a_move (last_played, x, y, game_tile)
					message:=logic.confirm_last_move
					l_3rd_layer.draw_move (type, x, y, color+1)
					message:=Void
					info:=Void
				end
            end
        end

feature
	id:INTEGER --id of the thread
	soc1:  SED_MEDIUM_READER_WRITER --socket which the thread manipulates
	message:STRING
	players,first_time,x,y,rotate_position,player,color,last_played,type:INTEGER
	info:LIST[STRING]
	logic:B8_LOGIC
	game_tile:B8_GAME_TILE
	in:BOOLEAN
	l_3rd_layer: B8_3RD_LAYER_WINDOW
	server:B8_SERVER

	set_3rd_layer(a_3rd_layer:B8_3RD_LAYER_WINDOW)
		do
			l_3rd_layer:=a_3rd_layer
		end
end
