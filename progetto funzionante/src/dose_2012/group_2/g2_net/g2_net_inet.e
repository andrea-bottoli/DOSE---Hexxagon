note
	description: "Interface for a main class for the NET sub-componet of the game TTNG."
	author: "Team Rio Cuarto8"
	date: "05/11/2012"
	revision: "1.0"

deferred class
	G2_NET_INET

feature -- Connection

	create_connection
			--Create a conection with the other net sub-componet slave
		deferred
				--TODO: Implement this.
		end

	join_connection
			--Create a conection with the other net sub-componet master
		deferred
			--TODO: Implement this.
		end

feature -- Set Rules

	send_rules (rules: ARRAY [BOOLEAN])
			--Send the rules to the other player
		deferred
				--TODO: Implement this.
		end

	receive_rules
			-- received rules from the another player
			-- and send it to logic sub-componet
		deferred
				--TODO: Implement this.
		end

feature -- Sharing State

	send_state (state: G2_LOGIC_ISTATE)
			--Send a valid state to the other player
		deferred
				--TODO: Implement this.
		end

	receive_state
			-- received a valid state from the another player
			-- and send it to logic sub-componet
		deferred
				--TODO: Implement this.
		end

end
