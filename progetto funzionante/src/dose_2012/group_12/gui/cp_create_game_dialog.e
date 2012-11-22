note
	description: "The dialog used to create a game (by creating a server)."
	author: "Christos Petropoulos"


class
	CP_CREATE_GAME_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize
		end

create
	default_create

feature {NONE} -- Initialization

	initialize
			-- Initializes the dialog
		do

		end

feature {NONE} -- Build procedures

	build_input_port
			-- Builds the input box for the port
		do

		end

	build_buttons
			-- Builds the buttons cancel and create.
		do

		end

feature {NONE} -- Events

	close_dialog
			-- Closes the create game dialog.
		do

		end

	create_game
			-- Creates the game
		do

		end

end
