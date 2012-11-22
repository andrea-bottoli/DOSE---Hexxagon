note
	description: "Summary description for {BS_NETWORK_MANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_SERVER

create
	make

feature {NONE} -- Initialization

	make (pmt_game_object: BS_GAME; machine_connected_procedure: PROCEDURE [ANY, TUPLE [BS_NET_MACHINE]]; machine_disconnected_procedure: PROCEDURE [ANY, TUPLE [BS_NET_MACHINE]])
			-- The two procedures will be invoked when a new machine respectively connects or disconnects.
			-- They can be used, for example, for removing the players belonging to a machine that disconnected.
		do
			status_listening := false
			game_object := pmt_game_object
		ensure
			status_listening = false
			game_object = pmt_game_object
		end

feature -- Testing

	fake_machine_connect (new_machine: BS_NET_REMOTE_MACHINE)
		require
			status_listening = True
		do
			connected_clients.extend (new_machine)
			machine_connected_agent.call ([new_machine])
		end

	fake_machine_disconnect(pmt_index: INTEGER_32)
		do
			connected_clients.go_i_th (pmt_index)
			machine_disconnected_agent.call ([connected_clients.item])
			connected_clients.remove ()
		end

feature -- Interface for LOGIC component

	start_listening (port: INTEGER): STRING
		require
			allowed_port_range: 1024 <= port and port <= 65535
			not_yet_connected: status_listening = False
		do
		ensure
			result_format: (Result = "OK" and status_listening = True) or ((Result = "ERROR_PORT_NOT_AVAILABLE" or Result = "ERROR_UNKNOWN") and status_listening = False)
			port_stored: local_port = port
			connected_clients.count = old connected_clients.count + 1
		end

	stop_listening
		require
			listening: status_listening = true
		do
		ensure
			not_listening: status_listening = false
		end

	get_listening: BOOLEAN
		require
			True
		do
			Result := status_listening
		ensure
			readonly: status_listening = old status_listening
			correct_result: Result = status_listening
		end

	get_machines: LIST [BS_NET_REMOTE_MACHINE]
		require
			connected_clients /= void
		local
			myreturn: ARRAYED_LIST [BS_NET_REMOTE_MACHINE]
		do
			create myreturn.make (max_clients)
			myreturn.copy (connected_clients)
			Result := myreturn
		ensure
			returning_a_copy: Result ~ connected_clients
		end

feature {NONE} -- Implementation

	connected_clients: ARRAYED_LIST [BS_NET_REMOTE_MACHINE]

	local_port: INTEGER

	status_listening: BOOLEAN

	game_object: BS_GAME

		-- This can probably be removed.

	send_data (client_id: INTEGER; serialized_data: STRING)
		require
			client_id_exists: 0 <= client_id and client_id < connected_clients.count
			data_not_empty: serialized_data.count > 0
		do
		ensure
		end

		-- constants

	max_clients: INTEGER
		once
			Result := 4
		end

feature {NONE}

		-- Locals

	machine_connected_agent: PROCEDURE [ANY, TUPLE [BS_NET_MACHINE]]

	machine_disconnected_agent: PROCEDURE [ANY, TUPLE [BS_NET_MACHINE]]

invariant
	allowed_port_range: 1024 <= local_port and local_port <= 65535
	not_too_many_clients: connected_clients.count <= max_clients

end
