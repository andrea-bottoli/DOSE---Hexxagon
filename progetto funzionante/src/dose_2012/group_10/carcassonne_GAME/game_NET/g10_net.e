note
	description: "Summary description for {G10_SERVER}."
	author: "John Voyatzis"
	date: "8/11/2012"
	revision: "0.0"

class
	G10_NET

inherit

    SOCKET_RESOURCES
	THREAD_CONTROL
    STORABLE

create
	make
feature
	make
			-- Run application.
		do
		end


feature --{G10_HOST}

	-- generics
	list_of_players: ARRAYED_LIST[G10_PLAYER_INFO] --max = 6

	-- other
	available_slots: INTEGER -- = 6

	create_server
			-- Run application.
		do
			list_of_players.make (6)

		end

feature --{G10_HOST}

	get_connected_players	: ARRAYED_LIST[STRING]
			--get all players that are connected to host
	do
		ensure
			list_not_empty:	list_of_players.is_empty
	end

	add_new_player( a_player : G10_PLAYER_INFO)		: ARRAYED_LIST[G10_PLAYER_INFO]
	require
			 player_not_null : a_player /= void
			 list_not_full : not list_of_players.full
	do


		ensure
			player_added : list_of_players.has (a_player)
			count_is_ : list_of_players.count = old list_of_players.count + 1
	end


	get_specific_player(player_ip : STRING)		: G10_PLAYER_INFO --
			-- returns the array's list element of a specific player
	require
		not_empty : player_ip.is_empty
	do


	ensure
		player_return_is : Result /= void
	end
	disconnect_all_players
			--end of the game and disconnection of all player
	do

		ensure
			empty_ : list_of_players.is_empty
	end

	broadcast_msg_to_all (message : G10_MESSAGE)
			-- notifies all the players about changes
	require
	--	msg : message.
	do

	end
	kick_player(player_ip : STRING)
			--kick a player
	require
		 ip_is_empty  : player_ip.is_empty

	do
	end

feature --{G10_HOST, G10_JOINED_PLAYER}

	receive_msg : G10_MESSAGE
			-- player sends a move to host
	do


		ensure
			empty: Result/=void
	end

	send_msg(a_msg: G10_MESSAGE  sender,receiver : G10_PLAYER_INFO)
			-- responce to client (player)
	do


	end

	send_msg_to_root_server(a_msg:STRING sender,receiver : G10_PLAYER_INFO)
	require
		not_empty : a_msg.is_empty
	do

	end

	receive_message_from_root_server : STRING
			-- response from Root Server
	do


		ensure
			res: Result/=void
	end


feature {G10_JOINED_PLAYER}
	disconnect_player
	do
	end

invariant
	-- it is possible to exist an invariant
end
