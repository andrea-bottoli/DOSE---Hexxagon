note
	description: "Summary description for {INFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	B8_INFO --class which holds the info required to be sent throughout the users during play time
create
	make
feature
	make(a_x,a_y:REAL;a_player,a_rotate_position,a_tile:INTEGER)
	do
		x:=a_x --the x position of the tile last placed
		y:=a_y --the y position of the tile last placed
		player:=a_player --the player who last made a move
		rotate_position:=a_rotate_position
		tile:=a_tile
	end
	x_played:REAL
	do
		Result:=x
	end
	y_played:REAL
	do
		Result:=y
	end
	played_last:INTEGER
	do
		Result:=player
	end
feature
	x:REAL
	y:REAL
	player:INTEGER
	rotate_position:INTEGER --0= normal position of a tile,1= rotated once to the right,2=rotated twice etc
	tile:INTEGER --code of the tile last placed
end
