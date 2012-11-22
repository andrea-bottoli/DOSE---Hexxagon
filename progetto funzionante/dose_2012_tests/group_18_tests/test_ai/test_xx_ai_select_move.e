note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_XX_AI_SELECT_MOVE

inherit
	EQA_TEST_SET

feature  -- Further test routines that are not defined at API. Optional test cases created.

	test_calculate_best_move
			-- New test routine
		note
			testing: "covers/{XX_AI_SELECT_MOVE}.calculate_best_move"
			testing: "/user/XX"
		local
			calc_best_move: XX_AI_SELECT_MOVE
			l_move: INTEGER
		do
			create calc_best_move.calculate_best_move
			l_move:=15
			assert ("check l_move",calc_best_move.get_best_move.is_equal (l_move))
			assert ("calc_best_move not void", calc_best_move /= Void)
		end

	test_get_best_move
			-- New test routine
		note
			testing:  "covers/{XX_AI_SELECT_MOVE}.get_best_move"
			testing: "/user/XX"
		local
			best_move: XX_AI_SELECT_MOVE
			b_move1: INTEGER
			b_move2: INTEGER
		do
			create best_move.calculate_best_move
			b_move1 := 9
			assert("legal best move to b_move1", best_move.get_best_move.is_equal (b_move1))

			create best_move.calculate_best_move
			b_move2 := 11
			assert("legal best move to b_move2", best_move.get_best_move.is_equal (b_move2))

		end

	test_get_previous_move
			-- New test routine
		note
			testing:  "covers/{XX_AI_SELECT_MOVE}.get_previos_move"
			testing: "/user/XX"
		local
			prev_move: XX_AI_SELECT_MOVE
			p_move1: INTEGER
			p_move2: INTEGER
		do
			create prev_move.calculate_best_move
			p_move1 := 6
			assert("legal assignment previous move to p_move1", prev_move.get_previos_move.is_equal (p_move1))


			create prev_move.calculate_best_move
			p_move2 := 16
			assert("legal assignment previous move to p_move2", prev_move.get_previos_move.is_equal (p_move2))

		end

end


