note
	description: "THE FIRST WINDOW APPEAR TO THE USER TO CHOOSE PLAY"
	author: "LYDATAKIS GEORGIOU KATEROS"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_FIRST_WINDOW



inherit
	EV_TITLED_WINDOW
	    redefine
			create_interface_objects, initialize, is_in_default_state
		end
create
	make

feature{ANY} --intialize

	make(a_main_wind_window: MAIN_WINDOW)
		--use
		do
			main_wind := a_main_wind_window
		end

	initialize
		--intialize main window components
		--local
			--internal_pixmap: EV_PIXMAP
		do
				Precursor {EV_TITLED_WINDOW}
				-- Build widget structure.
			extend (game_con)
			game_con.set_minimum_height (600)
			game_con.set_minimum_width (800)
			game_con.extend (play_button)
			game_con.extend (exit_button)
				-- Size and position all children of `game_con'.
			game_con.set_item_x_position (play_button, 0000)
			game_con.set_item_y_position (play_button, 0000)
			game_con.set_item_width (play_button, 0100)
			game_con.set_item_height (play_button, 0100)
			game_con.set_item_x_position (exit_button, 0500)
			game_con.set_item_y_position (exit_button, 0400)
			game_con.set_item_width (exit_button, 0100)
			game_con.set_item_height (exit_button, 0100)
			play_button.set_text ("play")
			play_button.set_minimum_width (100)
			play_button.set_minimum_height (100)
			exit_button.set_text ("exit")
			exit_button.set_minimum_width (100)
			exit_button.set_minimum_height (100)
			set_title ("Tichu")
				-- Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.
			close_request_actions.extend (agent destroy_and_exit_if_last)

				-- Call `user_initialization'.
			user_initialization
		end

feature {NONE} -- Implementation

	create_interface_objects
			-- Create objects
		do

				-- Create all widgets.
			create game_con
			create play_button
			create exit_button
		end

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			Result := True
		end

	user_create_interface_objects
			-- Feature for custom user interface object creation, called at end of `create_interface_objects'.
		do
		end

	user_initialization
			-- Feature for custom initialization, called at end of `initialize'.
		do
		end



feature{NONE}
	request_close_window
			-- The user wants to close the window
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
			create question_dialog.make_with_text ("ASDADAS")
			question_dialog.show_modal_to_window (Current)

			if question_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_ok) then
					-- Restore the main UI which is currently minimized
				if attached main_wind then
					main_wind.restore
					main_wind.remove_reference_to_game (Current)
				end
					-- Destroy the window
				destroy
			end
		end

	play_game
		--calls when player push play button
	do
		destroy;
	end

	exit_game
		--calls when player pusg exit button and exit the game
	do
		destroy;
	end


feature {NONE}	-- Attributes

	play_button : EV_BUTTON
		--Button that player use to play game
	exit_button : EV_BUTTON
		--Button that player use to exit the game
	window_height : INTEGER = 800
		--the window height
	window_widtht : INTEGER = 600
		--the window width
	main_wind: MAIN_WINDOW
		--use to store main_window
	main_cont: EV_FIXED
			-- the main container to which the button will be added
	game_con:EV_FIXED

	comps:G3_COMPS

end
