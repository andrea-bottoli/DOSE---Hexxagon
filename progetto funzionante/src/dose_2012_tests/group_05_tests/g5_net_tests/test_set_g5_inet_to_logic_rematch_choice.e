note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_REMATCH_CHOICE}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"


class
	TEST_SET_G5_INET_TO_LOGIC_REMATCH_CHOICE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_INET_TO_LOGIC
		-- Instance to the class that contains the command to test

	net_server: G5_NET_SERVER
		-- Auxiliary to instantiate of G5_INET_TO_LOGIC

	gui_to_net: G5_IGUI_TO_NET
		-- Auxiliary to instantiate of G5_NET_CLIENT

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	do_a_rematch: BOOLEAN
		-- parameter of the command to test

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
		end
end
