note
	description: "Specific interface for each player."
	author: "Milano4"
	date: "5/11/2012"
	revision: "1.0"

deferred class
	GR11_CONTROLLER

feature --access

	player_is_active:BOOLEAN
	--asks if the player associated to this controller is active or not.

	deferred
	end

	get_name:GR11_USER_ID
	--get the player's name associated with this controller

	deferred
	end


feature --operation

	recv_message(m :GR11_MSG_TO_LOGIC)
		--take input message from the other sub-components to the game logic
		--m: input message

	 require
		the_player_must_be_active: player_is_active
		message_is_not_empty: m /= void
		the_message_is_a_command : m.is_command

	deferred
	end

	leave_game
		--communicates that the player associated to this controller wants to leave the game

	 require
		player_must_be_active:player_is_active

    deferred

	 ensure
		not player_is_active

	end

invariant

 	if_player_active_name_is_not_empty:player_is_active implies get_name /= Void

end
