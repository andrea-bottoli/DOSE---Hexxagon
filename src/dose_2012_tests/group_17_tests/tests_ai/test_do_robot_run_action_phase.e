note
	description: "Summary description for {TEST_DO_ROBOT_RUN_ACTION_PHASE}."
	author: "Damian Ojeda"
	date: "20/11/2012"
	revision: "$Revision$"

class
	TEST_DO_ROBOT_RUN_ACTION_PHASE

inherit

	EQA_TEST_SET

feature -- Test Routines	

	test_do_robot_run_action_phase_0
		--note
		--	testing: "DO_ROBOT/run_action_phase"
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			robot.turn
			robot.run_action_phase
			assert ("the robot turn is", robot.action_phase_done)
		end

	test_do_robot_run_action_phase_1
		note
			testing: "DO_ROBOT/run_action_phase"
		local
			robot: DO_ROBOT
			exception: BOOLEAN
		do
			create robot.join_game
			exception:= false
			if (not exception) then
				robot.run_action_phase
			end
			assert ("Feature run_action_phase pre-condition works fine", exception)
		rescue
			if (not exception) then
				exception := True
				retry
			end
		end

end
