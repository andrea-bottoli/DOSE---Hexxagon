note
	description: "Describes the current state of the game"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_SERVER

create
	make

feature -- Measurement

	players: ARRAY [G6_PLAYER]
			--Array of players, max 8, if a player leaves the game, won't be deleted from the array

	current_player: INTEGER
			--Id of the current player (position in array "players"), 0 is gloval turn

	board: G6_BOARD
			--Gameboard

	available_houses: INTEGER
			--Numeber of available houses for sell

	available_hotels: INTEGER
			--Numeber of available hotels for sell

		--define decks!!

feature -- Initialization

	make
			-- Create a state with the initial state
		do
			create board.make
			create players.make_filled (Void, 1, 8)
			available_houses := 32
			available_hotels := 12
		ensure
			numb_players: players.count () = 0
			board_created: board /= Void
			available_houses = 32
			available_hotels = 12
		end

feature {NONE} --Basic Operations

	add_player (p: G6_PLAYER)
			--Add the player "p" to the list of players
		require
			valid_old_elements: players.count >= 0 and players.count <= 7 and not players.has (p)
		do
		ensure
			valid_new_elements: players.count >= 1 and players.count <= 8 and players.has (p)
		end

	buy_property (p: G6_PLAYER)
			--Buy the property where "p" stands
		do
		end

	buy_house (p: G6_PLAYER; c: INTEGER; numb: INTEGER)
			-- Buy "numb" number of houses in the cell "c"
		do
		end

	sell_house (p: G6_PLAYER; c: INTEGER; numb: INTEGER)
			-- Sell "numb" number of houses in the cell "c"
		do
		end

feature {NONE}

	message_receiver ()
		do
			if (true) then --"roll_dice"

			elseif (true) then --"buy_a_cell"

			elseif (true) then --"finish_turn"

			elseif (true) then --"mortage_property (cell_num)"

			elseif (true) then --"unmortage_property (cell_num)"

			elseif (true) then --"use_jail_card"

			elseif (true) then --"how_to_pay (% or cash)"

			elseif (true) then --"tender (mount)"

			elseif (true) then --"buy_house (numb)(cell)"

			elseif (true) then --"sell_house (numb)(cell)"

			elseif (true) then --"transfer (player) (item)"
				
			end
		end

invariant
	numb_players: players.count () >= 0 and players.count () <= 8
	board_created: board /= Void
	available_houses <= 32 and available_houses >= 0
	available_hotels <= 12 and available_hotels >= 0

end
