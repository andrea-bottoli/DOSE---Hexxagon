note
	description: "Class with some network information: External IP and Nationality of the player"
	author: "MILANO7: Jiang Wu"
	date: "10/11/2012"
	revision: "1.0"

class
	G1_IP_ADDRESS
inherit
	HTTP_PROTOCOL
		redefine default_create end

create
	default_create,country_create

feature {NONE} -- Initialization

	default_create
		local
			ip_request_url: HTTP_URL
		do
			create ip_request_url.make ("http://api-sth01.exip.org/?call=ip")
			make (ip_request_url)
		end

	country_create
		local
			ip_req: HTTP_URL
			txt: STRING
		do
			default_create
			create txt.make_from_string ("http://ip2country.hackers.lv/api/ip2country?ip=")
			txt.append (ip_address)
			create ip_req.make (txt)
			make (ip_req)
		end

feature -- IP Request

	ip_address: STRING
			-- The external IP address of the local machine
		require
			not_open: not is_open
			not_initiated: not transfer_initiated
		once

			if Result = Void then		--Do no work if in retry
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
			end

		ensure
			no_packets_left: not is_packet_pending
			closed: not is_open
		rescue
			Result := "127.0.0.1"
			retry
		end

		country_code: STRING
			require
				not_open: not is_open
				not_initiated: not transfer_initiated
			once

				if Result = Void then		--Do no work if in retry
					set_read_mode
					open
					initiate_transfer

					from Result := ""
					until not is_packet_pending or not is_readable
					loop
						read
						Result.append (last_packet.split (':').last.split ('}').first.split ('"').at (2))
					end
					close
				end

			ensure
				no_packets_left: not is_packet_pending
				closed: not is_open
			rescue
				Result := "AR"
				retry
			end

end
