note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	G3_TEST_NETWORK_RUN_SERVER_MODE

inherit
	EQA_TEST_SET

feature -- Test routines

	run_server_mode
			-- New test routine
		local
			net : G3_NETWORK
		do
			create net.make(false)
			net.run_server_mode
			-- incomplete test, need method for check if in server mode
			assert ("not_implemented", false)
		end

end


