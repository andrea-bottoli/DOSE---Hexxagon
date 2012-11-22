note
	description: "The component responsible to build the game view."
	author: ""

class
	CP_GAME_VIEW

create
	make

feature {NONE} -- Initialization

	game_started:BOOLEAN
	game_ended:BOOLEAN

	make
			-- Initializes the game view
		do

		end

feature -- Build procedures

	build_board
			-- Builds the board of the game
		require
			game_has_started: game_started = TRUE
		do

		end

	build_chat
			-- Builds the chat of the game
		require
			game_has_started: game_started = TRUE
		do

		end

	build_player_bag
			-- Builds the bag of the player
		require
			game_has_started: game_started = TRUE
		do

		end

feature -- Update procedure

	update_game_view
			-- Updates all the gui components of the game
		require
			game_has_started: game_started = TRUE
		do

		end

feature -- Game Events

	start_game
			-- Starts the game
		require
			game_has_started: game_started = FALSE
		do

		end

	announce_winner(player:STRING)
			-- Displays the winner of the game
		require
			game_has_started: game_started = TRUE
			game_has_ended: game_ended = TRUE
		do
			
		end


end
