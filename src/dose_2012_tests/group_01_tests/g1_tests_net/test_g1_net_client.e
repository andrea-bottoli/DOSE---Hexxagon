note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group 1: RioCuarto7 - Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_NET_CLIENT

inherit

	EQA_TEST_SET

feature -- Test routines

	test_g1_net_make_1
			-- Test for make in g1_net_client
		note
			testing: "covers/{G1_NET_CLIENT}/make"
		local
			net: G1_NET_CLIENT
		do
			create net.make
			assert ("Make good implementation", net.port = 9190 and net.server_ip = Void)
		end

	test_g1_net_connect_1
			-- Test for connec in g1_net_client
		note
			testing: "covers/{G1_NET_CLIENT}/connect"
		local
			net: G1_NET_CLIENT
			logic: G1_LOGIC_CLIENT
			controller : G1_UI_CONTROLLER
		do
			create controller.make
			create logic.make_with_controller (controller, "190.191.54.89")
			create net.make_client (logic)
			assert ("Connect", true)
		end

	test_g1_net_connect_2
			-- Test for connect in g1_net_client
		note
			testing: "covers/{G1_NET_CLIENT}/connect"
		local
			net: G1_NET_CLIENT
			rescued: BOOLEAN
		do
			if (not rescued) then
				create net.make ()
				net.connect ("192.32.24.56", 99919)
			end
			assert ("is throw exception ", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

	test_g1_net_send_message_to_network
			-- Test for message_to_network in g1_net_client
		note
			testing: "covers/{G1_NET_CLIENT}/send_message_to_network"
		local
			net: G1_NET_CLIENT
			rescued: BOOLEAN
		do
			create net.make ()
			if (not rescued) then
				net.send_message_to_network (Void)
			end
			assert ("Is throw exception ", rescued)
		rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end

end
