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

	make (pname: STRING; ptype: INTEGER)
			-- Creates a nonproperty cell with pname as name and ptype as type
		require
			valid_nonproperty_name: pname /= Void and pname /~ ""
			valid_nonproperty_type: ptype >= 0 and ptype <= 7
		do
			name := pname
			type := ptype
		end

feature {NONE} -- Internal representation

	type: INTEGER
			-- 0 go, 1 chest, 2 chance, 3 tax, 4 jail, 5 parking, 6 go jail, 7 luxury

feature {ANY} -- Access

	get_type: INTEGER
			-- Returns the type of the current cell
		do
			Result := type
		end

feature {ANY} -- Show object

	to_string: STRING
			--Returns a string representation of current object
		do
			Result := name
		end

invariant
	invariant_clause: type >= 0 and type <= 7

end
