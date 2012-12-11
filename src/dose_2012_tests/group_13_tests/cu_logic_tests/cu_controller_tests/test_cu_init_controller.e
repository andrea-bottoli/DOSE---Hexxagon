note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_INIT_CONTROLLER class of the Cluedo game.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_INIT_CONTROLLER

inherit
	EQA_TEST_SET

feature
	controller: CU_INIT_CONTROLLER

feature
		-- No sense test this class.. Delete Tests


	test_start_0
			-- New test routine
		note
			testing: "covers/{CU_INIT_CONTROLLER}.start"
			testing: "user/CU"
		local
			mode: STRING
			mode_logic: BOOLEAN
		do
			--create controller.make
			mode := "master"
			mode_logic := False
			if (mode.is_equal ("master")) or (mode.is_equal ("slave")) then
				controller.start (mode)
				mode_logic := True
			end
			assert ("Enables the logic in master mode:", mode_logic)
		end

	test_start_1
			-- New test routine
		note
			testing: "covers/{CU_INIT_CONTROLLER}.start"
			testing: "user/CU"
		local
			mode: STRING
			mode_logic: BOOLEAN
		do
			--create controller.make
			mode := "slave"
			mode_logic := False
			if (mode.is_equal ("master")) or (mode.is_equal ("slave")) then
				controller.start (mode)
				mode_logic := True
			end
			assert ("Enables the logic in slave mode:", mode_logic)
		end

	test_start_2
			-- New test routine
		note
			testing: "covers/{CU_INIT_CONTROLLER}.start"
			testing: "user/CU"
		local
			mode: STRING
			mode_logic: BOOLEAN
		do
			--create controller.make
			mode := ""
			mode_logic := False
			if (mode.is_equal ("master")) or (mode.is_equal ("slave")) then
				controller.start (mode)
				mode_logic := True
			end
			assert ("Not enable logic:", not mode_logic)
		end

end
