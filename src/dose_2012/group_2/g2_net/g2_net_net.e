note
	description: "Implementation of a main class for the NET sub-componet of the game TTNG."
	author: "Rio Cuarto8"
	date: "05/12/2012"
	revision: "1.0"

class
	G2_NET_NET

inherit

	G2_NET_INET

	STORABLE

create
	make

feature -- Initialization

	make (ip: STRING; p: INTEGER; m: BOOLEAN)
			-- Constructor of the class G2_NET_NET
		require
			valid_ip: valid_ip_address (ip)
			valid_port_connection: p >= 10000 and p <= 11000
		do
			master := m
			if master then
				ip_address := "localhost"
			else
				ip_address := ip
			end
			if p >= 10000 and p <= 11000 then
				port := p
			end
		ensure
			assing_ip: (ip.is_equal (ip_address) and not master) or (ip_address.is_equal("localhost") and master)
			assing_p: p = port
			assing_m: m = master
		end

feature -- Connection

	create_connection
			--Create a conection with the other net sub-componet slave
		require else
			is_master: master
		do
			create socket.make_server_by_port (port)
			socket.listen (1)
			socket.accept
		rescue
			if socket /= Void then
				socket.cleanup
			end
		end

	close_connection
			--Close a conection
		require else
			is_master: master
			not_void_server: socket /= Void
		do
			socket.cleanup
		end

	join_connection
			--Create a conection with the other net sub-componet master
		require else
			not_master: not master
		do
			create socket.make_client_by_port (port, ip_address)
			socket.connect
		rescue
			if socket /= Void then
				socket.cleanup
			end
		end

feature -- Set Rules

	send_rules (rules: ARRAY [BOOLEAN])
			--Send the rules to the other player
		require else
			is_master: master
			is_valid_rules: valid_number_rules (rules)
		local
			array_rules: G2_NET_RULES_MGE
		do
			create array_rules.make(1,7)
			if attached socket.accepted as l_socket then
				array_rules.make_from_array (rules)
				array_rules.independent_store (l_socket)
			end
		end

	receive_rules : ARRAY [BOOLEAN]
			-- received rules from the another player
			-- and return this rules
		require else
			not_master: not master
		local
			array_rls: ARRAY [BOOLEAN]
			array_rules: G2_NET_RULES_MGE
		do
			create array_rules.make(1,7)
			if attached {G2_NET_RULES_MGE} array_rules.retrieved (socket) as new_rules then
				create array_rls.make_from_array (new_rules)
				Result := array_rls
			end
		ensure then
			valid_rules_receive: valid_number_rules (Result)
		end

feature -- Sharing State

	send_state (state: G2_LOGIC_STATE)
			--Send a valid state to the other player
		require else
			not_void_state: state /= Void
		do
			if master then
				if attached socket.accepted as l_soc2 then
					state.independent_store (l_soc2)
				end
			else
				state.independent_store (socket)
			end

		end

	receive_state : G2_LOGIC_STATE
			-- received a valid state from the another player
			-- and return this state
		local
			state : G2_LOGIC_STATE
		do
			create state.make
			if master then
				if attached socket.accepted as l_soc2 then
					if attached {G2_LOGIC_STATE} state.retrieved (l_soc2) as new_state then
						Result := new_state
					end
				end
			else
				if attached {G2_LOGIC_STATE} state.retrieved (socket) as new_state then
					Result := new_state
				end
			end
		end

feature -- Leave game

	send_leave_msg
			--Send a message to the other player to leave the current game
		local
			leave_msg: G2_NET_LEAVE_MGE
		do
			create leave_msg
			if master then
				if attached socket.accepted as l_soc2 then
					leave_msg.independent_store (l_soc2)
				end
			else
				leave_msg.independent_store (socket)
			end
		end

	receive_leave_msg: BOOLEAN
			--Receive a message from the other player to leave the current game?
		local
			leave_msg: G2_NET_LEAVE_MGE
		do
			create leave_msg
			if master then
				if attached socket.accepted as l_soc2 then
					if attached {G2_NET_LEAVE_MGE} leave_msg.retrieved (l_soc2) as new_leave_msg then
						Result := True
					else
						Result := False
					end
				end
			else
				if attached {G2_NET_LEAVE_MGE} leave_msg.retrieved (socket) as new_leave_msg then
					Result := True
				else
					Result := False
				end
			end
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
			Result := rules.count = 7
		ensure
			valid_length: rules.count = 7
		end

feature -- Implementation

	master: BOOLEAN
			-- is this NET master?

	ip_address: STRING
			-- addres to connect if the NET is slave

	port: INTEGER
			-- port to connect if the NET is slave or open if the NET is master

	socket: detachable NETWORK_STREAM_SOCKET

invariant
	address_for_master: master implies ip_address.is_equal ("localhost")

end -- class G2_NET_NET
