note
	description: "NET Interface"
	authors: "George Vardakis, Vangelis Theodorakis, Dimitris Deyannis"
	date: "11/11/2012"
	revision: "0.1"

class
	B8_NET

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			
		end

feature -- Methods for the Net sub-component

	create_server(a_ip, a_port : INTEGER)
			-- Creates a game server.
		do

		ensure
			a_ip /= 0
			a_port /= 0

		end

	connect_to_server(a_ip, a_port: INTEGER)
			-- Connects a Client to the Server.
		do

		ensure
			a_ip /= 0
			a_port /= 0

		end

	retrieve_ip()
			-- Retrieves the player's IP address.	
		local
			l_players_ip : INTEGER

		do

		end

	inform_for_connection_error()
			--informs the player through a popup for a connection error
		local
			l_error_code: INTEGER

		do

		end

	information_sent(a_x, a_y, a_player: INTEGER)
			--information the NET needs to send to the other players
		do

		ensure
			a_player>-1
			a_x>-1
			a_y>-1

		end

	broadcast_message(a_msg, a_ip, a_port: INTEGER)
			-- Broadcasts a message via the server to all players.
		do

		ensure
			a_msg /= 0
			a_ip /= 0
			a_port /= 0
		end

	disconnect()
			-- Disconnects the user in case of network failure,or when the game ends.
		do

		end

	close_server()
			-- Disconnects the server and clears the socket.
		do

		end

	get_hosts()
			--gets the ips of the hosts
		do

		end

	host_a_new_game(a_ip, a_port: INTEGER)
			-- Stores the info of a new host so that the clients can connect.
		do

		ensure
			a_ip /= 0
			a_port /= 0
		end
end
