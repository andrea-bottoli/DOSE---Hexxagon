note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_MOVE

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
			assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			assert ("not_implemented", False)
		end

feature -- Test routines

	test_G1_Logic_message_message_move
			-- New test routine
		note
			testing:  "user/G1"
			testing: "covers/{G1_MESSAGE_MOVE}.make_position"
		local
			msg_move: G1_MESSAGE_MOVE
		do
			create msg_move.make_move (1,33)
			assert ("Message Move: Position:33", msg_move.position.is_equal (33))
		end

end


