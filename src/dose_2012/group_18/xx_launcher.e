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

	hexxagon: XX_HEXXAGON
	net: XX_NET

	launch (main_ui_window: MAIN_WINDOW)
	local
		l_choice: STRING
		l_port: INTEGER
		l_ip_address: STRING
		l_message: STRING
		l_board: XX_BOARD
		l_possible_moves: XX_POSSIBLE_MOVES
		l_player1: XX_PLAYER
		l_player2: XX_PLAYER
	do
		create l_message.make_empty
		print("Chose :%N'a' if you want the graphical interface%N's' if you want to launch the server%N'c' if you want to launch the client%N'e' if you want quit this dialogue%N")
		io.read_line
		create l_choice.make_from_string (io.last_string)
		if (l_choice.is_equal ("a")) then
			create hexxagon.make_hexxagon
			hexxagon.create_gui (hexxagon, main_ui_window)
		elseif (l_choice.is_equal ("s")) then
			print("Please insert the port on which the server will listen:%N")
			io.read_line
			l_port:=io.last_string.to_integer
			create hexxagon.make_hexxagon
			create net.make_logic (hexxagon)
			net.init_listener (l_port)
			from

			until
				l_message.is_equal ("exit")
			loop
				net.send(l_message)
				io.put_string ("Write a command to send (type 'exit' if you want to exit):%N")
				io.read_line
				l_message:=io.last_string
			end

			create l_board.make_board
			net.send_board (l_board)
			create l_possible_moves.make_possible_moves
			net.send_possible_move (l_possible_moves)
			create l_player1.make_player ("NomePlayer1", "Rubies")
			create l_player2.make_player ("NomePlayer2", "Pearls")
			net.send_game_status (l_player1, l_player2, TRUE)
			
		elseif (l_choice.is_equal ("c")) then
			print("Please insert the ip address of the server:%N")
			io.read_line
			create l_ip_address.make_from_string (io.last_string)
			print("Please insert the port on which the client will listen and send packets:%N")
			io.read_line
			l_port:=io.last_string.to_integer
			create hexxagon.make_hexxagon
			create net.make_logic (hexxagon)
			net.init_connection ("Player Name", l_ip_address, l_port)
			from

			until
				l_message.is_equal ("exit")
			loop
				net.send(l_message)
				io.put_string ("Write a command to send (type 'exit' if you want to exit):%N")
				io.read_line
				l_message:=io.last_string
			end
		end
	end
end
