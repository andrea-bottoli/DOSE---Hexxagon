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

--	listen()
--		do

--		end

feature -- server action
	send_board(a_serialized_board: STRING)
		require
		do
		end

	send_final_state(a_winner_id: INTEGER; a_player1_pieces: INTEGER; a_player2_pieces: INTEGER)
		require
			a_winner_id = 1 or a_winner_id = 2
			a_player1_pieces > 0
			a_player2_pieces > 0
		do
		ensure
		end

	send_state_update(a_state: STRING)
	--sends the updates of the game
		require
			non_void: a_state /= Void
		do
		end

	receive_move(): STRING
		do

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
		end
end
