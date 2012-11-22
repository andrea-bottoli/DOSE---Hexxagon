note
	description: "Summary description for {G10_CRSN_GAME_MAIN}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_GAME_MAIN

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	G10_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

-- attributes
feature {NONE}
	lobby: G10_CRSN_LOBBY_MAIN
		-- the main ui, i.e. the game selector
		-- we need this reference to bring back (i.e. maximize) the game selector once the user quits tictactoe
	background: EV_FIXED
	player_action_panel : G10_CRSN_PLAYER_ACTION_PANEL
	scoreboard_panel 	: G10_CRSN_SCOREBOARD_PANEL
	terrain_panel 		: G10_CRSN_TERRAIN_PANEL

-- constructors
feature {NONE}
	make (lobby_window: G10_CRSN_LOBBY_MAIN) -- constructs a titled window
		require
			Main_window_not_null: lobby_window /= void
			window_title_not_null: crsn_game_title /= void
		do
				-- Store the main_ui object. We want to restore it later on (it's currently minimized).
			lobby := lobby_window
				-- Create the Lobby window.			
			make_with_title (crsn_game_title)
		ensure

		end

-- mutator methods.
feature {NONE} -- Initialization
	initialize -- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}
			close_request_actions.extend (agent request_close_window)

			create background
			background.set_background_pixmap (pix_PowerRanger)
			background.set_minimum_size (800, 500)
			put(background)
		end

	request_close_window -- Implementation, Close
			-- The user wants to close the window
			-- precondition  lobby not null
		require
			window_not_null: Current /= void
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text (quit_Message)
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the lobby ui which is currently minimized
				if attached lobby then
					if (not lobby.is_destroyed) then
						lobby.restore
						lobby.remove_reference_to_game_window
					end

				end
				destroy
			end
		ensure
			window_is_destroyed: is_destroyed
		end

	rotate_current_player_tile() -- routine rotates the current players tile
	require
		 valid_player_actions_panel : player_action_panel /= void
	do
		ensure
			valid_player_actions_panel : player_action_panel /= void
			player_action_panel.get_current_player_tile /= old player_action_panel.get_current_player_tile
	end

	update_current_player_tile(src : STRING) -- routine updates the source of current players tile to src
	require
		valid_player_actions_panel : player_action_panel /= void
	do
		ensure
		valid_player_actions_panel : player_action_panel /= void
	end

	update_follower_number(player_name : STRING num : INTEGER) -- routine updates the follower number of the player with name player_name to num
	require
		valid_args : player_name /= void and num >=0 and scoreboard_panel.contains_player(player_name) = true
	do
		ensure
			valid_scoreboard_panel : scoreboard_panel /= void
	end

	update_score(player_name : STRING num : INTEGER) -- routine updates the score of the player with name player_name
	require
		valid_args : player_name /= void and num >=0 and scoreboard_panel.contains_player(player_name) = true
	do
		ensure
			valid_scoreboard_panel : scoreboard_panel /= void
	end

	update_tile(x : INTEGER y : INTEGER src : STRING ) -- routine updates the tile of x ,y coordinates to src
	require
		valid_args : x >= 0 and y >= 0 and src /= void
	do
		ensure
			valid_terrain_panel : terrain_panel = old terrain_panel
	end

	add_lplayer(p : G10_CRSN_PLAYER_INFO) -- routine add player p to the game
	require
		valid_player : p /= void
	do
		ensure
			scoreboard_panel.contains_player (p.get_player_name()) = true
	end

-- accesor methods.
feature {ANY}
	get_score(n : STRING) : INTEGER -- routine returns the score of the player with n name.
	require
		valid_scoreboard : scoreboard_panel /= void
		player_contained : scoreboard_panel.contains_player (n) = true
	do
		ensure
			valid_scoreboard : scoreboard_panel /= void
			score_unmutated : scoreboard_panel.get_player (n).get_score = old scoreboard_panel.get_player (n).get_score
	end

	get_followers_number(n : STRING) : INTEGER -- routine returns the number of followers of the player with name n
	require
		valid_scoreboard : scoreboard_panel /= void
		player_contained : scoreboard_panel.contains_player (n) = true
	do
		ensure
			valid_scoreboard : scoreboard_panel /= void
			score_unmutated : scoreboard_panel.get_player(n).get_follower_number = old scoreboard_panel.get_player (n).get_follower_number
	end

	get_players() : ARRAYED_LIST [G10_CRSN_PLAYER_INFO] -- routine returns the list of players in the game
	require
		valid_scoreboard : scoreboard_panel.get_players /= void and scoreboard_panel /= void
	do
		ensure
			attr_unmutated : scoreboard_panel = old scoreboard_panel
	end

	get_player(i : INTEGER ) : G10_CRSN_PLAYER_INFO -- routine returns the player in i index of the players array list
	require
		scoreboard_panel /= void
	do
		ensure
			player_list_unmutated : scoreboard_panel.get_players = old scoreboard_panel.get_players
	end



-- class invariants. (in comments because of invariant violetion caused by first steps of implementation)
--invariant
--	valid_args : terrain_panel /= void and scoreboard_panel /= void and player_action_panel /= void

end
