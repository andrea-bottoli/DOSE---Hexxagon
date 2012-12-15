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

	initialize(a_gui: HX_G_IUIMANAGER)
		require
			non_void: a_gui /= Void
		do
			logic_gui := a_gui
			is_running := FALSE
			active_mode := FALSE
			create logic_serializer.default_create
			create logic_resource_manager
		ensure
			not_running: not is_running
		end

feature {HX_L_LOGIC, HX_L_BOARD} -- Internal stuff

	logic_resource_manager: HX_L_RESOURCE_MANAGER
	logic_gui: HX_G_IUIMANAGER
	logic_ai: HX_A_AI
	logic_board: HX_L_BOARD
	logic_serializer: HX_L_SERIALIZER

	ai_move(a_player: HX_L_IPLAYER)
		require
			running: is_running
			active: a_player.is_active
			ai_exists: logic_ai /= Void
			board_exists: logic_board /= Void
		local
			l_move: HX_L_IMOVE
		do
			print("AI is making a move...%N")
			l_move := get_move_from_ai(logic_board)
			logic_board.move_piece_and_continue (
				l_move.source.x,
				l_move.source.y,
				l_move.destination.x,
				l_move.destination.y)
		ensure
			non_active: not a_player.is_active
		end

	get_move_from_ai(a_board: HX_L_IBOARD): HX_L_IMOVE
		do
			Result := logic_ai.getmovement (a_board.clone_board)
		end

	gui_move(a_player: HX_L_IPLAYER)
		require
			running: is_running
			active: a_player.is_active
			gui_exists: logic_gui /= Void
			board_exists: logic_board /= Void
		do
			logic_gui.repaint()
			logic_gui.request_move()
		ensure
			--non_active: not a_player.is_active
		end

	net_move(a_player: HX_L_IPLAYER)
		require
			running: is_running
			active: a_player.is_active
		do
		ensure
			non_active: not a_player.is_active
		end

	run_game(a_move_1, a_move_2: PROCEDURE[ANY, TUPLE[HX_L_IPLAYER]])
			-- Execute game loop until the end of the game.
		require
			running: is_running
		local
			l_player: HX_L_IPLAYER
		do
			--from
			--until
			--	not is_running
			--loop
				l_player := logic_board.active_player
				if l_player.id = 1 then
					a_move_1.call ([l_player])
				else
					a_move_2.call ([l_player])
				end
			--end


		--ensure
			--not_running: not is_running
		end

feature -- Utilities

	is_valid_player_name(a_player_name: STRING): BOOLEAN
		require
			non_void: a_player_name /= Void
		local
			player_name_copy: STRING
		do
			create player_name_copy.make_empty
			player_name_copy.copy (a_player_name)
			player_name_copy.trim ()
			Result := NOT player_name_copy.is_empty
		ensure
			unchanged: a_player_name = old a_player_name
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
			Result := logic_board
		ensure
			non_void: Result /= Void
		end

	player(a_number: INTEGER): HX_L_IPLAYER
		require
			player_exists: a_number = 1 or a_number = 2
		do
			if a_number = 1 then
				Result := logic_board.player_1
			elseif a_number = 2  then
				Result := logic_board.player_2
			end
		ensure
			non_void: Result /= Void
		end

	preferences(): HX_L_IPREFERENCES
		-- Get preferences object.
		local
			l_preferences: HX_L_PREFERENCES
		do
			create l_preferences.make
			Result := l_preferences
		ensure
			non_void: Result /= Void
		end

	highscore(): HX_L_IHIGHSCORE
		-- Get highscores obect.
		local
			l_highscore: HX_L_HIGHSCORE
		do
			create l_highscore.default_create
			Result := l_highscore
		ensure
			non_void: Result /= Void
		end

	templates(): LIST[TUPLE[name: STRING; path: STRING]]
		-- Get available game templates (visible name, path).
		do
			Result := logic_resource_manager.templates
		ensure
			non_void: Result /= Void
		end

feature -- Control game.

	start_single_player(a_player_name: STRING; a_difficulty: INTEGER; a_template_path: STRING)
		require
			non_void: a_template_path /= Void
			not_running: not is_running
			player_name_is_valid: is_valid_player_name (a_player_name)
			positive_difficulty: a_difficulty >= 0
		local
			l_template: ARRAY2[INTEGER]
		do
			l_template := logic_resource_manager.template(a_template_path)
			create logic_board.make (a_player_name, "Computer", TRUE, FALSE, l_template, Current)

			-- Initialize AI and set difficulty level
			create logic_ai.make(a_difficulty)

			active_mode := TRUE
			is_running := TRUE

			run_game(agent Current.gui_move(?), agent Current.ai_move(?))
		ensure
			active: active_mode
			running: is_running
		end

	start_multiplayer_one(a_player1_name: STRING; a_player2_name: STRING; a_template_path: STRING)
		require
			non_void: a_template_path /= Void
			player1_name_is_valid: is_valid_player_name (a_player1_name)
			player2_name_is_valid: is_valid_player_name (a_player2_name)
			not_running: not is_running
		local
			l_template: ARRAY2[INTEGER]
		do
			l_template := logic_resource_manager.template(a_template_path)
			create logic_board.make (a_player1_name, a_player2_name,
				TRUE, TRUE, l_template, Current)

			active_mode := TRUE
			is_running := TRUE
			run_game(agent Current.gui_move(?), agent Current.gui_move(?))
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

			active_mode := TRUE
			is_running := TRUE
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

			active_mode := FALSE
			is_running := TRUE
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

			active_mode := TRUE
			is_running := TRUE
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

			active_mode := TRUE
			is_running := TRUE
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

			active_mode := TRUE
			is_running := TRUE
		ensure
			active: active_mode
			running: is_running
		end

	stop()
		require
			running: is_running
		local
			l_highscore: HX_L_IHIGHSCORE
		do
			l_highscore := highscore()

			if logic_board.player_1.pieces_count > l_highscore.high_score then
				l_highscore.set_high_score (logic_board.winner.pieces_count)
			end

			is_running := FALSE

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
