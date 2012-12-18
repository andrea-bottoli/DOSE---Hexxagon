note
	description: "Summary description for {CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_N_CLIENT

inherit
	SOCKET_RESOURCES

create
	connect

feature

	isConnected : BOOLEAN
	gameStarted : BOOLEAN
	socket: NETWORK_STREAM_SOCKET

feature --INIT

	connect(a_IP_ADDR: STRING; a_player_name: STRING; a_port: INTEGER) --Connect
		require
				isConnected = FALSE
				a_IP_ADDR /= VOID
		do
			create socket.make_client_by_port (a_port, a_IP_ADDR)
			socket.connect
		--	socket.independent_store (a_player_name)
		--	print("PLAYERNAME IS ")
		--	print(a_player_name)
			isConnected := TRUE
			gameStarted := TRUE
			print("CONNECTED")
			ensure
				isConnected = TRUE
		end


feature -- Client actions


	send_move(a_move: STRING) -- send to other player
		require
				a_move /= VOID
				isConnected = TRUE
				gameStarted = TRUE
		do
			socket.independent_store (a_move)
		end

	receive_board(): STRING
		do
			if attached{STRING} socket.retrieved as l_msg then
				Result := l_msg
			end
		end


	receive_final_state(): TUPLE[winner_id: INTEGER; player1_pieces: INTEGER; player2_pieces: INTEGER]
		do
			if attached{TUPLE[INTEGER, INTEGER, INTEGER]} socket.retrieved as l_msg then
				Result := l_msg
			end
		ensure
			Result.winner_id = 1 or Result.winner_id = 2
			Result.player1_pieces >= 0
			Result.player2_pieces >= 0
		end

	receive_state_update():STRING
	--sends the updates of the game
	require
		socket /= Void
		do
			if attached{STRING} socket.retrieved as l_msg then
				Result := l_msg
			end

		ensure
			non_void: Result /= Void
		end

feature
	disconnect_client()
		require
			isConnected = TRUE
		do
			socket.cleanup

			isConnected := FALSE
			gameStarted := FALSE

			ensure
				isConnected = FALSE
			rescue
				if socket /= Void then
					socket.cleanup
				end
		end

		invariant
			socket /= Void
end


