note
	description: "This class represents one cell of the board"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

deferred class
	G6_CELL

feature {NONE} -- Internal representation

	name: STRING
			-- like "Mediterranean Avenue" or "Go jail" or "Community chest"

feature {ANY} -- Access

	get_name: STRING
			-- Returns the name of the current cell
		do
			Result := name
		end

feature {ANY} -- Show object

	to_string: STRING
			-- Returns a string representation of current object
		deferred
		end

invariant
	name /~ ""

end
