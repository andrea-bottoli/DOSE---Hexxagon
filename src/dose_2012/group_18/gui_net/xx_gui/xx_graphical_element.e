note
	description: "Graphical element for the gui"
	author: "Team Milano2"
	date: "29-11-2012"
	revision: "0.1"

deferred class
	XX_GRAPHICAL_ELEMENT

feature{NONE}	--Attributes

	image: EV_PIXMAP
	x_coord: INTEGER
	y_coord: INTEGER


feature	--Deferred Methods

feature{XX_MENU_PANEL, XX_HEXAGONAL_GUI_BOARD} --Private Methods

	--Sets the x coordinate
	set_x_coord(a_x_coord: INTEGER)
	do
		x_coord:=a_x_coord
	end

	--Sets the y coordinate
	set_y_coord(a_y_coord: INTEGER)
	do
		y_coord:=a_y_coord
	end

	--Gets the x coordinate
	get_x_coord: INTEGER
	do
		Result:=x_coord
	end

	--Gets the y coordinate
	get_y_coord: INTEGER
	do
		Result:=y_coord
	end
end
