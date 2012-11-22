note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_ADD_OBSERVER}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"


class
	TEST_SET_G5_INET_TO_LOGIC_ADD_OBSERVER

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

	host_added_observer: G5_ITABLE
		-- Parameter of the command to test

	table: G5_TABLE
		-- Auxiliary to instantiate of G5_ITABLE

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			gui_to_net := gui
			create net_server.make (1025,2)
			class_test := net_server
		end

feature -- Test positive

	add_observer0
		-- Add new observer
		note
			testing: "G5_INET_TO_LOGIC/.add_observer"
		local
			amount_observers: ARRAY[G5_ITABLE]
		do
			amount_observers := class_test.hosts_observering
			table.make_game_table ()
			host_added_observer := table
			class_test.add_observer (host_added_observer)
			assert ("add_observer the observer was recorded", class_test.hosts_observering.has(host_added_observer))
			assert ("add_observer now there is an observer more", class_test.hosts_observering.count = amount_observers.count)
		end

feature -- Test negative

	add_observer1
		-- Add an observer who was already included
		note
			testing: "G5_INET_TO_LOGIC/.add_observer"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				table.make_game_table ()
				host_added_observer := table
				class_test.add_observer (host_added_observer)
				class_test.add_observer (host_added_observer)
			end
			assert ("add_observer raised problem", rescued)
			rescue
				if not rescued then
					rescued := True
					retry
				end
		end
end
