note
	description: "Summary description for {PILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_PILE

inherit
		ANY

create
		make

	feature{NONE} --Initialization
		NumberOfCards : INTEGER
		ListOfCards : ARRAYED_LIST[DO_CARD]
		make
		do
		end
end
