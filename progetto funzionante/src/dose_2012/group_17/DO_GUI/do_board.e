note
	description: "Main window for this application"
	author: "Damian Ojeda, Martin Paulucci, Alejandro Yaciuk"
	date: "$Date$"
	revision: "1.0.0"

class
	DO_BOARD

inherit

	EV_TITLED_WINDOW
		rename
			put as put_ev
		export
			{EQA_TEST_SET} is_initialized
		redefine
			initialize
		end

	DO_INTERFACE_NAMES
		export
			{NONE} all
		undefine
			default_create,
			copy
		end

	EXECUTION_ENVIRONMENT
		rename
			put as put_exec_env
		undefine
			default_create,
			copy
		end


create
	 default_create

feature {EQA_TEST_SET} -- make and Initialize


	initialize
			-- Build the interface for this window.
		do

		end


feature {EQA_TEST_SET} -- Menu Implementation

	rules_menu_bar: EV_MENU_BAR
			-- Standard menu bar for this window.

	build_rules_menu_bar
			-- Create and populate `standard_menu_bar'.
		do

		end

feature {EQA_TEST_SET} -- ToolBar Implementation

	standard_toolbar: EV_TOOL_BAR
			-- Standard toolbar for this window

	build_standard_toolbar
			-- Create and populate the standard toolbar.
		do

		end

feature {ANY} -- Implementation, Close event

	request_close_window
		-- Destroy the window
		require
			not_destroyed: not is_destroyed
		local
		do
		ensure
			destroyed: is_destroyed
		end

feature {ANY} -- Implementation, New Game Event

	request_new_game (p_settings: DO_SETTINGS)
		-- Reset the main container
		require
			not_destroyed: not is_destroyed
		do
		ensure
		end

feature {ANY} -- Implementation, About, Help and Settings event

	rules
			-- Display the rules dialog.
		do

		end

feature {ANY}  -- Notification, on lose or win the game

	on_lose
		do
		end

	on_win
		do
		end

feature {EQA_TEST_SET} -- Implementation

	main_container: EV_VERTICAL_BOX
			-- Main container (contains all widgets displayed in this window)

	build_board
			-- Fill the board with cards, buttons and info
		do
		end

	build_main_container (p_setting: DO_SETTINGS)
			-- Create and populate `main_container'.
		do
		end

feature {EQA_TEST_SET} -- Methods that print the window.

	refresh_hand (cards: LINKED_LIST[INTEGER])
		-- paint the cards in your hand
		do
		end

	refresh_board_cards	(cards: LINKED_LIST[INTEGER])
		-- paint the played cards
		do
		end

	refresh_buy_zone (card: INTEGER; buys_left: INTEGER)
		-- paint the buy zone
			do
			end

	refresh_actions	(actions: INTEGER; buys: INTEGER; coins: INTEGER)
		-- paint the actions left zone
			do

			end

	refresh_oponent_hand (cards: LINKED_LIST[INTEGER])
		-- paint the cards in your hand
		do
		end

	on_update
		-- Implementation of feature inherited of ABSTRACT_OBSERVER
		-- This method reflects changes of the model to the window.
		do

		end

feature {EQA_TEST_SET} -- Implementation / Constants

	board_title: STRING = ""
			-- Title of the window.

	board_width: INTEGER = 400
			-- Initial width for this window.

	board_height: INTEGER = 400
			-- Initial height for this window.

feature {ANY}

	rebuild_main_container (setting: DO_SETTINGS)
		-- Restart the game using the defined settings
		do
		end

end
