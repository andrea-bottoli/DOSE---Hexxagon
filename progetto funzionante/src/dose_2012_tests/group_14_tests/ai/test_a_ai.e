note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_A_AI

inherit
	EQA_TEST_SET


feature -- Test Constructor

	test_ai		: HX_A_AI
	test_board	: HX_L_IBOARD
	test_move	: HX_L_IMOVE
	test_logic	: HX_L_LOGIC
	test_gui	: HX_G_DUMMYMANAGER

	new_test_routine
			-- New test routine
		note
			testing:  "covers/{HX_A_AI}"

		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test for make
			create test_ai.make(5)
			assert("Constructor created:", test_ai /= Void)
		end

	new_test_getMovement
		note
			testing:  "covers/{HX_A_AI}"
		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test for getMovement
			test_move := test_ai.getMovement(test_board)

			assert ("Result move is not void",test_move /= Void)
			assert ("Result board is not void",test_board /= Void)
		end
end



