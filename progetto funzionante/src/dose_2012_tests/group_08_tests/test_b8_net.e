note
	description: "[
		Test for the net component
	]"
	author: "Stefano Di Palma"
	date: "19/11/2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_B8_NET

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
			create b8_net.make
			--assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			--assert ("not_implemented", False)
		end

feature -- Test routines

	b8_net:B8_NET

	test_create_server
		note
			testing:  "covers/{B8_NET}.create_server"
			testing:  "user/B8"

		local
			client:B8_OUR_CLIENT
		do
			b8_net.create_server (2130706433, 5000)
			create client.make (5000,"localhost")
		end

	test_connect_to_server
		note
			testing:  "covers/{B8_NET}.connect_to_server"
			testing:  "user/B8"
		do
			b8_net.connect_to_server (2130706433, 5000)
			--assert("Connection to server failed",b8_net.is_connected_to_server)
			assert("Connection to server failed",False)
		end

	test_get_hosts
		note
			testing:  "covers/{B8_NET}.get_hosts"
			testing:  "user/B8"
		do
			--assert("Failed to retrieve the hosts",b8_net.get_hosts()=Void)
			assert("Failed to retrieve the hosts",False)
		end

	test_host_a_new_game
		note
			testing:  "covers/{B8_NET}.host_a_new_game"
			testing:  "user/B8"
		do
			b8_net.host_a_new_game (2130706433, 5000)
			--assert("Failed to host a new game",b8_net.get_hosts().length/=1)
			assert("Failed to host a new game",False)
		end

end


