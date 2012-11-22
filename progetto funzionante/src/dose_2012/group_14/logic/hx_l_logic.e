note
	description: "Main class for the LOGIC component."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_LOGIC

create
	initialize

feature -- Constructors.

	initialize(gui: HX_G_IUIMANAGER)
		require
			non_void: gui /= Void
		do
			-- TODO: Implement.
		end

feature -- Utilities

	is_valid_player_name(player_name: STRING): BOOLEAN
		require
			non_void: player_name /= Void
		local
			player_name_copy: STRING
		do
			player_name.copy (player_name_copy)
			player_name_copy.trim ()
			Result := player_name_copy.is_empty
		ensure
			unchanged: player_name = old player_name
		end

feature -- Query state

	active_mode: BOOLEAN
		-- In server?

	is_running: BOOLEAN
		-- Is game already running?

	board: HX_L_IBOARD
		require
			running: is_running
		do
			-- TODO: Implement.
		ensure
			non_void: Result /= Void
		end

	player(number: INTEGER): HX_L_IPLAYER
		require
			player_exists: number = 1 or number = 2
		do
			-- TODO: Implement.
		ensure
			non_void: Result /= Void
		end

	preferences(): HX_L_IPREFERENCES
		-- Get preferences object.
		do
			-- TODO: Implement.
		ensure
			non_void: Result /= Void
		end

	highscore(): HX_L_IHIGHSCORE
		-- Get highscores obect.
		do
			-- TODO: Implement.
		ensure
			non_void: Result /= Void
		end

	templates(): TUPLE[STRING, STRING]
		-- Get available game templates (visible name, path).
		do
			-- TODO: Implement.
		ensure
			non_void: Result /= Void
		end

feature -- Control game.

	start_single_player(player_name: STRING; difficulty: INTEGER; template_path: STRING)
		require
			non_void: template_path /= Void
			not_running: not is_running
			player_name_is_valid: is_valid_player_name (player_name)
			positive_difficulty: difficulty > 1
		do
			-- TODO: Implement.
		ensure
			active: active_mode
			running: is_running
		end

	start_multiplayer_one(player1_name: STRING; player2_name: STRING; template_path: STRING)
		require
			non_void: template_path /= Void
			player1_name_is_valid: is_valid_player_name (player1_name)
			player2_name_is_valid: is_valid_player_name (player2_name)
			not_running: not is_running
		do
			-- TODO: Implement.
		ensure
			active: active_mode
			running: is_running
		end

	start_multiplayer_two_server(player_name: STRING; port: INTEGER; template_path: STRING)
		require
			non_void: template_path /= Void
			player_name_is_valid: is_valid_player_name (player_name)
			port_range: 1024 < port and port < 32768
			not_running: not is_running
		do
			-- TODO: Implement.
		ensure
			active: active_mode
			running: is_running
		end

	start_multiplayer_two_client(player_name: STRING; ip_address: STRING; port: INTEGER)
		require
			non_void: ip_address /= Void
			player_name_is_valid: is_valid_player_name (player_name)
			port_range: 1024 < port and port < 32768
			not_running: not is_running
		do
			-- TODO: Implement.
		ensure
			active: not active_mode
			running: is_running
		end

	resume_single_player(saved_game_path: STRING)
		require
			non_void: saved_game_path /= Void
			not_running: not is_running
		do
			-- TODO: Implement.
		ensure
			active: active_mode
			running: is_running
		end

	resume_multiplayer_one(saved_game_path: STRING)
		require
			non_void: saved_game_path /= Void
			not_running: not is_running
		do
			-- TODO: Implement.
		ensure
			active: active_mode
			running: is_running
		end

	resume_multiplayer_two_server(port: INTEGER; saved_game_path: STRING)
		require
			non_void: saved_game_path /= Void
			port_range: 1024 < port and port < 32768
			not_running: not is_running
		do
			-- TODO: Implement.
		ensure
			active: active_mode
			running: is_running
		end

	stop()
		require
			running: is_running
		do
			-- TODO: Implement.
		ensure
			running: not is_running
		end

	save(path: STRING)
		-- Save game to a file.
		require
			non_void: path /= Void
			running: is_running
		do
			-- TODO: Implement.
		end

	finnish(message: HX_L_IGAME_END_MESSAGE)
		-- Notify about server's decission that game ended.
		-- Called by NET in the client application.
		require
			non_void: message /= Void
			running: is_running
		do
			-- TODO: Implement.
		ensure
			running: not is_running
		end

	abort(message: STRING)
		-- Inform about the connection error and abort the game.
		-- Called by NET.
		require
			non_void: message /= Void
			running: is_running
		do
			-- TODO: Implement.
		ensure
			running: not is_running
		end

end
