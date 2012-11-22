note
	description: "Summary description for {G6_NONPROPERTY}."
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_NONPROPERTY

inherit

	G6_CELL

create
	make

feature {ANY} -- Initialization

	make
			-- Initialization for `Current'.
		do
		end

feature

	type: INTEGER -- 0 go, 1 parking, 2 goJail, 3 Jail, 4 chest, 5 chance

invariant
	invariant_clause: type >= 0 and type <= 5

end
