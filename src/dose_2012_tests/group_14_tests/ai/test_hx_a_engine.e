note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HX_A_ENGINE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_make_engine
			-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.make"
			testing:  "covers/{HX_A_ENGINE}.set_max_depth"
		local
			new_problem : HX_A_PROBLEM
			new_engine : HX_A_ENGINE

		do
			--create new_engine
					create new_problem.make
					create new_engine.make (new_problem, 3)
					new_engine.set_max_depth(3)
		end

	test_engine_set_problem
		-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.set_problem"
		local
			new_problem_1 : HX_A_PROBLEM
			new_engine_1 : HX_A_ENGINE
		do
			create new_problem_1.make
			create new_engine_1.make (new_problem_1, 3)
			new_engine_1.set_problem(new_problem_1)

		end

	test_get_max_depth
		-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.get_max_depth"
		local
			new_problem_2 : HX_A_PROBLEM
			new_engine_2 : HX_A_ENGINE
		do
			create new_problem_2.make
			create new_engine_2.make (new_problem_2, 3)

			--depth := new_engine.get_max_depth
			assert("Get the max depth", new_engine_2.get_max_depth < 0)
		end

	test_get_problem
		-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.get_problem"
		local
			problem : HX_A_PROBLEM
			engine : HX_A_ENGINE
		do
			create problem.make
			create engine.make (problem, 3)

			--problem := engine.get_problem
			assert("Get the problem: ", engine.get_problem /= Void)
		end

	test_compute_value
		-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.compute_value"
		local
			gui: HX_G_DUMMYMANAGER
 			logic : HX_L_LOGIC
			engine1 : HX_A_ENGINE
			board : HX_L_IBOARD
			problem : HX_A_PROBLEM
			value : INTEGER
		do
			create gui.make
			create logic.initialize(gui)
			board := logic.board()
			create problem.make
			create engine1.make (problem, 3)
			value := engine1.compute_value(board)
			--assert("Has it compute the value:", value /= Void )
		end

	test_compute_successor
		-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.compute_successor"
		local
			gui: HX_G_DUMMYMANAGER
 			logic : HX_L_LOGIC
			successor: HX_L_IBOARD
			new_engine : HX_A_ENGINE
			board : HX_L_IBOARD
			problem : HX_A_PROBLEM
		do
			create gui.make
			create logic.initialize(gui)
			board := logic.board()
			create problem.make
			create new_engine.make (problem, 3)

			successor := new_engine.compute_successor(board)
			assert("Has it compute the successor", successor /= Void)
		end

	test_minMaxAB
		-- New test routine
		note
			testing:  "covers/{HX_A_ENGINE}.minMaxAB"
		local
			minmax: INTEGER
			board : HX_L_IBOARD
			gui: HX_G_DUMMYMANAGER
 			logic : HX_L_LOGIC
			engine : HX_A_ENGINE
			problem : HX_A_PROBLEM
		do
			create gui.make
			create logic.initialize(gui)
			board := logic.board()
			create problem.make
			create engine.make (problem, 3)

			 minmax := engine.minMaxAB(board,1,2,3)
			--assert("Has it test the minmaxAB",engine.minmaxab(board,1,2,3) )
		end
end


