note
	description: "Summary description for {TEST_DO_TRASH_PILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_DO_TRASH_PILE

inherit
	EQA_TEST_SET

feature -- Test routines

	test
			-- New test routine
		local
			l_trash_pile: DO_TRASH_PILE
			l_card: DO_VICTORY_CARD
			name: STRING

		do
			create l_trash_pile.make
			create l_card.make("name","type", -5, -10)
			l_trash_pile.add_card (l_card)
			--add assert here, could not access method in the super class
		end

end
