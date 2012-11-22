note
	description: "Summary description for {IG_GAMEBOARD}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_GAMEBOARD

create
	make


feature -- Status Setting

	make (number_players:INTEGER)
			--Set the game board based on the number of players.
		require
			valid_players: number_players >= 2 and number_players <= 4
		do
			-- If num_player = 2: create a matrix of IG_HEX with the dimensional equal to 13x13.
			-- If num_player = 3: create a matrix of IG_HEX with the dimensional equal to 14x14.
			-- If num_player = 4: create a matrix of IG_HEX with the dimensional equal to 15x15.
		ensure
			--Fbesser
			board_set: num_players = number_players
		end

	set_tile_on_board (ig_move:IG_MOVE)
			--Set the tile on board based on a player move.
		require
			valid_move: is_move_valid(ig_move)
		do
			-- TODO
		ensure
			--Fbesser: Maybe some sort of gameboard.has(ig:move.tile)?
		end

feature -- Query
	is_move_valid(ig_move:IG_MOVE): BOOLEAN
				--Return whether ig_move has a valid move
		require
			move_not_void: ig_move /= Void and then gameboard /= Void and then not gameboard.is_empty
		do
			-- TODO: check the move
		end

feature -- Access
	gameboard: ARRAY2 [IG_HEX]
		-- 2dim-array for the board of the game. The board size depends on the number of players.
	num_players: INTEGER
		-- Number of players of the game
end
