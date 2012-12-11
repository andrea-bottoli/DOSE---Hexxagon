note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_HX_NET_SERVER

inherit
	EQA_TEST_SET

feature -- Test routines

	test_hx_net_server_init
			-- New test routine
		note
			testing:  "covers/{TTT_MODEL}", "covers/{HX_N_SERVER}"
		local
			l_server: HX_N_SERVER
		do
			create l_server.server_create(10000)

			assert("not_void", l_server /= void)
		end

end


