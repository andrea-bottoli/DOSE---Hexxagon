note
	description: "This contains the game board and provides methods for accessing and manipulating it"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_BOARD

create
	make

feature {CU_GAME} -- Initialization
	make
		-- Initialize the gameboard with a matrix of CU_SQUARE elements
		require else
			board_void:board = void
		do
		ensure then
			board_initialized: board /= void
		end

feature -- Access
	board: ARRAY[ARRAY[CU_SQUARE]]
			-- the gameboard, represented by a list of squares (rooms and corridors)
		attribute
		ensure
			board_not_void: board /= void
			board_not_empty: board.count>0
		end

	find_room(room_id: INTEGER): CU_ROOM
		--finds a room from it's id, the id is defined in the CU_ENUM_ROOMS
		require
			valid_id: room_id>=0 and room_id<=8
		do
		ensure
			valid_result: result /= void
		end

end
