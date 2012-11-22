note
	description: "Summary description for {BS_NET_GAME_CONNECTION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_GAME_CONNECTION

create
	make

feature -- Constructor

	make(pmt_address: NETWORK_SOCKET_ADDRESS)
	require
		non_void: pmt_address /= void
	do
		-- TODO: Connect
	ensure
		socket_connected: socket /= void and then socket.is_connected
	end

feature -- Game messages

	send_move (move: BS_MOVE) -- No player or color id are required since the server already knows who the move is for.
		require
			move_has_been_requested: move_requested
		do
			move_requested := false;
		ensure
			move_no_longer_requested: not move_requested
		end

	send_surrender ()
		require
			move_has_been_requested: move_requested
		do
			move_requested := false;
		ensure
			move_no_longer_requested: not move_requested
		end

	send_disconnect () -- Can be sent at any time, assuming that the socket is connected
		require
			socket_connected: socket.is_connected
		do
		ensure
			socket_disconnected: not socket.is_connected
		end

feature -- Receive commands and game status updates

	read_command () : ANY -- We will define this later
	do
	end


feature {NONE}

	set_move_requested (player_id: INTEGER; color_id: integer) -- Called internally by read_command when the command is "Hey, please give me a move!"
		require
			not_requested_yet: not move_requested
		do
			move_requested := true
		ensure
			now_requested: move_requested
		end


feature {NONE} -- Locals

	move_requested: BOOLEAN
	-- The following two variables only have a meaning when move_requested = True
	move_which_player_id: INTEGER
	move_which_color_id: INTEGER

	socket: NETWORK_STREAM_SOCKET

end
