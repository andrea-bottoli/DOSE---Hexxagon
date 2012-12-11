note
	description: "[
					The G5_IP_MANAGER is a direct descendent of the interface
					INET_ADDRESS_FACTORY and it's able to recognize if a string
					matches the valid IPv4 format and eventually trasform it into
					the consistent NET_ADDRESS.
					]"
	author: "Luca Falsina"
	date: "09.12.2012"
	revision: "0.1"

class
	G5_IP_MANAGER

inherit
	INET_ADDRESS_FACTORY

create
	make_empty

feature

	make_empty
			-- This simply intializes the object.
		do
		end

	is_a_valid_IPv4 (ip_address_string: STRING): BOOLEAN
			-- This feature checks that the incoming string matches correctly with
			-- an IP address of version 4 (x.x.x.x with 0 <= x <= 255).
		require
			not_void_or_empty_IP: ip_address_string /= void and not(ip_address_string.is_empty)
		local
			partial_list: ARRAYED_LIST[STRING]
			has_invalid_natural: BOOLEAN
			has_whitespace: BOOLEAN
			dot_counter: INTEGER
			string_index: INTEGER
		do
			-- If a whitesce or a number of dot different from 3 is found,
			-- the Result is false
			from
				dot_counter := 0
				string_index := 1
			until
				string_index = ip_address_string.count + 1
			loop
				if ip_address_string.item (string_index).is_equal ('.') then
					dot_counter := dot_counter + 1
				end

				if ip_address_string.item (string_index).is_space then
					has_whitespace := true
				end

				string_index := string_index + 1
			end

			if ( dot_counter /= 3 or has_whitespace )then
				Result := false
			else
				-- Otherwise every field must be a natural number
				-- between 0 and 255.
				create partial_list.make(4)
				partial_list := split (ip_address_string, '.')

				from
					partial_list.start
				until
					partial_list.off
				loop
					if not(partial_list.item.is_natural_8) then
						has_invalid_natural := true
					end

					partial_list.forth
				end

				-- Depending on the presence of an invalid field,
				-- a different Result is provided.
				if has_invalid_natural then
					Result := false
				else
					Result := true
				end

			end
		ensure
			-- The string representing an ip address is in the form x.x.x.x with 0 <= x <= 255
		end

	generates_IP_from_string (ip_address_string: STRING): INET_ADDRESS
			-- After that a valid IPv4 is obtained, a consistent NET_ADDRESS is returned..
		require
			is_a_valid_IPv4 (ip_address_string)
		local
--			partial_list: ARRAYED_LIST[STRING]
--			index_array: INTEGER
			address_array: ARRAY[NATURAL_8]
		do
			-- In this case a loopback address is generated..
			if ip_address_string.is_equal ("127.0.0.1") then
				Result := create_loopback

			else
				-- Otherwise the IP address is created depending on the input string..
				create address_array.make_filled (0, 1, 4)
--			create partial_list.make (4)
--			partial_list := split (ip_address_string, '.')
--			index_array := 1

--			from
--				partial_list.start
--			until
--				partial_list.off
--			loop
--				address_array.force (partial_list.item.to_natural_8, index_array)

--				index_array := index_array + 1
--				partial_list.forth
--			end

				address_array := text_to_numeric_format_v4 (ip_address_string)

				Result:= create_from_address (address_array)
			end

		ensure
			a_result_is_obtained: Result /= void
		end

end
