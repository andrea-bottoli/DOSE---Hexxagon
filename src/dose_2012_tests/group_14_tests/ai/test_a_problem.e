note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_A_PROBLEM

inherit
	EQA_TEST_SET

feature -- Test routines
	test_make	: HX_A_PROBLEM
	test_getSuccessor	: LIST[HX_L_IBOARD]
	bool		: BOOLEAN
	test_value	: INTEGER
	test_board	: HX_L_IBOARD
	test_logic	: HX_L_LOGIC
	test_gui	: HX_G_DUMMYMANAGER


	test_Make_feature-- New test routine
		note
			testing:  "covers/{HX_A_AI}", "covers/{HX_A_PROBLEM}"
		do
			create test_gui.make

			--test make
			create test_make.make
			assert("Constructor created:", test_make /= Void)
		end

	test_GetSuccessor_feature
		note
			testing:  "covers/{HX_A_AI}", "covers/{HX_A_PROBLEM}"
		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test getSuccessor
			test_getSuccessor:= test_make.getSuccessor(test_board)
			assert("getSuccessor returns void",test_getSuccessor/=void)
			assert("getSuccessor arg void",test_board/=void)
		end

	test_Ended_feature
		note
			testing:  "covers/{HX_A_AI}", "covers/{HX_A_PROBLEM}"
		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test ended
			bool := test_make.ended(test_board)
			assert("test_board:",test_board/=void)
		end

	test_minValue_feature
		note
			testing:  "covers/{HX_A_AI}", "covers/{HX_A_PROBLEM}"
		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test minValue
			test_value := test_make.minValue
			assert("test_min_value:",test_value/=void)
		end

	test_maxValue_feature
		note
			testing:  "covers/{HX_A_AI}", "covers/{HX_A_PROBLEM}"
		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test maxValue
			test_value := test_make.maxValue
			assert("test_max_value:",test_value/=void)
		end

	test_Value_feature
		note
			testing:  "covers/{HX_A_AI}", "covers/{HX_A_PROBLEM}"
		do
			create test_gui.make
			create test_logic.initialize(test_gui)
			test_board := test_logic.board()

			--test value
			test_value := test_make.value (test_board)
			assert("test_value:",test_value/=void)
			assert("test_board:",test_board/=void)

		end

end


