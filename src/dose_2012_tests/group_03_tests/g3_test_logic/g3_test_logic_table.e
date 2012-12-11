note
	description: " Test for tichu table"
	author: "Lydatakis Georgiou Kateros"
	date: "$Date$"
	revision: "$0.1$"
	testing: "type/manual"

class
	G3_TEST_LOGIC_TABLE

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do

		end

	on_clean
			-- <Precursor>
		do

		end

feature -- Test routines

	test_g3_table
			-- New test routine
		note
			testing:  "covers/{G3_TABLE}"
		local table:G3_TABLE
			  comb:G3_COMBINATION
			  c:G3_CARD
		do
			create table.make
			create comb.make
		--	create c.make("Y","K","No")
			comb.cards.put (c)
		--	create c.make("B","Q","No")
			comb.cards.put (c)
		--	create c.make("Y","J","No")
			comb.cards.put (c)
		--	create c.make("B","10","No")
			comb.cards.put (c)
		--	create c.make("G","Phoenix","ed")
			comb.cards.put (c)
		--	create c.make("B","8","No")
			comb.cards.put (c)
			table.add_move (comb)
			assert("Check if table have last move",table.stack_of_play.has (comb))
			table.clear_stack
			assert("Check if table have move after be delete",table.stack_of_play.is_empty)
		end

end


