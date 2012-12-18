note
	description: "Summary description for {TEST_SET_G5_NET_CONTROLLER_CLIENT}."
	author: "Team RioCuarto4"
	date: "$20/11/2012$"
	revision: "$Revision: 1 $"

class
	TEST_SET_G5_NET_CONTROLLER_CLIENT
inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

	a_net_client: G5_NET_CONTROLLER_CLIENT

	associated_GUI: G5_IGUI_TO_NET

	socket_message: G5_MESSAGE_TEXTUAL

feature -- Test negative for feature make


	test_make_0
		note
			testing: "G5_NET_CONTROLLER_CLIENT/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test negative for make with port_number < 1024
		do
			if not rescued then
				create a_net_client.make (associated_GUI)
			end
			assert (" make raised problem with port_number < 1024", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Tests routines for feature make
	-- Fixed by Luca Falsina
	test_make_1
		note
			testing: "G5_NET_CONTROLLER_CLIENT/make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
			-- test make attributes_equal_to_arguments
		local
			concrete_gui: G5_GUI
		do
			create concrete_GUI.make_test
			create a_net_client.make (concrete_GUI)
			rescued := a_net_client.client_gui = concrete_GUI
			assert ("correct make ", rescued)
			assert("Incorrect initial parameter: client_messenger", a_net_client.client_messenger = void)
			assert("Incorrect initial parameter: player_name", a_net_client.player_name = void)
		end

end
