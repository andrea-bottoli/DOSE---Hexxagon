note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HX_NET_CLIENT

inherit
	EQA_TEST_SET

feature -- Test routines

	test_hx_net_client_init
			-- New test routine
		note
			testing: "covers/{HX_NET_CLIENT}"
			testing: "user/HX"
		local
			l_client: HX_N_CLIENT
		do
			-- Creating with ip address and port number.
			create l_client.connect("127.0.0.1", "player1", 10000)

			assert("client_not_void", l_client /= void)
		end

end


