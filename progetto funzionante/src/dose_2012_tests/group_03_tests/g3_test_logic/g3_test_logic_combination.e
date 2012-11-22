note
	description: "Test for combinations"
	author: "Lydatakis Georgiou Kateros"
	date: "$Date$"
	revision: "$0.1$"
	testing: "type/manual"

class
	G3_TEST_LOGIC_COMBINATION

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

	combination_test
			-- New test routine
		note
			testing:  "covers/{G3_COMBINATION}"
		local
			card : like {G3_COMBINATION}.cards
			comb: G3_COMBINATION
			c:G3_CARD
		do
			create comb
			create card.make
		 --	create c.make("B","K","No")
			comb.cards.put (c)
			assert ("Compination ",comb.is_valid )
	--		create c.make("Y","K","No")
			comb.cards.put (c)
			assert ("Compination ",comb.is_valid )
	--		create c.make("G","K","No")
			comb.cards.put (c)
			assert ("Compination ",comb.is_valid )
			create comb
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
			assert ("Compination ",comb.is_valid )
		end

end


