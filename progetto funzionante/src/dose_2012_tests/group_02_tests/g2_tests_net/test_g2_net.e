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
			logic:G2_LOGIC_LOGIC
			net:G2_NET_NET
		do
			ip:="129.000.000.000"
			port:=3
			create logic
			net.make(ip,port,logic,False)
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
			logic:G2_LOGIC_LOGIC
			net:G2_NET_NET
		do
			ip:="localhost"
			port:=3
			create logic
			net.make(ip,port,logic,True)
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
			logic:G2_LOGIC_LOGIC
			net:G2_NET_NET
		do
			ip:="localhost"
			port:=3
			create logic
			net.make(ip,port,logic,True)
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
			logic1:G2_LOGIC_LOGIC
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			logic2:G2_LOGIC_LOGIC
			net2:G2_NET_NET
		do
			ip1:="localhost"
			port1:=3
			create logic1
			net1.make(ip1,port1,logic1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			create logic2
			net2.make(ip2,port2,logic2,False)
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
			logic1:G2_LOGIC_LOGIC
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			logic2:G2_LOGIC_LOGIC
			net2:G2_NET_NET
			rules_array:ARRAY[BOOLEAN]
		do
			create rules_array.make_filled (False, 1, 7)
			ip1:="localhost"
			port1:=3
			create logic1
			net1.make(ip1,port1,logic1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			create logic2
			net2.make(ip2,port2,logic2,False)
			net2.join_connection
			net1.logic.set_rules (False, False, False, False, False, False, False)
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
			logic1:G2_LOGIC_LOGIC
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			logic2:G2_LOGIC_LOGIC
			net2:G2_NET_NET
			rules_array:ARRAY[BOOLEAN]
		do
			create rules_array.make_filled (False, 1, 7)
			ip1:="localhost"
			port1:=3
			create logic1
			net1.make(ip1,port1,logic1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			create logic2
			net2.make(ip2,port2,logic2,False)
			net2.join_connection
			net1.logic.set_rules (False, False, False, False, False, False, False)
			net1.send_rules (rules_array)
			assert ("slave net",net2.master=False)
			net2.receive_rules

		end

	test_g2_net_send_state
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.send_state"
			testing: "user/G2"
		local
			ip1:STRING
			port1:INTEGER
			logic1:G2_LOGIC_LOGIC
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			logic2:G2_LOGIC_LOGIC
			net2:G2_NET_NET
			state:G2_LOGIC_STATE
		do
			create state
			ip1:="localhost"
			port1:=3
			create logic1
			logic1.set_state (state)
			net1.make(ip1,port1,logic1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			create logic2
			net2.make(ip2,port2,logic2,False)
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
			logic1:G2_LOGIC_LOGIC
			net1:G2_NET_NET
			ip2:STRING
			port2:INTEGER
			logic2:G2_LOGIC_LOGIC
			net2:G2_NET_NET
			state:G2_LOGIC_STATE
		do
			create state
			ip1:="localhost"
			port1:=3
			create logic1
			logic1.set_state (state)
			net1.make(ip1,port1,logic1,True)
			net1.create_connection
			ip2:="129.000.000.000"
			port2:=3
			create logic2
			net2.make(ip2,port2,logic2,False)
			net2.join_connection
			net1.send_state (state)
			net2.receive_rules
			--assert ("slave net join connection",net1.is_equal(net2)
			end

		test_g2_net_valid_ip_address
			-- New test routine
		note
			testing:  "covers/{G2_NET_NET}.valid_ip_address"
			testing: "user/G2"
		local
			ip:STRING
			port:INTEGER
			logic:G2_LOGIC_LOGIC
			net:G2_NET_NET
		do
			ip:="129.000.000.000"
			port:=3
			create logic
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
			logic:G2_LOGIC_LOGIC
			net:G2_NET_NET
			rules_array:ARRAY[BOOLEAN]
		do
			create rules_array.make_filled (False, 1, 7)
			ip:="localhost"
			port:=3
			create logic
			net.make(ip,port,logic,True)
			assert ("master net",net.valid_number_rules (rules_array))

		end

end
