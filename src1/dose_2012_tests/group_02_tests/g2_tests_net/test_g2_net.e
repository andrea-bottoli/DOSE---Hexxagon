note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G2_NET

inherit
	EQA_TEST_SET

feature -- Test routines

	test_g2_net_make_01
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.make"
			testing: "user/G2"
		local
			ip:STRING
			port:INTEGER
			net:G2_NET_NET
		do
			ip:="129.000.000.000"
			port:=3
			net.make(ip,port,False)
			assert ("valid creation of net",net.ip_address=ip and net.port=port)
		end


		test_g2_net_make_02
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.make"
			testing: "user/G2"
		local
			ip:STRING
			port:INTEGER
			net:G2_NET_NET
		do
			ip:="localhost"
			port:=3
			net.make(ip,port,True)
			assert ("valid creation of net",net.ip_address=ip and net.port=port)
		end


	test_g2_net_create_connection
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.create_connection"
			testing: "user/G2"
		local
			ip:STRING
			port:INTEGER
			net:G2_NET_NET
		do
			ip:="localhost"
			port:=3
			net.make(ip,port,True)
			net.create_connection
		end

	test_g2_net_join_connection
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.join_connection"
			testing: "user/G2"
		local
			ip1:STRING
			port1:INTEGER
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			net2:G2_NET_NET
		do
			ip1:="localhost"
			port1:=3
			net1.make(ip1,port1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			net2.make(ip2,port2,False)
			net2.join_connection
		end

	test_g2_net_send_rules
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.send_rules"
			testing: "user/G2"
		local
			ip1:STRING
			port1:INTEGER
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			net2:G2_NET_NET
			rules_array:ARRAY[BOOLEAN]
			logic: G2_LOGIC_LOGIC
		do
			create rules_array.make_filled (False, 1, 7)
			ip1:="localhost"
			port1:=3
			net1.make(ip1,port1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			net2.make(ip2,port2,False)
			net2.join_connection
			logic.set_rules (rules_array)
			assert ("master net",net1.master=True)
			net1.send_rules (rules_array)

		end

	test_g2_net_receive_rules
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.receive_rules"
			testing: "user/G2"
		local
			ip1:STRING
			port1:INTEGER
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			net2:G2_NET_NET
			rules_array:ARRAY[BOOLEAN]
			logic: G2_LOGIC_LOGIC
		do
			create rules_array.make_filled (False, 1, 7)
			ip1:="localhost"
			port1:=3
			net1.make(ip1,port1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			net2.make(ip2,port2,False)
			net2.join_connection
			logic.set_rules (rules_array)
			net1.send_rules (rules_array)
			assert ("slave net",net2.master=False)
			--net2.receive_rules

		end

	test_g2_net_send_state
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.send_state"
			testing: "user/G2"
		local
			ip1:STRING
			port1:INTEGER
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			net2:G2_NET_NET
			state:G2_LOGIC_STATE
			logic1: G2_LOGIC_LOGIC
		do
			--create state
			ip1:="localhost"
			port1:=3
			logic1.set_state (state)
			net1.make(ip1,port1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			net2.make(ip2,port2,False)
			net2.join_connection
			assert ("master net",net1.master)
			net1.send_state (state)

			end

	test_g2_net_receive_state
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.receive_state"
			testing: "user/G2"
		local
			ip1:STRING
			port1:INTEGER
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			net2:G2_NET_NET
			state:G2_LOGIC_STATE
			state2:G2_LOGIC_STATE
			logic1: G2_LOGIC_LOGIC
		do
			--create state
			--create state2
			ip1:="localhost"
			port1:=3
			logic1.set_state (state)
			net1.make(ip1,port1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			net2.make(ip2,port2,False)
			net2.join_connection
			net1.send_state (state)
			state2 := net2.receive_state
			--assert ("slave net join connection",state.is_equal(state2)
			end

		test_g2_net_valid_ip_address
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.valid_ip_address"
			testing: "user/G2"
		local
			ip:STRING
			port:INTEGER
			net:G2_NET_NET
		do
			ip:="129.000.000.000"
			port:=3
			assert ("valid ip address",net.valid_ip_address (ip))
		end

	test_g2_net_valid_number_rules
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.valid_number_rules"
			testing: "user/G2"
		local
			ip:STRING
			port:INTEGER
			net:G2_NET_NET
			rules_array:ARRAY[BOOLEAN]
		do
			create rules_array.make_filled (False, 1, 7)
			ip:="localhost"
			port:=3
			net.make(ip,port,True)
			assert ("master net",net.valid_number_rules (rules_array))

		end

end
