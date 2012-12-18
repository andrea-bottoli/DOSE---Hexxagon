note
	description: "Launcher for the Hexxagon main window."
	author: "Milano2"
	date: "3/12/2012"
	revision: "1.0"

class
	XX_LAUNCHER

inherit
	LAUNCHER
	XX_NET

feature -- Implementation

	hexx: XX_HEXXAGON

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
--		#########MILANO2 STUFF
			l_net: XX_NET
			co,port_temp,port,number:INTEGER
			ip_temp,ip,txt,choice,message: STRING
			board:XX_BOARD
--		#########CRETE2 STUFF
			i,j:INTEGER
			t:TUPLE
		do
			io.put_string("Type:%Na to launch the GUI%N'client' to try the client%N'server' if you try the server%N")
		 	io.read_line
		 	choice:=io.last_string

			create hexx.make_hexxagon
		--########################## MAIN GAME
		 	if (choice.is_equal ("a") or choice.is_equal ("A")) then

				hexx.create_gui (hexx, main_ui_window)

		--########################### CLIENT
			elseif (choice.is_equal ("c") or choice.is_equal ("client") or choice.is_equal ("CLIENT")) then
				io.put_string ("Choose ip server%N")
				io.read_line
				create ip.make_from_string (io.last_string)
				io.put_string ("Choose port server%N")
				io.read_integer
				port:=io.last_integer
				create l_net.make_logic(hexx)
				l_net.init_connection("pippo",ip, port)

				io.put_string ("Write a command to send: ")
				io.read_line
				message:=io.last_string

				from
--					message:=""
				until
					message.is_equal ("exit")
				loop
					l_net.send(message)
					io.put_string ("Write a command to send: ")
					io.read_line
					message:=io.last_string
				end

		--########################### SERVER
			 elseif (choice.is_equal ("s") or choice.is_equal ("S") or choice.is_equal ("server")) then

			 		io.put_string ("Choose port listener%N")
					io.read_integer
					port:=io.last_integer
			 		create l_net.make_logic(hexx)
			 		l_net.init_listener (port)

					io.put_string ("Write a command to send: ")
					io.read_line
					message:=io.last_string

			 		from
--						message:=""
					until
						message.is_equal ("exit")
					loop
						l_net.send(message)
						io.put_string ("Write a command to send: ")
						io.read_line
						message:=io.last_string
					end

		--########################### vavouris testing part	 		
			 elseif (choice.is_equal ("v1") or choice.is_equal ("V1")) then
					create board.make_board
					from i:=0
					until i>=58
					loop

						t:=board.get_cell_clonep (i)
						io.put_string ("%N Tuple "+i.out+" contents are: %N[")
						from j:=(t.count)
						until	j<=0
						loop
							io.put_string (t.integer_32_item (j).out+" ")
							j:=j-1
						end
						io.put_string ("]")
						i:=i+1
					end

			 end --if initial
		 end--do

end--class
