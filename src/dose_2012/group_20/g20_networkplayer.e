note
	description: "Summary description for {NETWORKPLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NETWORKPLAYER

inherit
	G20_PLAYER
	redefine move, invalid_move end

feature
	move(currentPlayer: INTEGER) : G20_MOVEMENT
		local
			move : G20_MOVEMENT
			tile : G20_TILE
			color1,color2 :G20_COLOR
			nsocket: NETWORK_DATAGRAM_SOCKET
			player,x1,x2,y1,y2,c1,c2:INTEGER_32
			x :BOOLEAN
			movement :STRING
		do
			create nsocket.make_targeted("255.255.255.255",9999)
			nsocket.enable_broadcast
			from
				x:=TRUE
			until
				x /= FALSE
			loop
				nsocket.read_stream(14)
				movement.wipe_out
				movement := nsocket.last_string
				nsocket.close_socket
				player := movement.substring(0,2).to_integer
				x1 := movement.substring(3,4).to_integer
				x2 := movement.substring(5,6).to_integer
				y1 := movement.substring(7,8).to_integer
				y2 := movement.substring(9,10).to_integer
				c1 := movement.substring(11,12).to_integer
				c2 := movement.substring(13,14).to_integer
				if player.is_equal(currentPlayer) then
					create color1.make
					create color2.make
					color1.setColor:=c1
					color2.setColor:=c2
					create tile.make(color1, color2)
					create movement.makeByTileAndCoords(tile, x1,x2,y1,y2)
					Result := movement

					x := FALSE

				end


			end
		end

	invalid_move
		do

		end

end
