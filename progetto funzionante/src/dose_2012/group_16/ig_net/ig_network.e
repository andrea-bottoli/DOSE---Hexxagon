note
	description: "[
					An object that handles the communication between different machines
					playing an instance of the Ingenious game.
					]"
	author: "Emanuele Rudel, Florian Besser"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_NETWORK

create
	make_with_players,
	make_with_address

feature {NONE} -- Initialization

	make_with_players (a_players_count: INTEGER)
			-- Initialize the network component to accept the
			-- number of players given by `a_players_count'.
		require
			valid_players_count: a_players_count > 0 and a_players_count <= 3
		do

		end


	make_with_address (a_address: STRING)
			-- Initialize the network component to connect
			-- to the given address.
		require
			address_not_empty: a_address /= Void and then not a_address.is_empty
		do

		end

feature -- Access

	connected_players: LIST[IG_PLAYER]
			-- The list of players currently connected to `Current'.
		do
		ensure
			Result /= Void
		end

	send_move(a_move: IG_MOVE)
			-- If in Master mode, send a move executed by a player on this machine to all connected players.
			-- If in Slave mode, send a move executed by a player on this machine to the one in Master mode.
		do
		end

	disconnect
			-- Disconnect the players currently playing on this machine. If one of the players is
			-- in Master mode, then the game is interrupted.
		do

		end

feature {IG_PLAYER} -- Player Query

	receive_move (a_player: IG_PLAYER): IG_MOVE
			-- Ask for the next move of `a_player' who is in a remote machine
		require
			is_connected_player: connected_players.has(a_player)
		do

		ensure
			Result /= Void
		end

feature -- Event Handling

	hosted_player_actions: ACTION_SEQUENCE[TUPLE[IG_PLAYER]]
			-- The list of subscribers notified when a player connected to this machine.

	user_connected_actions: ACTION_SEQUENCE[TUPLE[]]
			-- The list of subscribers notified when the user player connected to a remote machine.

	failed_connection_actions: ACTION_SEQUENCE[TUPLE[]]
			-- The list of subscribers notified when the connection of the user player to a remote
			-- machine was not successful.

	disconnected_player_actions: ACTION_SEQUENCE[TUPLE[IG_PLAYER]]
			-- The list of subscribers notified when a user disconnected from the game.

invariant

	hosted_actions_initialized: hosted_player_actions /= Void
	user_connected_actions_initialized: user_connected_actions /= Void
	failed_connection_actions_initialized: failed_connection_actions /= Void
	disconnected_player_actions_initialized: disconnected_player_actions /= Void

end
