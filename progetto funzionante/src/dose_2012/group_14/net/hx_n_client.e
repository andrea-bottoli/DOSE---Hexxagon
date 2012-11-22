note
	description: "Summary description for {CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_N_CLIENT

create
	connect

feature

isConnected : BOOLEAN

feature --INIT

	connect(a_IP_ADDR: STRING; a_player_name: STRING; a_port: INTEGER) --Connect
		require
				isConnected = FALSE
				a_IP_ADDR /= VOID
		do
			ensure
				isConnected = TRUE
		end

	listen()
		do

		end

feature -- Client actions

gameStarted : BOOLEAN

	send_move(a_move: STRING) -- send to other player
		require
				a_move /= VOID
				isConnected = TRUE
				gameStarted = TRUE
		do
		end

	receive_board(): STRING
		require
		do
		end


	receive_final_state(): TUPLE[winner_id: INTEGER; player1_pieces: INTEGER; player2_pieces: INTEGER]
		do
		ensure
			Result.winner_id = 1 or Result.winner_id = 2
			Result.player1_pieces >= 0
			Result.player2_pieces >= 0
		end

	receive_state_update():STRING
	--sends the updates of the game
		do
		ensure
			non_void: Result /= Void
		end

feature
	disconnect_client()
		require
			isConnected = TRUE
		do
			ensure
				isConnected = FALSE
		end
end


