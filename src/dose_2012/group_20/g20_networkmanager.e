note
	description: "Summary description for {NETWORKMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NETWORKMANAGER

inherit
	G20_MANAGER
	redefine make, initialization, update, destroy end


create
	make

feature
	make

		do

		end

feature --{G20_CORE}
	initialization :LIST[STRING]
		do

		end

	update(move :G20_MOVEMENT)
		local
			nsocket: NETWORK_DATAGRAM_SOCKET
			player,x1,x2,y1,y2,c1,c2:INTEGER_32
			x1s, x2s, y1s, y2s :STRING
			tile : G20_TILE
			color1,color2 : G20_COLOR
			movement :STRING
			ip_request: IG_ADDRESS_REQUEST
			ip_address: STRING

		do
			create nsocket.make_targeted("255.255.255.255",9999)
			nsocket.enable_broadcast
			ip_address := ip_request.ip_address
			ip_address.remove_head (ip_address.count - 3)
			if ip_address.starts_with (".") then
				ip_address.replace_substring_all (".", "0")
			elseif ip_address.has_substring (".") then
				ip_address.replace_substring ("8", 0, 1)
			end
			io.put_string (ip_address)
			x1 := move.getfirstrow
			if x1.is_less (10) then
				x1s.append_character ('0')
				x1s := x1.to_hex_string
			end
			x2 := move.getsecondrow
			if x2.is_less (10) then
				x2s.append_character ('0')
				x2s := x2.to_hex_string
			end
			y1:= move.getfirstcolumn
			if y1.is_less (10) then
				y1s.append_character ('0')
				y1s := y1.to_hex_string
			end
			y2 := move.getsecondcolumn
			if y2.is_less (10) then
				y2s.append_character ('0')
				y2s := y2.to_hex_string
			end
			tile := move.gettile
			color1 := tile.getcolor1
			color2 := tile.getcolor2
			c1 := color1.getcolor
			c2 := color2.getcolor
			movement := ip_address + x1s +x2s + y1s +y2s +c1.to_hex_string + c2.to_hex_string
			nsocket.put_string (movement)
			nsocket.close_socket
		end

	destroy
		do

		end

feature


end
