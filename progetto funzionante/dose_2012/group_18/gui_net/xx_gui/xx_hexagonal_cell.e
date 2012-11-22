note
	description: "Basic element of the board"
	author: "Team Milano2"
	date: "22-11-2012"
	revision: "0.1"

class
	XX_HEXAGONAL_CELL

inherit
	EV_FIGURE_EQUILATERAL

create	--Contructor
	make_with_points

feature	{NONE}	--Attributes of the hexagon

	side:		REAL
	sin:		REAL
	cos:		REAL
	height:		REAL
	width:		REAL
	hex_id: 	INTEGER
	button:		EV_BUTTON
	position_x:	INTEGER
	position_y:	INTEGER

feature	{NONE}	--Private method of the hexagon

	calculate_vertices --Calculates the vertices of the hexagon
	local
		vertices:	TUPLE[TUPLE[REAL, REAL]]
	do
		create vertices.default_create
		cos:=calculate_cos(side)
		sin:=calculate_sin(side)
		vertices.at (0):=[position_x, position_y]
		vertices.at (1):=[position_x+side, position_y]
		vertices.at (2):=[position_x+side+cos, position_y+sin]
		vertices.at (3):=[position_x+side, position_y+sin+sin]
		vertices.at (4):=[position_x, position_y+sin+sin]
		vertices.at (5):=[position_x-cos, position_y+sin]
	end

	--Calculates the cosine of the side
	calculate_cos(a_side: REAL):REAL
	local

	do
		Result:= a_side*0.5
	end

	--Calculates the sine of the side
	calculate_sin(a_side: REAL):REAL
	local
		l_sqrt:	REAL
	do
		l_sqrt:=sqrt (3).truncated_to_real
		Result:= a_side*l_sqrt*0.5
	end

end
