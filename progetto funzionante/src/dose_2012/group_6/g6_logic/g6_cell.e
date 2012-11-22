note
	description: "This class represents one cell of the board"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

deferred class
	G6_CELL

feature

	name: STRING -- like "Mediterranean Avenue" or "Go jail" or "Community chest"

invariant
	name /~ ""

end
