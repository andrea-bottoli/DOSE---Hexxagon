note
	description: "This is a class in support to b8_test_mode and represents a move"
	author: "Stefano Di Palma"
	date: "04/12/2012"
	revision: "0.1"

class
	B8_MOVE

create
	make

feature {NONE} -- Initialization

	make(a_player,a_x,a_y,a_tile,a_rotation,a_color:INTEGER; a_valid:BOOLEAN)
			-- Initialization for `Current'.
		do
			player:=a_player
			x:=a_x
			y:=a_y
			tile:=a_tile
			valid:=a_valid
			rotation:=a_rotation
			color:=a_color
		end

feature

	x,y,tile,player,rotation,color:INTEGER
	valid:BOOLEAN

end
