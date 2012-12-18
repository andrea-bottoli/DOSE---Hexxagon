note
	description: "The component responsible to build the game view."
	author: ""

class
	CP_GAME_VIEW

inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make

feature -- Initialization

	make(window_caller:CP_MAIN_WINDOW)
			-- Initializes the game view
		local
			b:EV_BUTTON
			c:EV_BUTTON
		do
			default_create
			initialized := TRUE

			-- Window procedures
			window := window_caller
			window.set_size (1280, 1024)
			--window.set_minimum_size (1280, 1024)
			window.enable_user_resize
			window.resize_actions.extend (agent update_game_view (?, ?, ?, ?))


			-- Create the game view elements
			build_board
			build_chat
			build_player_bag

			-- Create the buttons for moving the board
			create b.make_with_text ("Go Down")
			create c.make_with_text ("Go Up")

			b.pointer_button_release_actions.extend (agent move_board_down(?,?,?,?,?,?,?,?))
			c.pointer_button_release_actions.extend (agent move_board_up(?,?,?,?,?,?,?,?))
			current.extend_with_position_and_size (b, 0,27, 60, 26)
			current.extend_with_position_and_size(c,0,0,60,26)

			from_board := FALSE


		end

feature {NONE} -- Build procedures

	build_board
			-- Builds the board of the game
		require
			initialized = TRUE
		do
			create board.make(current)
			current.extend_with_position_and_size (board, 0,0, 930, 1000)
		end

	build_chat
			-- Builds the chat of the game
		require
			initialized = TRUE
		local
			sender_receiver: CP_CHAT_SENDER_RECEIVER
		do
			if window.server /= Void then
				sender_receiver := window.server.chat_sender_receiver
			elseif window.client /= Void then
				sender_receiver := window.client.chat_sender_receiver
			end

			create chat_window.make (sender_receiver)
			current.extend_with_position_and_size (chat_window, 930, 0,300,600)
			chat_window.add_new_message_by_string ("System", "Welcome to the Hive Board Game! %NYou can use that part of the window to chat with your opponent.%NHave Fun!%N")
		end

	build_player_bag
			-- Builds the bag of the player
		require
			initialized = TRUE
		do
			create bag.make("black",current) -- TO DO
			current.extend_with_position_and_size (bag, 930,350,300,600)
		end

feature -- Update procedure

	move_board_down(a, b, cf: INTEGER_32; d, e, f: REAL_64; g, h: INTEGER_32)
	do
		board.move_board_down
	end

	move_board_up(a, b, cf: INTEGER_32; d, e, f: REAL_64; g, h: INTEGER_32)
	do
		board.move_board_up
	end

	update_game_view(a_x, a_y, a_width, a_height: INTEGER)
			-- Updates all the gui components of the game
		require
			initialized = TRUE
		local
			new_width: INTEGER
		do
		new_width := window.width

			-- Update the chat window
			chat_window.set_minimum_width (window.width - 948)
	 		chat_window.resize_view (window.width - board.width)

	 		-- Update the board
	 		board.set_minimum_height (window.height)
	--		chat_window.set_minimum_width ( new_width - 930)
	 		chat_window.resize_view (window.width - board.width)

	 		-- Update the bag
	 		bag.set_minimum_width (new_width - 1200)



		end

feature -- Game Events

	start_game
			-- Starts the game
		require
			initialized = TRUE
		do

		end

	announce_winner(player:STRING)
			-- Displays the winner of the game
		require
			initialized = TRUE
		do

		end

feature -- Attributes

	set_selected(i:STRING)
	do
		if(selected_insect/=Void)then
			selected_insect.wipe_out
		end
 		create selected_insect.make_from_string (i)
 		chat_window.add_new_message_by_string ("", selected_insect)
	end


	from_board:BOOLEAN

	-- View components
	board: CP_BOARD_VIEW
	bag: CP_PLAYER_BAG


	-- Game attributes
	game_started:BOOLEAN
	game_ended:BOOLEAN
	selected_insect:STRING


	-- The window caller
	window:CP_MAIN_WINDOW
	chat_window:CP_CHAT_VIEW

	-- Class Attributes
	initialized:BOOLEAN

end
