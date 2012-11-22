note
	description: "Summary description for {DO_VICTORY_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_VICTORY_CARD

inherit
	DO_CARD

create
	make

feature{NONE}

	victory_points : INTEGER

feature{ANY}

	make(this_name : STRING this_type : STRING this_cost : INTEGER this_victory_points : INTEGER)
		require
			isString   : this_name  /= void
			isString   : this_type  /= void
			isInteger  : this_cost  < 0
			isInteger  : this_victory_points < 0
		do
			ensure
				nameSetted  : name  = this_name
				typeSetted  : type  = this_type
				costSetted  : cost  = this_cost
				victory_pointsSetted : victory_points = this_victory_points

		end

	getVictoryPoints() : INTEGER
		do
			ensure
				this_victory_points : Result = victory_points
		end

	doAction(card_name : STRING)
		do
		end


end
