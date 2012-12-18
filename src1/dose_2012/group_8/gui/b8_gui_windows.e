note
	description: "Graphic User Interface"
	authors: "George Vardakis, Vangelis Theodorakis, Dimitris Deyannis"
	date: "11/11/2012"
	revision: "0.2"

class
	B8_GUI_WINDOWS

create
	make

feature {NONE} -- Initialization

	make
			-- Calls the constructor
			-- for '1st Layer Window'.
		do

		end

feature {NONE} -- Attribute

	main_window: EV_WINDOW
	message_board: EV_CELL
	timer: EV_CELL
	editing_area: EV_CELL
	board_area: EV_CELL
	next: EV_BUTTON
	exit: EV_BUTTON
	rotate_left: EV_BUTTON
	rotate_right: EV_BUTTON
	ready: EV_BUTTON
	pile: EV_BUTTON
	undo: EV_BUTTON
	yes: EV_BUTTON
	no: EV_BUTTON
	play_again: EV_BUTTON
	back: EV_BUTTON
	a_ip_address: INTEGER
	a_port_number: INTEGER

feature -- Window & pop-up Creators

	create_first_layer_window()
			-- Creates the first layer window of the game.
		do

		end

	create_second_layer_create_game_window()
			-- Creates the second layer window in which
			-- the host player makes the game's room.
		local
			l_ip_address: INTEGER
			l_port_number: INTEGER

		do

		end

	create_second_layer_join_game_window()
			-- Creates the second layer window in which
			-- the client player joins the game's room.
		local
			l_ip_address: INTEGER
			l_port_number: INTEGER

		do

		end

	create_third_layer_window()
			-- Creates the third layer window
			-- where the game is played.
		do

		end

	create_fourth_layer_window()
			-- Creates the fourth layer window of the game
			-- which announces the winner and the losers.
		do

		end

	create_connection_problem_window()
			-- Creates a popup window informing the
			-- players of connection error.
		do

		end

	create_exit_window()
			-- Creates a popup window asking the
			-- player if they want to exit.
		do

		end

	create_full_game_window()
			-- Informs a player who wants to enter
			-- a game that the room is full.
		do

		end

	create_timer()
			-- Creates the space for the timer.
		do

		end

	create_message_frame()
			-- Creates the space for the messages
			-- prompted to the user.
		do

		end

	create_main_board()
			-- Creates the main game board.
		do

		end

	create_editing_area()
			-- Creates the 'Editing Area'
			-- and the rotate buttons.
		do

		end

	create_pile_area()
			-- Creates the area where the
			-- player's piles are displayed.
		do

		end
end
