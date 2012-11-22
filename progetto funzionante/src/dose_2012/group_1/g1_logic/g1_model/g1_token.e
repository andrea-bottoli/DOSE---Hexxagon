note
	description: "Class representing a Token in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_TOKEN

create
	make

feature -- Initialization

	make (a_name: STRING)
			-- Initialize the token.
		require
			valid_name: a_name /= void
		do
		ensure
			valid_position: l_position = 0
		end

feature -- Status report

	l_name: STRING
			-- name of the current Token.

	l_position: INTEGER
			-- current position of Token in the board.

	l_player: G1_PLAYER
			-- owner of current Token in the game.

feature --Basic operations

	change_position (a_position: INTEGER)
			-- Changes the position of current Token in the board.
		require
			valid_position: a_position >= 0 and a_position <= 39
		do
		ensure
			l_position = a_position
		end

	set_player (a_player: G1_PLAYER)
			-- Set a player for the current Token.
		require
			valid_player: a_player /= void
		do
		ensure
			valid_player: l_player /= void
		end

invariant
	valid_position: l_position <= 39 and l_position >= 0
	valid_name: l_name /= void

end
