note
	description: "Summary description for {IG_LOGIC_SETTINGS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_LOGIC

feature -- Status Setting

	make_with_host_settings (a_game_settings: IG_GAME_SETTINGS)
			-- sends to IG_NET a message to host at this address
		require
			--Fbesser
			a_game_settings_not_void: a_game_settings /= Void
		do
			-- TODO
		ensure

		end

	make_with_join_settings (a_game_settings: IG_GAME_SETTINGS)
			-- sends to IG_NET a message to join in the player's address
		require
			--Fbesser
			a_game_settings_not_void: a_game_settings /= Void
		do
			-- TODO
		ensure

		end
feature -- Access
	is_master: BOOLEAN
		--If a player is a master or slave (true == master)

	gameboard: IG_GAMEBOARD
		-- Returns the state of Game Board

	scoreboards: LIST[IG_SCOREBOARD]
		-- Returns the score board of each player

	current_player: IG_PLAYER
		-- Returns the current player
	next_player: IG_PLAYER

		-- Returns a player and does not produce any side effects	
	tiles_for_player: LIST [IG_TILE]
		-- Returns the tiles available in the rack

invariant
	--Fbesser
	game_board_not_void: gameboard /= Void
	score_board_not_void: scoreboardS /= Void
	tiles_rack_not_void: tiles_for_player /= Void

end
