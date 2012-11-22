note
	description: "[
					An object for retrieving the IP address of the local machine.
					Based on http://gnuu.org/2008/09/19/a-basic-http-req-in-eiffel-and-rant/
				]"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_ADDRESS_REQUEST

inherit
	HTTP_PROTOCOL
		redefine default_create end

create
	default_create

feature {NONE} -- Initialization

	default_create
		local
			ip_request_url: HTTP_URL
		do
			create ip_request_url.make ("http://api.externalip.net/ip/")
			make (ip_request_url)
		end

feature -- IP Request

	ip_address: STRING
			-- The external IP address of the local machine
		require
			not_open: not is_open
			not_initiated: not transfer_initiated
		once
			set_read_mode
			open
			initiate_transfer

			from Result := ""
			until not is_packet_pending or not is_readable
			loop
				read
				Result.append (last_packet)
			end
			close
		ensure
			no_packets_left: not is_packet_pending
			closed: not is_open
		end

end
