note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	GR11_HEXAGON_MOVE_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	move_to_test
			-- it's a test of the correct movement beetween hexagon
		note
			testing:  "covers/{GR11_HEXAGON_MOVE}.move_to"
			testing:  "user/GR11"
		local
			l_hex_move : GR11_HEXAGON_MOVE
			l_direction : GR11_DIRECTION
			l_coordinates_input : GR11_COORDINATES
			l_coordinates_output : GR11_COORDINATES
		do
			create l_hex_move

			--testing the coordinates of the neighbours of hex(2,2)
			create l_coordinates_input.make(2, 2)

			create l_direction.make (0)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 3 and then l_coordinates_output.y = 2 )

			create l_direction.make (1)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 3 and then l_coordinates_output.y = 3 )

			create l_direction.make (2)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 3 and then l_coordinates_output.y = 4 )

			create l_direction.make (3)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 3 )

			create l_direction.make (4)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 1 )

			create l_direction.make (5)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 1 )

			--testing the coordinates of the neighbours of hex(2,9)
			create l_coordinates_input.make(2, 9)

			create l_direction.make (0)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 10 )

			create l_direction.make (1)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 5 )

			create l_direction.make (2)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 4 )

			create l_direction.make (3)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 8 )

			create l_direction.make (4)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 3 and then l_coordinates_output.y = 13 )

			create l_direction.make (5)
			l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
			assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 3 and then l_coordinates_output.y = 14 )

		--testing the coordinates of the neighbours of hex(0,0)
				create l_coordinates_input.make(0, 0)

				create l_direction.make (0)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 0 )

				create l_direction.make (1)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 1 )

				create l_direction.make (2)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 2 )

				create l_direction.make (3)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 3 )

				create l_direction.make (4)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 4 )

				create l_direction.make (5)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 5 )


			--testing the coordinates of the neighbours of hex(1,0)
				create l_coordinates_input.make(1, 0)

				create l_direction.make (0)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 0 )

				create l_direction.make (1)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 1 )

				create l_direction.make (2)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 1 )

				create l_direction.make (3)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 0 and then l_coordinates_output.y = 0 )

				create l_direction.make (4)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 5 )

				create l_direction.make (5)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 11 )

				--testing hex(1,5)

				create l_coordinates_input.make(1, 5)

				create l_direction.make (0)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 11 )

				create l_direction.make (1)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 0 )

				create l_direction.make (2)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 0 and then l_coordinates_output.y = 0 )

				create l_direction.make (3)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 1 and then l_coordinates_output.y = 4 )

				create l_direction.make (4)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 9 )
				create l_direction.make (5)
				l_coordinates_output := l_hex_move.move_to (l_direction, l_coordinates_input)
				assert ("the output coordinates of move_to is not correct", l_coordinates_output.x = 2 and then l_coordinates_output.y = 10 )

			end


end


