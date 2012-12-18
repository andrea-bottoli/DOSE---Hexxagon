note
	description: "This is the interface for the CP_GAMEMESSAGE part of the NET component."
	author: "Christos Petropoulos"
class
	CP_GAMEMESSAGE

inherit
	CP_GAMEMOVE
	STORABLE

create

	make_gamemsg,
	make_start_signal

feature -- Initialization

	make_gamemsg(player_move:CP_GAMEMOVE)
		require
			player_move_not_void: player_move/=Void
		do
			move := player_move
		end

	make_start_signal
		do
			start_signal := True
		end

feature -- Accessors

	game_start: BOOLEAN
		do
			Result := start_signal
		end

feature {NONE} -- Attributes

	start_signal: BOOLEAN
	move: CP_GAMEMOVE

end
