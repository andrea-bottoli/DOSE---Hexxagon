note
	description: "Test routines for the IG_GAMEBOARD class"
	author: "Adriana Selleri Rocha"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_GAMEBOARD

inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_GAMEBOARD_create_gameboard_2players
			-- Tests if the new board is created with the correct size when the number of players equals to 2
		note
			testing: "covers/{IG_GAMEBOARD}"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
		do
			create l_gameboard.make(2)
			assert("Number of players is:",l_gameboard.num_players=2)
			assert("Number of lines of the gameboard is:",l_gameboard.gameboard.width=15)
			assert("Numebr of columns of the gameboard is:",l_gameboard.gameboard.height=15)
		end

	test_IG_GAMEBOARD_create_gameboard_3players
			-- Tests if the new board is created with the correct size when the number of players equals to 3
		note
			testing: "covers/{IG_GAMEBOARD}"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
		do
			create l_gameboard.make(3)
			assert("Number of players is:",l_gameboard.num_players=3)
			assert("Number of lines of the gameboard is:",l_gameboard.gameboard.width=15)
			assert("Numebr of columns of the gameboard is:",l_gameboard.gameboard.height=15)
		end

	test_IG_GAMEBOARD_create_gameboard_4players
			-- Tests if the new board is created with the correct size when the number of players equals to 4
		note
			testing: "covers/{IG_GAMEBOARD}"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
		do
			create l_gameboard.make(4)
			assert("Number of players is:",l_gameboard.num_players=4)
			assert("Number of lines of the gameboard is:",l_gameboard.gameboard.width=15)
			assert("Numebr of columns of the gameboard is:", l_gameboard.gameboard.height=15)
		end


	test_IG_GAMEBOARD_set_tile_on_board
			-- Tests if a tile is set on board
		note
			testing: "covers/{IG_GAMEBOARD}.set_tile_on_board"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
			l_tile:IG_TILE
			l_superior_hex:IG_HEX
			l_inferior_hex:IG_HEX
			l_move: IG_MOVE
			l_player: IG_PLAYER
		do
			create l_gameboard.make(2)
			create l_superior_hex.make ("b")
			create l_inferior_hex.make ("r")
			create l_tile.make_with_hexes(l_superior_hex,l_inferior_hex)
			create l_move.make_with_tile(l_tile)
			l_move.set_position(8,4)
			l_move.set_rotation(1)
			assert ("Move is valid before placing it", l_gameboard.is_move_valid (l_move))
			create {IG_USER_PLAYER}l_player.make_with_name ("Eve")
			l_gameboard.set_tile_on_board (l_move, l_player)
			assert ("Tile is placed in the gameboard", not l_gameboard.is_move_valid (l_move))
		end

	test_IG_GAMEBOARD_invalid_move_initial_tile
			-- Tests if the routine identifies that the move is not valid (tile placed far from the symbols printed in the keyboard for first move)
		note
			testing: "covers/{IG_GAMEBOARD}.is_move_valid"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
			l_tile:IG_TILE
			l_superior_hex:IG_HEX
			l_inferior_hex:IG_HEX
			l_move: IG_MOVE
			l_player: IG_PLAYER
		do
			create l_gameboard.make(2)
			create l_superior_hex.make ("r")
			create l_inferior_hex.make ("b")
			create l_tile.make_with_hexes(l_superior_hex,l_inferior_hex)
			create l_move.make_with_tile(l_tile)
			l_move.set_position(4,7)
			l_move.set_rotation(1)
			l_gameboard.set_tile_on_board (l_move,l_player)
			assert ("The move is not valid", l_gameboard.is_move_valid(l_move)=FALSE)
		end


	test_IG_GAMEBOARD_invalid_move_superposition
			-- Tests if the routine identifies that the move is not valid (superposition with the symbols printed in the gameboard)
		note
			testing: "covers/{IG_GAMEBOARD}.is_move_valid"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
			l_tile:IG_TILE
			l_superior_hex:IG_HEX
			l_inferior_hex:IG_HEX
			l_move: IG_MOVE
			l_player: IG_PLAYER
		do
			create l_gameboard.make(2)
			create l_superior_hex.make ("b")
			create l_inferior_hex.make ("r")
			create l_tile.make_with_hexes(l_superior_hex,l_inferior_hex)
			create l_move.make_with_tile(l_tile)
			l_move.set_position(9,3)
			l_move.set_rotation(1)
			create {IG_USER_PLAYER}l_player.make_with_name ("Wall-e")
			l_gameboard.set_tile_on_board (l_move, l_player)
			assert ("The move is not valid", l_gameboard.is_move_valid(l_move)=FALSE)
		end

	test_IG_GAMEBOARD_invalid_move_out_of_game_area
			--  Tests if the routine identifies that the move is not valid (out of the allowed area for 2 players)
		note
			testing: "covers/{IG_GAMEBOARD}.is_move_valid"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
			l_tile:IG_TILE
			l_move: IG_MOVE
			l_superior_hex: IG_HEX
			l_inferior_hex: IG_HEX
			l_player: IG_PLAYER
		do
			create l_gameboard.make(2)
			create l_superior_hex.make ("p")
			create l_inferior_hex.make ("b")
			create l_tile.make_with_hexes(l_superior_hex,l_inferior_hex)
			create l_move.make_with_tile(l_tile)
			l_move.set_position(8,14)
			l_move.set_rotation(1)
			l_gameboard.set_tile_on_board (l_move, l_player)
			assert ("The move is not valid", l_gameboard.is_move_valid(l_move)=FALSE)
		end

	test_IG_GAMEBOARD_invalid_move_out_of_board
			--  Tests if the routine identifies that the move is not valid (out of the board)
		note
			testing: "covers/{IG_GAMEBOARD}.is_move_valid"
			testing: "user/IG"
		local
			l_gameboard: IG_GAMEBOARD
			l_tile:IG_TILE
			l_move: IG_MOVE
			l_superior_hex: IG_HEX
			l_inferior_hex: IG_HEX
			l_player: IG_PLAYER
		do
			create l_gameboard.make(2)
			create l_superior_hex.make ("r")
			create l_inferior_hex.make ("b")
			create l_tile.make_with_hexes(l_superior_hex,l_inferior_hex)
			create l_move.make_with_tile(l_tile)
			l_move.set_position(14,14)
			l_move.set_rotation(1)
			l_gameboard.set_tile_on_board (l_move,l_player)
			assert ("The move is not valid", l_gameboard.is_move_valid(l_move)=FALSE)
		end


end



