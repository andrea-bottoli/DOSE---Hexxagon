note
	description: "Class representing the 'Logic Server' in the game."
	author: "Manuel Varela: Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_LOGIC_SERVER

create
	make, make_controller

feature -- Initialization

	make
		do
			create l_client_list.make
			l_current_turn := 0
		ensure
		end

	make_controller (a_controller: G1_NET_SERVER_SINGLE)
		do
			create l_client_list.make
			l_controller := a_controller
			l_current_turn := 0
		ensure
		end

feature -- State values

	l_controller: G1_NET_SERVER_SINGLE
	l_client_list: LINKED_LIST [G1_PLAYER]
			-- Linked_list changed to G1_PLAYER, because there is not a direct connection to G1_LOGIC_CLIENT (Jiang)
			-- player with current turn?

	l_current_turn: INTEGER
			-- ID of the player with the current turn in the game

feature -- Basic Operations

	add_player (a_player: G1_PLAYER)
			-- Adds a new player to the list of clients.
		require
			valid_payer: a_player /= void
		do
			l_client_list.extend (a_player)
		ensure
			added_player_to_list: l_client_list.has (a_player)
		end

	remove_player (a_player: G1_PLAYER)
			-- Remove a player from the list of clients.
		require
			valid_payer: a_player /= void and l_client_list.has (a_player)
		do
			l_client_list.prune (a_player)
		ensure
			deleted_palyer_of_list: not l_client_list.has (a_player)
		end

	update_game_state
			-- Send a message to the players updating the game state.
		do
		end

	next_turn
			-- Send a message instructing the player whose turn it is to play.
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

invariant

end
