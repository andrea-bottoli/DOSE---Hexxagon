note
	description: "Logic component rapresenting a monomino, atomic component of a game tile"
	author: "Andrea Braschi"
	date: "25/11/2012"
	revision: "1.0"

class
	B8_MONOMINO

create
	make

feature {NONE} -- Initialization

	make(a_x,a_y: like x)
			-- Initialization for 'Current'.
		do
			x:=a_x
			y:=a_y

		end

feature {NONE} --attributes

	x: INTEGER
			-- abscissa of the monomino

	y: INTEGER
			-- ordinate of the monomino

feature --getters

	get_x: INTEGER
			--return the abscissa
		do
			Result:=x
		end

	get_y: INTEGER
			--return the ordinate
		do
			Result:= y
		end

feature --setters

	set_x(a_x: like x)
			--set the abscissa
		do
			x:=a_x
		end

	set_y(a_y: like y)
			--set the ordinate
		do
			y:=a_y
		end

-- This invariant are not correct yet
--invariant
	--correct_x: x>=-2
	--correct_y: y>=-1

end




