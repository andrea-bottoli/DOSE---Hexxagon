note
	description: "Summary description for {G5_ITABLE}."
	author: "Team: Rio Cuarto 4"
	date: "$10/11/2012$"
	revision: "$0.4$"

deferred class
	G5_ITABLE


feature {ANY} -- Connection-Disconnection

	connection (name_player: STRING): BOOLEAN
			-- this feature is used to inform the LOGIC that a player wants to join
			-- in a match (not already started).
		require
			player_name_valid: (not name_player.is_empty)
		deferred
		ensure
		end

	disconnect (name_player: STRING): BOOLEAN
			--this feature is used to inform the LOGIC that a player leave the game
		require
			player_name_valid: (not name_player.is_empty)
		deferred
		ensure
		end

feature {ANY} -- Entries

	set_respose (new_resposes: LINKED_LIST [G5_MESSAGE])
			-- Sets the response when there a new
		require
			valid_response: (not new_resposes.is_empty)
		deferred
		ensure
		end

feature {ANY} -- Finalization

	restart_game (player_name: STRING): BOOLEAN
			-- function that alerts the server that the player id_player want a rematch.
		require
			player_name_invalid: (not player_name.is_empty)
		deferred
		ensure
		end

feature {ANY} -- status report

	get_player_names: ARRAY[STRING]
			-- Gets the names of all players in a array
		deferred
		end
end
