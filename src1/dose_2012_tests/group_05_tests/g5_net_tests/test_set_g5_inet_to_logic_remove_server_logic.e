note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_REMOVE_SERVER_LOGIC}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_INET_TO_LOGIC_REMOVE_SERVER_LOGIC

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

	added_server_logic: G5_ITABLE
		-- Parameter of the command to test

	table: G5_TABLE
		-- Auxiliary to instantiate of G5_ITABLE

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
		end

feature -- Test positive

	remove_server_logic0
		-- Remove the server logic
		note
			testing: "G5_INET_TO_LOGIC/.remove_server_logic"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		do
			create table.make_game_default (4, class_test)
			added_server_logic := table
--			class_test.add_server_logic (added_server_logic)
			assert("A Server logic component was not added", class_test.server_logic = added_server_logic)
			class_test.remove_server_logic (added_server_logic)
			assert ("remove_server_logic has not remove the logic component.", class_test.server_logic = void)
		end

feature -- Test negative

	remove_server_logic1
		-- Remove server logic component, which has not been set yet
		note
			testing: "G5_INET_TO_LOGIC/.remove_server_logic"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			rescued: BOOLEAN
		do
			if not rescued then
				create table.make_game_default (4, class_test)
				added_server_logic := table
				class_test.remove_server_logic (added_server_logic)
				class_test.remove_server_logic (added_server_logic)
			end
			assert ("remove_server_logic raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end
end
