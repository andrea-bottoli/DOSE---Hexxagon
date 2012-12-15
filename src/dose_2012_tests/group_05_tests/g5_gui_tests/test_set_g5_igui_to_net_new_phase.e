note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$20/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_NEW_PHASE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_IGUI_TO_NET
		-- Instance to the class that contains the command to test

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	new_phase_name: STRING
		-- Parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
		end

feature -- Test positive

--	new_phase0
--		-- new_phase("CLEAN-UP")
--		note
--			testing: "G5_IGUI_TO_NET/.new_phase"
--		local
--			main_view: G5_MAIN_VIEW
--		do
--			create main_view.make (<<"one","two","three">>, "one", gui, void)

--			new_phase_name := "Buy"
--			class_test.set_main_view (main_view)
--			class_test.new_phase (new_phase_name)
--			assert ("new_phase makes the phase change ", class_test.main_view.board.current_phase.is_equal (new_phase_name))
--		end

feature -- Test negative

	new_phase1
		-- new_phase("buy")
		note
			testing: "G5_IGUI_TO_NET/.new_phase"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				new_phase_name := "buy"
				class_test.new_phase (new_phase_name)
			end
			assert ("new_phase raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
