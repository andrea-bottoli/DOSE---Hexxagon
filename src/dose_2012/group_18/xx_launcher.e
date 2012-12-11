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
			l_net: XX_NET
			co,port,number:INTEGER
			ip,ip2,txt,choice: STRING --Ip to check
			message: XX_NET_MESSAGE
			board:XX_BOARD
			i,j:INTEGER	--vavouris added this
			t:TUPLE		--vavouris added this
		do

			ip2:= "127.0.0.1"
			port:= 4321

			io.put_string("Type:%Na to launch the GUI%Nb to launch an ip test%Nc for send a STRING%Nd for send an OBJECT%Ne for send a BOARD%Ns for launch the server%N")
		 	io.read_line
		 	choice:=io.last_string

		 	if (choice.is_equal ("a") or choice.is_equal ("A")) then
		 		create hexx.make_hexxagon
				hexx.create_gui (hexx, main_ui_window)
		 	elseif (choice.is_equal ("b") or choice.is_equal ("B")) then --test Ip parser
				 from
				 	co:=0
				 until
				 	co>100
				 loop
				 	io.put_string("Give me an ip to check%N")
				 	io.read_line
				 	ip:= io.last_string
					if(is_ip_valid (ip)) then
						io.put_string ("%NIp "+ip+" is CORRECT%N%N")
					else
						io.put_string ("%NIp "+ip+" is NOT CORRECT%N%N")
					end --if
					co:=co+1
				 end
--#####################################################
elseif (choice.is_equal ("NET") or choice.is_equal ("net")) then --testNET

				 create l_net.make
				 	io.put_string("Give me an ip to check%N")
				 	io.read_line
				 	ip:= io.last_string
					if(is_ip_valid (ip)) then
						io.put_string ("%NIp "+ip+" is CORRECT%N%N")
					else
						io.put_string ("%NIp "+ip+" is NOT CORRECT%N%N")
					end --if
					co:=co+1


		--########################### CLIENT string
			 elseif (choice.is_equal ("c") or choice.is_equal ("C")) then
					init_connection (ip2, port)
			 	from
				 	co:=0
				until
				 	co>50
				loop
					print("%NTell me a string: ")
					io.read_line
					txt:=io.last_string
					send(txt)
				 	co:=co+1
				 end

		--########################### client object	
			elseif (choice.is_equal ("d") or choice.is_equal ("D")) then
				init_connection (ip2, port)
			 	from
				 	co:=0
				until
				 	co>50
				loop
						print("%NTell me your name ")
					 	io.read_line
					 	txt:=io.last_string
					 	io.put_string("%NTell me now a number: ")
					 	io.read_integer
					 	number:= io.last_integer
					 	create message.make(txt,number)
						send(message)
						co:=co+1
				 end--LOOP character co

--##################send board test
				elseif (choice.is_equal ("e") or choice.is_equal ("E")) then
					init_connection (ip2, port)
					from
						co:=0
					until
						co>50
					loop
						create board.make_board
						send(board)
						co:=co+1
					end--LOOP character co
		--########################### SERVER PART
			 elseif (choice.is_equal ("s") or choice.is_equal ("S") or choice.is_equal ("server")) then
			 		init_connection(ip2,port)
			 		init_listener (4321)

			 		close_connection --When he's not listening, he must stops
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
