note
	description: "Summary description for {BS_NET_SOCKET_ACCEPTER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_SOCKET_ACCEPTER

inherit

	THREAD
		rename
			make as thread_make
		export
			{NONE} thread_make
		end

	BS_NET_CONSTANTS
		export
			{NONE} all
		end

create
	make

feature {BS_NET_SERVER} -- Constructor

	make (pmt_socket: attached NETWORK_STREAM_SOCKET; pmt_client_connected_procedure: attached PROCEDURE [ANY, TUPLE [NETWORK_STREAM_SOCKET]])
		do
			thread_make ()
			socket := pmt_socket
			client_connected_procedure := pmt_client_connected_procedure
		ensure
			socket = pmt_socket
			client_connected_procedure = pmt_client_connected_procedure
		end

	execute ()
		require else
			stop_not_requested:	stop_requested = false
		local
			last_accepted: SOCKET
		do
			running := true
			from
			until
				stop_requested
			loop
				-- io.put_string ("Accepting...%N")
				socket.set_accept_timeout (socket_accept_timeout_millis)
				socket.accept ()
				if socket.accepted /= void and socket.accepted /= last_accepted then
					last_accepted := socket.accepted
					client_connected_procedure.call ([socket.accepted])
				else
					-- io.put_string ("Nobody tried to connect.%N")
				end
			end
			running := false
		end

	stop_gracefully ()
		require
			not_stop_requested: not stop_requested
			is_running: running
		do
			stop_requested := true
			Current.join ()
			stop_requested := false
		ensure
			not_stop_requested: not stop_requested
			no_longer_running: not running
		end

feature {NONE} -- Locals

	socket: attached NETWORK_STREAM_SOCKET

	running: BOOLEAN

	stop_requested: BOOLEAN

	client_connected_procedure: detachable PROCEDURE [ANY, TUPLE [NETWORK_STREAM_SOCKET]]

end
