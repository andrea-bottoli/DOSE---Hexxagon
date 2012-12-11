note
	description: "The parent class implementing methods shared by Master and slave"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CU_LOGIC

feature -- Access

	game: CU_GAME

feature -- Procedures
	rcv_message(a_msg: CU_MESSAGE)
		require
			ok_msg: a_msg /= void
		deferred
		end

	move(a_direction: STRING)
		-- moves the player's pawn
		require
			direction_not_void: a_direction/=void
			direction_not_empty: a_direction/=""
		deferred
		end

	suggestion(a_accuse: BOOLEAN; a_room: CU_ROOM_CARD; a_suspect: CU_SUSPECT_CARD; a_weapon: CU_WEAPON_CARD)
		-- perform a suggestion or an accusation
		require
			current_room: (a_accuse and then game.game_board.find_room(a_room.room).is_equal (game.current_player.position)) or (not a_accuse and then a_room=void)
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
