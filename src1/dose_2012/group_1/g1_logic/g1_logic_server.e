note
	description: "Class representing the 'Logic Server' in the game."
	author: "Manuel Varela: Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_LOGIC_SERVER

create
	make, make_net

feature -- Initialization

	make
		do
			create l_client_list.make
			l_current_turn := 0
		end

	make_net (a_net: G1_NET_SERVER_SINGLE)
		do
			create l_client_list.make
			l_net := a_net
			l_current_turn := 0
		ensure
		end

feature -- State values

	l_net: G1_NET_SERVER_SINGLE

	l_client_list: LINKED_LIST [INTEGER]
			-- Linked_list changed to INTEGER, because we need only an ID from each player

	l_current_turn: INTEGER
			-- ID of the player with the current turn in the game

feature -- Basic Operations

	add_player (a_player: INTEGER)
			-- Adds a new player to the list of clients.
		require
			valid_payer: a_player > 0
		do
			l_client_list.extend (a_player)
		ensure
			added_player_to_list: l_client_list.has (a_player)
		end

	remove_player (a_player: INTEGER)
			-- Remove a player from the list of clients.
		require
			valid_payer: a_player > 0 and l_client_list.has (a_player)
		do
			l_client_list.prune (a_player)
		ensure
			deleted_palyer_of_list: not l_client_list.has (a_player)
		end

	update_game_state
			-- Send a message to the players updating the game state.
		local
			message: G1_MESSAGE_AUCTION
		do
			l_net.send_message_broadcast (message)
		end

	next_turn
			-- Advance to the id of the player whose turn it is to play.
		do
			if l_client_list.count < l_current_turn then
				l_current_turn := l_current_turn + 1
			else
				l_current_turn := 1
			end
		end

	next_turn_auction
			--Send a message instructing the player whose turn it is to auction.
		do
		end

	receive_message (a_message: G1_MESSAGE)
			-- Receive a message from G1_NET_SERVER_SINGLE and do something
		do
			if attached {G1_MESSAGE_ADD_PLAYER} a_message as msg_add_player then
				add_player (msg_add_player.id_player) -- A player is added to the list of the game
			else
				if attached {G1_MESSAGE_FINISH} a_message as msg_finish_turn then
					next_turn
					l_net.send_message_to (l_current_turn, msg_finish_turn) -- Send a message to a player who has the current turn
				end
			end
		end

invariant

end
