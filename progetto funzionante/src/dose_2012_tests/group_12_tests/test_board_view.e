note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	CP_TEST_BOARD_VIEW

inherit
	EQA_TEST_SET

feature -- Test routines

	CP_TEST_BOARD_VIEW
			-- New test routine
		note
			testing:  "covers/{CP_BOARD_VIEW}.update_insect_position",
			          "covers/{CP_BOARD_VIEW}.add_insect_on_board",
			          "covers/{CP_BOARD_VIEW}.remove_insect_from_board"
		local

		beetle: CP_BEETLES
		lbv: CP_BOARD_VIEW
		position: CP_POSITION

		do
			lbv.add_insect_on_board(beetle, position)
			print ("BOARD VIEW add_insect_on_board tested")

			lbv.update_insect_position (beetle, position)
			print ("BOARD VIEW update_insect_position tested")

			lbv.remove_insect_from_board (beetle)
			print ("BOARD VIEW remove_insect_from_board tested")
		end


end


