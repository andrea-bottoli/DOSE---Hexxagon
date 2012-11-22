note
	description: "Logic component rapresenting a monomino, atomic component of a game tile"
	author: "Andrea Braschi"
	date: "8/11/2012"
	revision: "0.1"

class
	B8_MONOMINO

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do

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
		end

	get_y: INTEGER
			--return the ordinate
		do
		end

feature --setters

	set_x(i: like x)
			--set the abscissa
		do
		end

	set_y(i: like y)
			--set the ordinate
		do
		end

invariant
	correct_x: x>=-1
	correct_y: y>=-1

end




