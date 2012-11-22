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
		valid_color: a_color="r" or  a_color="g" or  a_color="b" or  a_color="o" or  a_color="y" or  a_color="p"
	do
	--	TODO

	ensure
		color_set: color.is_equal (a_color)
	end

feature --Access
	color: STRING
		-- (r) red
		-- (g) green
		-- (b) blue
		-- (o) orange
		-- (y) yellow
		-- (p) pink
end
