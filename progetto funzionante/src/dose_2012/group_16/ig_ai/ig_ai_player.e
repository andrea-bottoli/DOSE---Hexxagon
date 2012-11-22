note
	description : "This class implements  a machine player"
	author	    : "Emilia Cioroaica, Adriana Selleri Rocha"
	date        : "$Date$"
	revision    : "$Revision$"

class
	IG_AI_PLAYER

inherit
	IG_PLAYER
create
	make_ai_player

feature -- Initialization

	make_ai_player(a_gamestate: IG_LOGIC; computer_level: INTEGER)
		require
			level_in_range: computer_level > 0 and computer_level <=3

			--Added by fbesser
			game_state_not_void: a_gamestate /= Void
		do
			gamestate := a_gamestate
			-- Create a new ai_player  with level of difficulty "computer_level"

		ensure
			level_set: level = computer_level
			gamestate_reference_created: gamestate.is_equal(a_gamestate)
		end


feature --
	next_move: IG_MOVE
		require else
			game_state_not_void : gamestate /= Void
			-- We need to know the game state to calculate the next move
			board_size_not_void: gamestate.gameboard.gameboard.width > 0 and gamestate.gameboard.gameboard.height > 0
			-- We need to know the size of the board to identify which moves are valid
		local
			l_move: IG_MOVE
		do
			-- Sends the next move of an AI Player to the LOGIC	component
		ensure then
			valid_move: is_valid_move(Result)
			result_not_void: Result /= Void
		end

feature -- Valid move checking
	is_valid_move (a_move: IG_MOVE): BOOLEAN
		require
			--fbesser
			a_move_not_void: a_move /= Void
		do
			-- return whether the move is valid or not
			-- at AI level we check the validity in terms of board size, non-overlapping tiles
		end

feature -- Access
	gamestate: IG_LOGIC
		-- Keeps a reference to the game state
	level: INTEGER
		-- Contains the level of difficulty of the machine player, selected by the user in the GUI
end


