note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_ADD_GUI_CONTROLLER

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

	a_net_component: G5_INET_TO_GUI
		-- Parameter of the command to test

	a_net_client: G5_NET_CONTROLLER_CLIENT
		-- Auxiliary to instantiate of G5_INET_TO_GUI

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			class_test := gui
			create a_net_client.make (class_test)
		end

feature -- Test positive

	add_gui_controller0
		-- add_gui_controller('one_client')
		note
			testing: "G5_IGUI_TO_NET/.add_gui_controller"
		do
			a_net_component := a_net_client
			class_test.add_gui_controller (a_net_component)
			assert ("add_gui_controller was successful", class_test.net_component = a_net_component)
		end

end
