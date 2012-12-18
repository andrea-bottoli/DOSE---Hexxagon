note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_IG_MOVE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_MOVE_make_with_tile
			-- New test routine
		note
			testing:  "covers/{IG_MOVE}.make_with_tile"
			testing:  "user/IG"
		local
			a_tile: IG_TILE
			a_hex : IG_HEX
			a_move: IG_MOVE
		do
			create a_hex.make ("r")
			create a_tile.make_with_hexes(a_hex,a_hex)
			create a_move.make_with_tile (a_tile)
				-- This assertion might not be useful anymore, but we can still check other contracts
				-- (creation assertions of IG_MOVE, for example)
--			assert("Tile Status was set to a : ", a_tile.status_tile.is_equal ("a"))
		end


	test_IG_MOVE_set_position
			-- New test routine
		note
			testing:  "covers/{IG_MOVE}.set_position"
			testing:  "user/IG"
		local
			a_tile: IG_TILE
			a_move: IG_MOVE
			a_hex : IG_HEX
		do
			create a_hex.make ("r")
			create a_tile.make_with_hexes(a_hex,a_hex)
			create a_move.make_with_tile (a_tile)
			a_move.set_position (3, 4)
			assert("X_Position was set: ", a_move.x_position = 3)
			assert("Y_Position was set: ", a_move.y_position = 4)

		end

	test_IG_MOVE_set_rotation
			-- New test routine
		note
			testing:  "covers/{IG_MOVE}.set_rotation"
			testing:  "user/IG"
		local
			a_tile: IG_TILE
			a_move: IG_MOVE
			a_hex : IG_HEX
		do
			create a_hex.make ("b")
			create a_tile.make_with_hexes(a_hex,a_hex)
			create a_move.make_with_tile (a_tile)
			a_move.set_rotation (4)
			assert("Rotation was set: ", a_move.rotation.is_equal (4))
		end

end


