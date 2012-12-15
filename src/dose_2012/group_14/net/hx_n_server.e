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
	serverStarted: BOOLEAN
	gameStarted: BOOLEAN
	socket: NETWORK_STREAM_SOCKET

feature -- Init
	server_create(a_port: INTEGER)
		require
				serverStarted = FALSE
		do
			create socket.make_server_by_port (a_port)
			socket.listen (1)
			socket.accept

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
		--	socket.independent_store ("Winner id :")
		--	socket.independent_store (a_winner_id)
		--	socket.independent_store ("Player 1 pieces: ")
		--	socket.independent_store (a_player1_pieces)
		--	socket.independent_store ("Player 2 pieces: ")
		--	socket.independent_store (a_player2_pieces)
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

			ensure
				gameStarted = FALSE
				serverStarted = FALSE
			rescue
				if socket /= Void then
					socket.cleanup
				end
		end
end
