note
	description: "Summary description for {SERVER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_N_SERVER
inherit
	SOCKET_RESOURCES
create
	server_create

feature -- attributes
	serverStarted: 	BOOLEAN
	gameStarted:	BOOLEAN
	server_socket: 	NETWORK_STREAM_SOCKET
	socket: 		NETWORK_STREAM_SOCKET

feature -- Init
	server_create(a_port: INTEGER)
		require
				serverStarted = FALSE
		do
			create server_socket.make_server_by_port (a_port)
			server_socket.listen (1)
			server_socket.accept
			socket := server_socket.accepted
			print("Server created")
			serverStarted := TRUE
			gameStarted := TRUE

			ensure
				serverStarted = TRUE
		end


feature -- server action
	send_board(a_serialized_board: STRING)
		require
			socket /= Void
		do
			socket.independent_store (a_serialized_board)
		end

	send_final_state(a_winner_id: INTEGER; a_player1_pieces: INTEGER; a_player2_pieces: INTEGER)

	require
			a_winner_id = 1 or a_winner_id = 2
			a_player1_pieces > 0
			a_player2_pieces > 0
	local
		server_tuple : TUPLE[INTEGER, INTEGER, INTEGER]
	do
			server_tuple := [a_winner_id, a_player1_pieces, a_player2_pieces]
			socket.independent_store (server_tuple)

	ensure
			socket /= Void
	end

	send_state_update(a_state: STRING)
	--sends the updates of the game
		require
			non_void: a_state /= Void
		do
			socket.independent_store (a_state)
		end

	receive_move(): STRING
	do
		socket.set_timeout (3600)
		if attached{STRING} socket.retrieved as l_msg then
			Result := l_msg
		end
	end

feature
	close_server
		require
			serverStarted = TRUE
		do
			socket.cleanup
			gameStarted := FALSE
			serverStarted :=FALSE

			ensure
				gameStarted = FALSE
				serverStarted = FALSE
			rescue
				if socket /= Void then
					socket.cleanup
				end
		end

	invariant
		socket /= Void
end
