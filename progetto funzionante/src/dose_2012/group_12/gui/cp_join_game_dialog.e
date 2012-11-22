note
	description: "The dialog used to join a game."
	author: "Christos Petropoulos"

class
	CP_JOIN_GAME_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize
		end

feature {NONE} -- Initialization

	initialize
			-- Initializes the dialog
		do

		end

feature {NONE} -- Build procedures

	build_input_ip
			-- Builds the input box for the IP Address
		do

		end

	build_input_port
			-- Builds the input box for the port
		do

		end

	build_buttons
			-- Builds the buttons cancel and join.
		do

		end

feature {NONE} -- Events

	close_dialog
			-- Closes the join game dialog.
		do

		end

	create_game
			-- Joins the game
		do

		end

end
