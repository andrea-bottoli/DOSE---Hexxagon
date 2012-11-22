note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Rio Cuarto8"
	date: "20/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	G2_LOGIC_LOGIC_SET_GUI_TESTS

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_G2_LOGIC_LOGIC_SET_GUI_1
			-- Test 1 - Create a G2_LOGIC_LOGIC and check set_gui feature.
		note
			testing:  "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_gui: G2_GUI_IMAIN_MENU
		do
--			create a_gui.make()
--			create logic.make()
--			logic.set_gui (a_gui)
--			assert ("Create logic with and set the gui", a_gui.is_equals (logic.g2_gui))
			assert ("not_implemented", False)
		end

	-- Negative test

	TEST_G2_LOGIC_LOGIC_SET_GUI_2
			-- Test 2 - Create a G2_LOGIC_LOGIC and check set_gui feature with a Void G2_GUI_IMAIN_MENU.
		note
			testing: "user/G2"
		local
			logic: G2_LOGIC_LOGIC
			a_gui: G2_GUI_IMAIN_MENU
			rescued: BOOLEAN
		do
			if (not rescued) then
--				create logic.make()
--				logic.set_gui (a_gui)
			end
			assert ("not_implemented", False)
--			assert ("Is throw exception ", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end


