note
	description: "This is the interface for the CP_GAMEMOVE part of the NET component."
	author: "Christos Petropoulos"

class
	CP_GAMEMOVE

create

	make_game_move

feature -- Initialization

	make_game_move(player:CP_PLAYER;insect:CP_INSECT;position:CP_POSITION)
				-- Creates the class that contains the move the player did
		require
			player_not_void : player/=Void
			insect_not_void : insect/=Void
			position_not_void: position/=Void
		do

		end
end
