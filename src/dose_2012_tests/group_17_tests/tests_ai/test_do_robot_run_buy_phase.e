note
	description: "Summary description for {TEST_DO_ROBOT_RUN_BUY_PHASE}."
	author: "Alejandro Yaciuk"
	date: "20/11/12"
	revision: "1.0"

class
	TEST_DO_ROBOT_RUN_BUY_PHASE

inherit
	EQA_TEST_SET

feature -- Test routines

	test_set_run_buy_phase_0
			-- New test routine
		local
			robot: DO_ROBOT
			rescued: BOOLEAN
		do
			create robot.join_game
			if (not rescued) then
				robot.run_buy_phase
			end
			assert ("the robot run buy phase was not correctly setted.", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_set_run_buy_phase_1
			-- New test routine
		local
			robot: DO_ROBOT
			rescued: BOOLEAN
		do
			create robot.join_game
			robot.turn
			if (not rescued) then
				robot.run_buy_phase
			end
			assert ("the robot run buy phase was not correctly setted.", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_set_run_buy_phase_2
			-- New test routine
		local
			robot: DO_ROBOT
			rescued: BOOLEAN
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			if (not rescued) then
				robot.run_buy_phase
			end
			assert ("the robot run buy phase was correctly setted.", not rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_set_run_buy_phase_3
			-- New test routine
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			robot.run_buy_phase
			assert ("the robot run buy phase was correctly setted.", robot.buy_phase_done)
		end
end
