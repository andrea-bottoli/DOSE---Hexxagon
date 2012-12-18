note
	description: "Summary description for {IG_HEX}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_HEX
create
	make

feature --Initialization

make (a_color:STRING)
	--Set the color of a hex of the board
	require
		valid_color: a_color.is_equal("r") or a_color.is_equal("g") or a_color.is_equal("b") or a_color.is_equal("o") or a_color.is_equal("y") or a_color.is_equal("p") or a_color.is_empty
	do
		color:=a_color
	ensure
		color_set: color.is_equal (a_color)
	end

feature --Access
	color: STRING
		-- empty
		-- (r) red
		-- (g) green
		-- (b) blue
		-- (o) orange
		-- (y) yellow
		-- (p) pink
end
