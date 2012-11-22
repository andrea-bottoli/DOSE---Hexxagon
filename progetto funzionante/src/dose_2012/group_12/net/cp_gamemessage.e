note
	description: "This is the interface for the CP_GAMEMESSAGE part of the NET component."
	author: "Christos Petropoulos"
class
	CP_GAMEMESSAGE

inherit
	CP_GAMEMOVE
	STORABLE

create

	make_gamemsg

feature -- Initialization

	make_gamemsg(player_move:CP_GAMEMOVE)
		require
			player_move_not_void: player_move/=Void
		do

		end

end
