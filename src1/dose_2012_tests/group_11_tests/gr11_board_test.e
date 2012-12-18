note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	GR11_BOARD_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	can_add_ship_test
			-- New test routine
		note
			testing:  "covers/{GR11_BOARD}.can_add_ship"
			testing:  "user/GR11"
		local
			l_board : GR11_BOARD
		do
			create l_board.make(3)
		end

end


