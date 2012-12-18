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
	SED_STORABLE_FACILITIES
create
	make

feature
	make(a_port_number:INTEGER;a_ip_address:STRING;a_logic:B8_LOGIC;a_soc:SED_MEDIUM_READER_WRITER;a_l_3rd_layer: B8_3RD_LAYER_WINDOW)
	do
		logic:=a_logic
		first_time:=0
		port_number:=a_port_number
		ip_address:=a_ip_address
		soc:=a_soc
		l_3rd_layer:=a_l_3rd_layer
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


					soc.set_for_reading
			 		if attached{STRING} retrieved (soc, True) as l_msg then--message retrieved from the server
			 			--io.putstring (l_msg+"%N")
			 			message:=l_msg
					end
					if message="end" then
						i:=1
						first_time:=2
						io.putstring ("Game ended")
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

			--	end

            end
           			soc.cleanup
--
			rescue
				if soc/=Void then
					soc.cleanup
				end
            --soc.close
		end

feature
	ip_address,message:STRING
	port_number:INTEGER
	soc:SED_MEDIUM_READER_WRITER
	first_time,players,id,x,y,rotate_position,color,last_played,type:INTEGER
	info:LIST[STRING]
	logic:B8_LOGIC
	game_tile:B8_GAME_TILE
	in:BOOLEAN
	l_3rd_layer: B8_3RD_LAYER_WINDOW

	set_3rd_layer(a_3rd_layer:B8_3RD_LAYER_WINDOW)
		do
			l_3rd_layer:=a_3rd_layer
		end
end
