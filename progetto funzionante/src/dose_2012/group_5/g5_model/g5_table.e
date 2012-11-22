note
	description: "Summary description for {G5_TABLE}."
	author: "Team RioCuarto4"
	date: "$10/11/2012$"
	revision: "$0.2$"

class
	G5_TABLE

inherit

	G5_ITABLE

create
	make_game_table

feature -- Initialization

	make_game_table ()
		require
		do
		ensure
		end

feature {G5_PLAYER, G5_RECEIVER_COMMAND_CARD, TEST_SET_G5_TABLE} -- Report states

	index_current: INTEGER
			-- Indicates which player is playing (index of array "players").

	player_current: G5_PLAYER
			-- Indicates date from player is playing
			-- (id_player, name_player, hand, discard_pile, deck).

	phase_current: STRING
			-- Indicates the phase in which the player current is located
			-- (Action, Buy, Clean-up)

	is_finished: BOOLEAN
			-- check if the game is finished

		do
		ensure
			Result = (supply.count_piles_exhausted = 3) or (supply.province_exhausted = true)
		end

feature {G5_PLAYER, G5_SUPPLY, TEST_SET_G5_TABLE} -- Measurement

	amount_player: INTEGER
			-- Indicates the maximum number of players possible in the game, (size of array "players")

	players: ARRAY [G5_PLAYER]
			-- Contains the players of the game. Also indicates the order of the players

	supply: G5_SUPPLY
			-- Contains the information of supply complete

	pile_trash: ARRAY [G5_CARD]
			-- Contains the cards eliminated

feature -- Game Management

	decode (card_ID: STRING): G5_CARD
			-- card_ID according to parameter, returns the corresponding card.
		require
			card_ID_invalid: card_ID /= void
		do
		ensure
			Result /= void
		end

feature -- Actions to execute selected car

	get_card_of_supply (type_card: G5_CARD)
			-- Get card of supply with a cost "x".
		require
			card_invalid: type_card /= void
		do
		ensure
		end

feature -- Game Management Status

	notify ()
			-- Notifies that there changes of states to observers
		require
		do
		ensure
		end

	next_player (): INTEGER
			-- Indicates which is the next player who must play

		do
		ensure
			result >= 0 and result <= amount_player
		end

	get_player_current (index_player: INTEGER): G5_PLAYER
			-- Return player current.
		require
			index_player_valid: (index_player >= 0) and (index_player <= amount_player)
		do
		ensure
		end

	next_phase (phase_name: STRING): STRING
			-- Indicates the next phase of the current
		require
			name_phase_invalid: phase_name /= void
		do
		ensure
			name_phase_return_invalid: Result="Action" or Result="Buy" or Result="Clean-up"
		end

feature {G5_ITABLE} -- Initialization for interface G5_ITABLE

	init_game_default (quantity_player: INTEGER)
			-- feature is called to initialize the game with cards default settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
		--require
		--	number_player_invalid: quantity_player < 5 and quantity_player > 1
		do
		--ensure
				--the game can begin
		end

	init_game_randomize (quantity_player: INTEGER)
			-- feature is called to initialize the game with a randomly chosen card settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
		--require
		--	number_player_invalid: quantity_player < 5 and quantity_player > 1
		do
		--ensure
				--the game can begin
		end

	init_game_personalized (quantity_player: INTEGER; cards: ARRAY [STRING])
			-- feature is called to initialize the game with a personalized card settings,
			-- quantity_player parameter indicates the quantity of the players who will play.
		--require
		--	number_player_invalid: quantity_player < 5 and quantity_player > 1
		do
		--ensure
				--the game can begin
		end

feature {G5_ITABLE} -- Connection-Disconnection for interface G5_ITABLE

	connection (name_player: STRING): BOOLEAN
			-- this feature is used to inform the LOGIC that a player wants to join
			-- in a match (not already started).
		--require
			--player_name_valid: name_player /= Void;
		do
		--ensure
		end

	disconnect (name_player: STRING)
			--this feature is used to inform the LOGIC that a player leave the game
		--require
			--player_name_valid: name_player /= Void;
		do
		--ensure
		end

feature {G5_ITABLE} -- Finalization for interface G5_ITABLE

	restart_game (player_name: STRING): BOOLEAN
			-- function that alerts the server that the player id_player want a rematch.
		--require
			--player_name_invalid: player_name /= Void;
		do
		--ensure
		end

end
