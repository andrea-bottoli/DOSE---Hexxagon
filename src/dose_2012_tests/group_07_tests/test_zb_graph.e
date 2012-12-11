note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ZB_GRAPH

inherit
	EQA_TEST_SET

feature -- Test routines

	TEST_ZB_GRAPH
			-- New test routine
		note
			testing:  "covers/{ZB_NODE}"
		local
--		node:ZB_NODE
		do
			print("ok")
--				create node.make(0)

--			--node.printID
--			assert("node id wrong:",node.id/=0)
		end

end


