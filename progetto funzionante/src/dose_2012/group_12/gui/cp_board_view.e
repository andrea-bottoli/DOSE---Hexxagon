note
	description: "The GUI component which will handle the view of the board."
	author: "Christos Petropoulos"

class
	CP_BOARD_VIEW

create
	make

feature -- Initialization

	make(x:INTEGER;y:INTEGER;width:INTEGER;height:INTEGER)
			-- Creates the board on the GUI given the position and the dimensions.
		require
			x_not_void: x/=Void
			y_not_void: y/=Void
			width_not_void: width/=Void
			height_not_void: height/=Void
		do

		end

feature {NONE} -- Attributes

	board_position: CP_POSITION
	board_height:INTEGER
	board_width:INTEGER

feature -- Board Update operations

	add_insect_on_board(insect:CP_INSECT;position:CP_POSITION)
				-- Adds an insect on the board
		require
			insect_not_void: insect/=Void
			position_not_void: position/=Void
		do

		end

	update_insect_position(insect:CP_INSECT;position:CP_POSITION)
				-- Updates the insect position on the board
		require
			insect_not_void: insect/=Void
			position_not_void: position/=Void
		do

		end

	remove_insect_from_board(insect:CP_INSECT)
				-- Removes the insect from the board
		require
			insect_not_void: insect/=Void
		do

		end


feature {NONE}  -- Drawing operations

	draw_board(insectsOnBoard:ARRAY[CP_INSECT])
			-- Draws the board
		require
			insects_not_void: insectsOnBoard/=Void
		do

		end

	draw_buttons(insectsOnBoard:ARRAY[CP_INSECT])
			-- Draws the buttons of the board
		require
			insects_not_void: insectsOnBoard/=Void
		do

		end

	draw_insects(insectsOnBoard:ARRAY[CP_INSECT])
			-- Draws the insects of the board
		require
			insects_not_void: insectsOnBoard/=Void
		do

		end

feature {NONE} -- Call Events (when pushing buttons)

	insertInsect(insect:CP_INSECT)
			-- Insert the insect to the board
		require
			insect_not_void: insect/=Void
		do

		end

	moveInsect(insect:CP_INSECT)
			-- Moves the insect to other position
		require
			insect_not_void: insect/=Void
		do

		end

end
