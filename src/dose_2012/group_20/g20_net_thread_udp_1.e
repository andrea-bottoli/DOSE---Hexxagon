note
	description: "Summary description for {G20_NET_THREAD_UDP_1}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_NET_THREAD_UDP_1

inherit
	THREAD
	rename make as thread_make end

create
	--default_create
	make

feature


	player_number : INTEGER

	make (players: INTEGER)
		do
			thread_make
			player_number := players
		end



	execute
			-- define the deferred feature from THREAD.

		do

		end

	read_op : ARRAY [STRING_8]
		local
			flag: BOOLEAN
			ip_request: IG_ADDRESS_REQUEST
			ip_request1: IG_ADDRESS_REQUEST
			ip_address, tmp: STRING
			socket_in: NETWORK_DATAGRAM_SOCKET
			socket_out: NETWORK_DATAGRAM_SOCKET
			x,y,count: INTEGER_32
			opp: ARRAY [STRING_8]
			remote_ip_address: STRING_8
		do
			create opp.make_filled ("", 0, player_number)
			create ip_request
			create ip_request1
			ip_address := ip_request.ip_address

			tmp := ip_request1.ip_address
			io.put_string (ip_address)
            io.put_new_line
            ip_address.append_string ("SSSSSSSSS")
            ip_address.keep_head (16)
			create socket_out.make_targeted("255.255.255.255", 6666)
            socket_out.enable_broadcast
            socket_out.put_string (ip_address)

			create socket_in.make_bound (6666)
			socket_in.enable_broadcast

			from
				count := 0
			until
				count >= (player_number)
			loop
			--	socket_out.put_string (ip_address)
				io.put_string ("First loop ")
				io.put_integer (count)
				io.put_string ("%N")
				socket_in.read_stream (16)
				remote_ip_address := socket_in.last_string
				--io.put_string(remote_ip_address+ "%N")
				remote_ip_address.prune_all ('S')

				from
					x :=0
				until
					x >= (count )
				loop
					io.put_string ("Second Loop ")
					io.put_integer (x)
					if ( opp[x].is_equal (remote_ip_address)) then
						io.put_string ("%N")
						flag := TRUE

					end
					x := x + 1
				end
				io.put_string (tmp + "%N")
				io.put_string (remote_ip_address + "%N")

				io.put_boolean (not (remote_ip_address.is_equal (tmp)))
				if ((flag = FALSE) and (not (remote_ip_address.is_equal (tmp)))) then
					socket_out.put_string (ip_address)
					io.put_string ("Mpike Stin if %N")
					opp[count].copy  ( remote_ip_address)
					remote_ip_address.wipe_out
					Io.put_string (opp[count])
					Io.put_new_line
					count := count +1
					io.put_string ("End of IF%N")
				end
				--socket_out.put_string (ip_address)
				flag := FALSE

			--		socket_out.put_string (ip_address)


			end
			io.put_string("teleiose%N")
			--Io.put_string (opp[0])
		--	Io.put_string (opp[1])
			Result := opp
		end

end -- class G20_NET_THREAD_UDP_1

