note
	description: "Implementation of a main class for the NET sub-componet of the game TTNG."
	author: "Rio Cuarto8"
	date: "05/11/2012"
	revision: "1.0"

class
	G2_NET_NET

inherit

	G2_NET_INET

create
	make

feature -- Initialization

	make (ip: STRING; p: INTEGER; l: G2_LOGIC_ILOGIC; m: BOOLEAN)
		-- Constructor of the class
		require
			valid_ip: valid_ip_address (ip)
			valid_port_connection: p > 0
			valid_logic: l /= Void
		do
		ensure
			assing_ip: (ip = ip_address and not master) or (ip = "localhost" and master)
			assing_p: p = port
			--assing_l: l.is_equals(logic)
			assing_m: m = master
		end

feature -- Connection

	create_connection
			--Create a conection with the other net sub-componet slave
		require else
			is_master: master
		do
		end

	join_connection
			--Create a conection with the other net sub-componet master
		require else
			not_master: not master
		do
		end

feature -- Set Rules

	send_rules (rules: ARRAY [BOOLEAN])
			--Send the rules to the other player
		require else
			is_master: master
			is_valid_rules: valid_number_rules (rules)
		do
		end

	receive_rules
			-- received rules from the another player
			-- and send it to logic sub-componet
		require else
			not_master: not master
		do
		end

feature -- Sharing State

	send_state (state: G2_LOGIC_ISTATE)
			--Send a valid state to the other player
		require else
			not_void_state: state /= Void
		do
		end

	receive_state
			-- received a valid state from the another player
			-- and send it to logic sub-componet
		do
		end

feature -- Miscellaneous

	valid_ip_address (ip: STRING): BOOLEAN
			-- is a valid ip?
		require
			not_void_ip: ip /= Void
		do
			Result := True
		ensure
			valid_length: ip.count > 6 and ip.count < 16
				--valid_characters:
		end

	valid_number_rules (rules: ARRAY [BOOLEAN]): BOOLEAN
			-- is validad the set of rules
		require
			not_void_rules: rules /= Void
		do
			Result := True
		ensure
				--valid_length: rules.count = #rules
		end

feature -- Implementation

	master: BOOLEAN
			-- is this NET master?

	logic: G2_LOGIC_ILOGIC
			-- logic to send the different messages

	ip_address: STRING
			-- addres to connect if the NET is slave

	port: INTEGER
			-- port to connect if the NET is slave or open if the NET is master

invariant
	address_for_master: master implies ip_address = "localhost"

end
