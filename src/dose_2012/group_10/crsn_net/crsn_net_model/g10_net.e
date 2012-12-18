note
	description: "Summary description for {G10_SERVER}."
	author: "John Voyatzis"
	date: "8/11/2012"
	revision: "0.0"

class
	G10_NET

inherit

    SOCKET_RESOURCES
	THREAD_CONTROL
    STORABLE



feature

	receive_msg(sock : NETWORK_STREAM_SOCKET) :   G10_CRSN_MESSAGE
	require
	--	socket_closed : sock.is_closed = False

	do
		Result := void
		if sock.ready_for_reading = true AND sock.is_closed = false
		then

      		if attached {G10_CRSN_MESSAGE} sock.retrieved as norm_msg
      		then
      			Result := norm_msg
      		elseif attached {G10_CRSN_DATA_MESSAGE} sock.retrieved as data_msg
      		then
      			Result := data_msg
      		elseif attached {G10_CRSN_SPECIAL_DATA_MESSAGE} sock.retrieved as sp_data_msg
      		then
      			Result := sp_data_msg
      		end
		end


		ensure
			--empty: Result/=void


	end

	send_msg(a_msg: ANY socket : NETWORK_STREAM_SOCKET  )
			-- responce to client (player)

	do
		socket.independent_store (a_msg)

	end




end
