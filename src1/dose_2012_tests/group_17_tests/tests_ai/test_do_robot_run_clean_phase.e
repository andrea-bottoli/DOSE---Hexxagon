note
	description: "Summary description for {TEST_DO_ROBOT_RUN_CLEAN_PHASE}."
	author: "Martin Paulucci"
	date: "20/11/2012"
	revision: "$Revision$"

class
	TEST_DO_ROBOT_RUN_CLEAN_PHASE

inherit

	EQA_TEST_SET

feature -- Test routines

	test_do_robot_run_clean_phase_0
		note
			testing: "DO_ROBOT/run_clean_phase"
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			robot.run_buy_phase
			robot.run_clean_phase
			assert ("the robot turn is", not robot.robot_turn)
		end

	test_do_robot_run_clean_phase_1
		note
			testing: "DO_ROBOT/run_clean_phase"
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			robot.run_buy_phase
			robot.run_clean_phase
			assert ("the robot turn is", not robot.action_phase_done)
		end

	test_do_robot_run_clean_phase_2
		note
			testing: "DO_ROBOT/run_clean_phase"
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			robot.run_buy_phase
			robot.run_clean_phase
			assert ("the robot turn is", not robot.buy_phase_done)
		end

	test_do_robot_run_clean_phase_3
		note
			testing: "DO_ROBOT/run_clean_phase"
		local
			robot: DO_ROBOT
			exception: BOOLEAN
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			exception:= false
			if (not exception) then
				robot.run_clean_phase
			end
			assert ("Feature run_clean_phase pre-condition works fine", exception)
		rescue
			if (not exception) then
				exception := True
				retry
			end
		end

	test_do_robot_run_clean_phase_4
		note
			testing: "DO_ROBOT/run_clean_phase"
		local
			robot: DO_ROBOT
			exception: BOOLEAN
		do
			create robot.join_game
			robot.turn
			exception:= false
			if (not exception) then
				robot.run_clean_phase
			end
			assert ("Feature run_clean_phase pre-condition works fine", exception)
		rescue
			if (not exception) then
				exception := True
				retry
			end
		end
end
