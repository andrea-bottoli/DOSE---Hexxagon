note
	description: "Summary description for {BS_NETWORK_MANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_SERVER

	inherit {NONE}
    EXECUTION_ENVIRONMENT
    BS_NET_CONSTANTS

create
	make

feature {NONE} -- Initialization

	make (pmt_game_object: attached BS_GAME; pmt_port: INTEGER; pmt_max_clients: INTEGER; pmt_agent_set: BS_NET_AGENT_SET; pmt_master_key: INTEGER)
			-- The two procedures will be invoked when a new machine respectively connects or disconnects.
			-- They can be used, for example, for removing the players belonging to a machine that disconnected.
		require
			allowed_port_range: 1024 <= pmt_port and pmt_port <= 65535
			non_negative_master_key: master_key >= 0
		do
			local_port := pmt_port
			game_object := pmt_game_object
			max_clients := pmt_max_clients
			local_port := pmt_port
			agent_set := pmt_agent_set
			master_key := pmt_master_key
			status_listening := false
			create connected_clients.make (max_clients)
		ensure
			port_stored: local_port = pmt_port
			agents_stored: agent_set = pmt_agent_set
			game_stored: game_object = pmt_game_object
			master_key_stored: master_key = pmt_master_key
			not_yet_listenineg: status_listening = false
		end

feature -- Interface for LOGIC component

	start_listening (): STRING
		require
			not_yet_connected: status_listening = False
			socket_void: socket = void
		local
			failed: BOOLEAN
			port_in_use: BOOLEAN
		do
			if not failed then
				create socket.make_server_by_port (local_port)
				socket.set_timeout (socket_timeout_secs) -- Ignored in practice.
				socket.listen (socket_pending_connections)
				status_listening := true
				if attached socket as socket2 then
					create accepter_thread.make(socket2, agent client_accepted)
				end
				accepter_thread.launch()
				result := "OK"
			else
				socket := void
				if port_in_use then
					result := "ERROR_PORT_NOT_AVAILABLE"
				else
					result := "ERROR_UNKNOWN"
				end
			end
		ensure
			result_format: (status_listening and Result ~ "OK") or (not status_listening and (Result ~ "ERROR_PORT_NOT_AVAILABLE" or Result ~ "ERROR_UNKNOWN"))
			socket_created: (socket /= void) = status_listening
		rescue
			if (create {EXCEPTION_MANAGER}).last_exception.code = 24 then
				port_in_use := true
			end
			failed := true
			retry
		end

	stop_listening
		require
			listening: status_listening = true
			socket_non_void: socket /= void
		do
			accepter_thread.stop_gracefully()
			socket.close()
			status_listening := false
			socket := void
		ensure
			not_listening: status_listening = false
			socket_destroyed: socket = void
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

feature {BS_NET_REMOTE_MACHINE} -- Accessible to BS_NET_REMOTE_MACHINE

	master_key: INTEGER

feature {NONE} -- Private

	client_accepted(client_socket: attached NETWORK_STREAM_SOCKET)
	-- TODO: Enforce maximum client number here.
	require
		client_socket.is_open_read and client_socket.is_open_write
	local
		new_machine: BS_NET_REMOTE_MACHINE
	do
		client_socket.set_timeout (socket_timeout_secs)
		-- io.put_string ("Building machine.%N")
		create new_machine.make (client_socket, current, agent_set, agent machine_disconnected_handler)

		connected_clients.extend (new_machine)
		if attached agent_set.machine_connected_agent as x then
			x.call ([new_machine])
		end
	end

	machine_disconnected_handler(machine: BS_NET_REMOTE_MACHINE)
	do
		connected_clients.prune_all (machine)
		if attached agent_set.machine_disconnected_agent as x then
			x.call ([machine])
		end
	end

feature {NONE} -- Locals

	game_object: BS_GAME

	agent_set: BS_NET_AGENT_SET

	local_port: INTEGER

	accepter_thread: BS_NET_SOCKET_ACCEPTER

	max_clients: INTEGER

	socket: detachable NETWORK_STREAM_SOCKET

	status_listening: BOOLEAN

	connected_clients: ARRAYED_LIST [BS_NET_REMOTE_MACHINE]


invariant
	allowed_port_range: 1024 <= local_port and local_port <= 65535
	not_too_many_clients: connected_clients.count <= max_clients

end
