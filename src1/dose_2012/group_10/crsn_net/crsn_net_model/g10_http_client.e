class
	G10_HTTP_CLIENT

inherit
	HTTP_PROTOCOL
		export
			{ANY}
				headers,
				content_length,
				get_headers,
				get_content_length
		redefine
			check_error
		end

create
	make

feature -- HTTP requests

	get: STRING_8
		require
			not_open: not is_open
			not_initiated: not transfer_initiated
		do
			set_read_mode
			open
			initiate_transfer

			from
				Result := ""
			until
				not is_packet_pending or not is_readable
			loop
				read
				Result.append (last_packet)
			end

			close
		ensure
			no_packets_left: not is_packet_pending
			closed: not is_open
		end

feature {NONE} -- Implementation

	check_error do end

end
