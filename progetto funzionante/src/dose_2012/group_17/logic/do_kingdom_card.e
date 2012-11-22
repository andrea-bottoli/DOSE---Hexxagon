note
	description: "Summary description for {DO_KINGDOM_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_KINGDOM_CARD

inherit
	DO_CARD

create
	make

feature{NONE}

	plus_cards : INTEGER
	actions    : INTEGER
	buys       : INTEGER
do
end
feature{ANY}

	make(this_name : STRING this_type : STRING this_cost : INTEGER this_plus_cards : INTEGER this_actions : INTEGER this_buys : INTEGER)
		require
			isString   : this_name       /= void
			isString   : this_type       /= void
			isInteger  : this_cost       < 0
			isInteger  : this_plus_cards < 0
			isInteger  : this_actions    < 0
			isInteger  : this_buys       < 0
		do
			ensure
				nameSetted    : name       = this_name
				typeSetted    : type       = this_type
				costSetted    : cost       = this_cost
				plusSetted    : plus_cards = this_plus_cards
				actionsSetted : actions    = this_actions
				buysSetted    : buys       = this_buys

		end

	getPlusCards() : INTEGER
		do
			ensure
				this_plus_cards : Result = plus_cards
		end

	getActions() : INTEGER
		do
			ensure
				this_actions : Result = actions

		end

	getBuys() : INTEGER
		do
			ensure
				this_buys : Result = buys

		end

	doAction(card_name : STRING)
		do
		end
end
