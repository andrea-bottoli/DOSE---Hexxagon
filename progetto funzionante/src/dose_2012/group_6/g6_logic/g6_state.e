note
	description: "Describes the current state of the game"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_STATE

create
	make

feature -- Measurement

	players: ARRAY [G6_PLAYER]
			--List of current players, max 8

	board: G6_BOARD
			--Gameboard

feature -- Initialization

	make
			-- Create a state with the initial state
		do
		ensure
			numb_players: players.count () = 0
			board_created: board /= Void
		end

feature --

	add_player (p: G6_PLAYER)
		require
			valid_old_elements: players.count >= 0 and players.count <= 7 and not players.has (p)
		do
		ensure
			valid_new_elements: players.count >= 1 and players.count <= 8 and players.has (p)
		end

	buy_property (p: G6_PLAYER)
		do
		end

	buy_house (p: G6_PLAYER; c: INTEGER; numb: INTEGER)
			--c: position of the cell
			--numb: numb of the houses
		do
		end

	sell_house (p: G6_PLAYER; c: INTEGER; numb: INTEGER)
			--c: position of the cell
			--numb: numb of the houses
		do
		end

invariant
	numb_players: players.count () >= 0 and players.count () <= 8
	board_created: board /= Void

end
