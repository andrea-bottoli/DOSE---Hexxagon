note
	description: "Summary description for {G2_GUI_MAIN_GAME}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_MAIN_MENU

inherit

	G2_GUI_IMAIN_MENU
		undefine
			copy,default_create
		end

	EV_TITLED_WINDOW
		redefine
			initialize,
			is_in_default_state
		end
	--	INTERFACE_NAMES
	--		export
	--			{NONE} all
	--		undefine
	--			default_create, copy
	--		end

create
	default_create

feature {NONE} -- Initialization

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}
		end

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
			-- (as stated in `initialize')
		do
		end

feature -- events buttons

	host_game
			--opens the window to create new game
		do
		end

	join_game
			--opens the window to join the game.
		do
		end

	help_game
			--opens the  help window game.
		do
		end

	close
			--close windows
		do
		end

feature --basic operation

	create_board
			--creation the board_game.
		do
		end

	set_board (logic1 : G2_LOGIC_ILOGIC)
			--settea the board of game.
		do
		end

	get_board
			--return the board of game.
		do
		end

	get_inform_game
			--inform the state of game.
		do
		end

	get_inform_new_game
			--inform the creation of a game.
		do
		end

	get_inform_join_game
			--informs the joining a open game.
		do
		end

	set_port (port1: INTEGER)
			--settear the port.
		do
		end

	set_ip (ip1: STRING)
			--settear the ip.
		do
		end

	set_rules (rules1: ARRAY [BOOLEAN])
			--settear the Rules.
		do
		end

feature -- setter image the buttons and background

	set_background
			--settear the image background the main_game
		require
			background_void: background = void
		do
		ensure
			background_not_void: background /= void
		end

	set_icon_new_game
			--settear the image new_button
		require
			icon_void: icon_new_game = void
		do
		ensure
			icon_not_void: icon_new_game /= void
		end

	set_icon_close
			--settear the image close_button
		require
			icon_void: icon_close = void
		do
		ensure
			icon_not_void: icon_close /= void
		end

	set_icon_join
			--settear the image join_button
		require
			icon_void: icon_join = void
		do
		ensure
			icon_not_void: icon_join /= void
		end

	set_icon_help
			--settear the image help_button
		require
			icon_void: icon_help = void
		do
		ensure
			icon_not_void: icon_help /= void
		end

feature --attribute

	icon_new_game, icon_close, icon_join, icon_help, background: EV_PIXMAP

	logic: G2_LOGIC_ILOGIC

	ip: STRING

	port: INTEGER

	rules: ARRAY [BOOLEAN]

end
