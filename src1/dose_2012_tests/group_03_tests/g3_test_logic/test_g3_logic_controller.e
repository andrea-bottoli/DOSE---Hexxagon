note
	description: "Test for controller"
	author: "Lydatakis Georgiou Kateros"
	date: "$Date$"
	revision: "$0.1$"
	testing: "type/manual"

class
	TEST_G3_LOGIC_CONTROLLER

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			--assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			--assert ("not_implemented", False)
		end

feature -- Test routines

	TEST_G3_LOGIC_CONTROLER
			-- New test routine
		do
			--assert ("not_implemented", False)
		end

		test_register_players
		local
			control:G3_CONTROLLER
			mes:G3_MESSAGE
		do
			create control.make
			create mes.make
			assert("register",control.register_players (mes)/=void)

		end

--		test_set_tichu_window
--		local
--			controller:G3_CONTROLLER
--			window: G3_ABSTRACT_OBSERVER
--		do
--			create controller
--			--create window
--			controller.set_tichu_window (window)
--			assert ("is linked",controller.is_window_linked)
--		end

--		test_set_tichu_model
--		local
--			controller:G3_CONTROLLER
--			model:G3_MODEL
--		do
--			create controller
--			create model.make
--			controller.set_tichu_model (model)
--			assert("is subscribed",controller.is_model_window_suscribed)
--		end

end


