note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Pablo, Rodeghiero"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	BS_TEST_BOARD

inherit
	EQA_TEST_SET

feature -- Test routines

	BS_TEST_BOARD_0
		local
			tablero : BS_BOARD
			movimiento : BS_MOVE
			pos : BS_POSITION
			pieza : BS_TILE
			forma : ARRAY2[INTEGER]
			flag : BOOLEAN
			-- New test routine
		do
			create forma.make_filled (1, 1, 1)
			create tablero.make
			create pieza.make (forma, 1)
			create pos.make (1, 19)
			create movimiento.make (pieza, pos)
			flag := tablero.is_valid_move (1, movimiento)
		end

	BS_TEST_BOARD_1
		local
			tablero : BS_BOARD
			movimiento : BS_MOVE
			pos : BS_POSITION
			pieza : BS_TILE
			forma : ARRAY2[INTEGER]
			flag : BOOLEAN
			-- New test routine
		do
			create forma.make_filled (1, 1, 2)
			create tablero.make
			create pieza.make (forma, 1)
			pieza.rotate_left
			create pos.make (1, 18)
			create movimiento.make (pieza, pos)
			flag := tablero.is_valid_move (1, movimiento)

		end

end


