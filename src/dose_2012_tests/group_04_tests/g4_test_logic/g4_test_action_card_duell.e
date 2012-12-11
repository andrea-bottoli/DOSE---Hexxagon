note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G4_TEST_ACTION_CARD_DUELL

inherit
	EQA_TEST_SET

feature -- Test routines

	G4_BANG_ACTION_CARDS_DUELL
			-- New test routine
		note
			testing:  "covers/{G4_ACTION_CARDS_DUELL}.make", "covers/{G4_ACTION_CARDS_DUELL}.action"
			testing: "user/G4" -- as required by assignment
		do
			assert ("not_implemented", False)
		end

end


