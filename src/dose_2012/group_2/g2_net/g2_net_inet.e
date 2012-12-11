note
	description: "Interface for a main class for the NET sub-componet of the game TTNG."
	author: "Team Rio Cuarto8"
	date: "03/12/2012"
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

	receive_rules : ARRAY [BOOLEAN]
			-- received rules from the another player
			-- -- and return this rules
		deferred
				--TODO: Implement this.
		end

feature -- Sharing State

	send_state (state: G2_LOGIC_STATE)
			--Send a valid state to the other player
		deferred
				--TODO: Implement this.
		end

	receive_state : G2_LOGIC_STATE
			-- received a valid state from the another player
			-- -- and return this state
		deferred
				--TODO: Implement this.
		end

feature -- Leave game

	send_leave_msg
			--Send a message to the other player to leave the current game
		deferred
			--TODO: Implement this.
		end

	receive_leave_msg: BOOLEAN
			--Receive a message from the other player to leave the current game?
		deferred
			--TODO: Implement this.
		end

end
