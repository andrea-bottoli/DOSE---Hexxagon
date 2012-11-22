note
	description: "Summary description for {TEST_DO_ROBOT_TURN}."
	author: "Martin Paulucci"
	date: "20/11/2012"
	revision: "1.0"

class
	TEST_DO_ROBOT_TURN

inherit

	EQA_TEST_SET

feature -- Test routines

	test_do_robot_turn_0
		note
			testing: "DO_ROBOT/turn"
		local
			robot: DO_ROBOT
		do
			create robot.join_game
			robot.turn
			assert ("the robot turn is", robot.robot_turn)
		end
end
