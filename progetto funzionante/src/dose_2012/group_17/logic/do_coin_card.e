note
	description: "Summary description for {DO_COIN_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_COIN_CARD

inherit
	DO_CARD

create
	make

feature{NONE}

	golds : INTEGER

feature{ANY}

	make(this_name : STRING this_type : STRING this_cost : INTEGER this_golds : INTEGER)
		require
			isString   : this_name  /= void
			isString   : this_type  /= void
			isInteger  : this_cost  < 0
			isInteger  : this_golds < 0
		do
			ensure
				nameSetted  : name  = this_name
				typeSetted  : type  = this_type
				costSetted  : cost  = this_cost
				goldsSetted : golds = this_golds

		end

	getGolds() : INTEGER
		do
			ensure
				this_golds : Result = golds
		end

	doAction(card_name : STRING)
		do
		end



end
