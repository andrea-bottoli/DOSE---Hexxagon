note
	description: "Class representing the 'Logic Server' in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_LOGIC_SERVER


create
	make

feature -- Initialization

	make
		do
		ensure
		end

feature -- State values

	l_client_list: LINKED_LIST [G1_PLAYER]
	-- Linked_list changed to G1_PLAYER, because there is not a direct connection to G1_LOGIC_CLIENT (Jiang)
	-- player with current turn?

feature -- Basic Operations

	add_player (a_player: G1_PLAYER)
			-- Adds a new player to the list of clients.
			require valid_payer: a_player /= void
		do
		end

	remove_player (a_player: G1_PLAYER)
			-- Remove a player from the list of clients.
		do
		end

	update_game_state
			--
		do
		end

	next_turn
			-- Send a message instructing the player whose turn it is to play.
		do
		end

	next_turn_auction
			--Send a message instructing the player whose turn it is to auction.
		do
		end

invariant

end
