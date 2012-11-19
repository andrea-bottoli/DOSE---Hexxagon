note
	description: "Test on XX_CELL class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_XX_CELL

inherit
	EQA_TEST_SET

feature -- Test routines

	--Test method make_cell
	test_xx_cell_make_cell
		note
			testing:  "covers/{XX_CELL}.make_cell"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("Cell id correspond", l_cell.get_cell_id.is_equal (l_cell_id))
				l_cell_id:=l_cell_id+1
			end

			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("Cell id not correspond", not l_cell.get_cell_id.is_equal (l_cell_id))
				l_cell_id:=l_cell_id+1
			end
		end

	--Test method get_cell_id
	test_xx_cell_get_cell_id
		note
			testing:  "covers/{XX_CELL}.get_cell_id"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("Cell id of the cell is equal to cell id getted", l_cell.get_cell_id.is_equal (l_cell_id))
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("Cell id of the cell is not equal to cell id getted", not l_cell.get_cell_id.is_equal (l_cell_id))
				l_cell_id:=l_cell_id+1
			end

		end

	--Test method set_cell_player1
	test_xx_cell_set_cell_player1
			--Test method set_cell_player1
		note
			testing:  "covers/{XX_CELL}.set_cell_player1"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player1
				assert ("Player 1 is setted", l_cell.get_cell_player1 and not l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player1
				assert ("Player 1 is not setted", not l_cell.get_cell_player1)
				l_cell_id:=l_cell_id+1
			end
		end

	--Test method set_cell_player2
	test_xx_cell_set_cell_player2
			--Test method set_cell_player2
		note
			testing:  "covers/{XX_CELL}.set_cell_player2"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player2
				assert ("Player 2 is setted", l_cell.get_cell_player2  and not l_cell.get_cell_player1)
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player2
				assert ("Player 2 is not setted", not l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end
		end

	--Test method set_is_blank
	test_xx_cell_set_is_blank
		note
			testing:  "covers/{XX_CELL}.set_is_blank"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("The cell is blank", not l_cell.get_cell_player1  and not l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("The cell is not blank", l_cell.get_cell_player1 or l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end
		end

	--Test method get_cell_player1
	test_xx_cell_get_cell_player1
		note
			testing:  "covers/{XX_CELL}.get_cell_player1"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player1
				assert ("Player 1 is the ownler", l_cell.get_cell_player1  and not l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player1
				assert ("Player 1 is not the owner", not l_cell.get_cell_player1)
				l_cell_id:=l_cell_id+1
			end
		end

	--Test method get_cell_player2
	test_xx_cell_get_cell_player2
		note
			testing:  "covers/{XX_CELL}.get_cell_player2"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player2
				assert ("Player 2 is the owner", l_cell.get_cell_player2  and not l_cell.get_cell_player1)
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				l_cell.set_cell_player2
				assert ("Player 2 is not the owner", not l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end
		end

	--Test method get_is_blank
	test_xx_cell_get_is_blank
		note
			testing:  "covers/{XX_CELL}.get_is_blank"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_cell: XX_CELL
			l_cell_id: INTEGER
		do
			--Test 1
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("The cell is blank", not l_cell.get_cell_player1  and not l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end

			--Test 2
			from
				l_cell_id:=0
			until
				l_cell_id>=57
			loop
				create l_cell.make_cell (l_cell_id)
				assert ("The cell is not blank", l_cell.get_cell_player1 or l_cell.get_cell_player2)
				l_cell_id:=l_cell_id+1
			end
		end
end
