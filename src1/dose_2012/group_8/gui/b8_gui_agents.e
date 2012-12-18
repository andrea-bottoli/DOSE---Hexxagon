note
	description: "Graphic User Interface Agents"
	authors: "George Vardakis, Vangelis Theodorakis, Dimitris Deyannis"
	date: "11/11/2012"
	revision: "0.3"

class
	B8_GUI_AGENTS

create
	make

feature  -- Initialization

	make
			-- Initialization for `Current'.
		do

		end


feature -- Buttons' Handlers

	on_pile_button_press_action()
			-- Handles the press of a player's
			-- pile button.
		do

		end

	on_pile_button_release_action()
			-- Handles the placement of the pile.
		do

		end

	on_ready_button_press_action()
			-- Sends the completed move to the Logic
			-- sub-component.
		do

		end

	on_undo_button_press_action()
			-- Reverses the player's last move.
		 do

		end

	on_rotate_left_button_press_action()
			-- Rotates the currently selected pile and
			-- updates the 'Editing Area'.
		do

		end

	on_rotate_right_button_press_action()
			-- Rotates the currently selected pile and
			-- updates the 'Editing Area'.
		do

		end

	on_secondlayer_next_press_action()
			-- Redirects the player to the third
			-- layer window.
		do

		end

	on_exit_press_action()
			-- Creates a popup window asking the
			-- player if they want to exit.
		do

		end

	on_playagain_press_action()
			-- Redirects the player to the first
			-- layer window.
		do

		end

	on_menu_press_action()
			-- Handles the functions of the menu
			-- options.
		do

		end

	refresh_message_board(a_error_code: INTEGER)
			-- Refreshes the 'Message Board'
			-- with the appropriate message.
		do

		ensure
			a_error_code > -1

		end

	refresh_timer(a_time: INTEGER)
			-- Updates the time displayed
			-- on the 'Timer'.
		do

		ensure
			a_time > -1
			a_time < 120

		end

	refresh_ip_field(a_ip: INTEGER)
			-- Refreshes the ip field with the
			-- address given by the NET.
		do

		ensure
			a_ip /= 0

		end
end
