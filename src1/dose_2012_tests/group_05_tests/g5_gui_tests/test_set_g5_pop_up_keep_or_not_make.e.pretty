note
	description: "Summary description for {TEST_SET_G5_POP_UP_KEEP_OR_NOT_MAKE}."
	author: "Team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_POP_UP_KEEP_OR_NOT_MAKE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	keep: G5_POP_UP_KEEP_OR_NOT

	card: STRING
			-- the card to be displayed

	on_prepare
		do
		end

feature -- test routines

	test_make_0
			--positive for make
		do
			card := "T2"
			keep.make (card)
			assert ("make successful", keep.card.is_equal (card))
		end

	test_make_1
			--tste negative, arguments invalid
		local
			rescued: BOOLEAN
		do
			if not rescued then
				card := VOID
				keep.make (card)
			end
			assert ("make raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
