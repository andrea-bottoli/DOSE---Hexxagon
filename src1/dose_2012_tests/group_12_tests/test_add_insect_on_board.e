note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ADD_INSECT_ON_BOARD

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_ADD_INSECT_ON_BOARD
			-- New test routine

		note
			testing:  "covers/{CP_BOARD_VIEW}"

		local
		beetle: CP_BEETLES
		position: CP_POSITION
		lbv: CP_BOARD_VIEW

		do
			lbv.add_insect_on_board(beetle, position)
			print ("BOARD VIEW add_insect_on_board tested")
		end

end



