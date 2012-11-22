note
	description: "The parent class implementing methods shared by Master and slave"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CU_LOGIC

inherit
	CU_OBSERVER
		--we use it to observe the Net Client and Server

feature -- Access

	game: CU_GAME

feature -- Procedures

	move(a_direction: STRING)
		-- moves the player's pawn
		require
			direction_not_void: a_direction/=void
			direction_not_empty: a_direction/=""
		deferred
		end

	suggestion(a_accuse: BOOLEAN; a_room: INTEGER; a_suspect: INTEGER; a_weapon: INTEGER)
		-- perform a suggestion or an accusation
		require
			current_room: game.game_board.find_room(a_room)=game.current_player.position
		deferred
		end

	use_secret_passage()
		-- gives the chance of using a secret passage in a room
		deferred
		end

	leave_room(a_corridor: CU_CORRIDOR)
		-- allows to exit from the door using the chosen door
		require
			corridor_not_void: a_corridor /= void
		deferred
		ensure
			--player_moved: game.current_player.location= a_corridor
		end

invariant
	valid_game: game /= void
end
