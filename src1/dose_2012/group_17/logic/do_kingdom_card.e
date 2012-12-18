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
	plus_gold  : INTEGER
	discard	   : INTEGER
	nothing	   : INTEGER

do
end
feature{ANY}

	make(this_name : STRING this_type : STRING this_cost : INTEGER this_plus_cards : INTEGER this_actions : INTEGER this_buys : INTEGER this_plus_gold : INTEGER this_discard : INTEGER)
		require
			isString : this_name /= void
			isString : this_type /= void
			isInteger : this_cost >= 0
			isInteger : this_plus_cards >= 0
			isInteger : this_actions >= 0
			isInteger : this_buys >= 0
			isInteger : this_plus_gold >= 0
			isInteger : this_discard >= 0
		do
			name := this_name
			type := this_type
			cost := this_cost
			plus_cards := this_plus_cards
			actions := this_actions
			buys := this_buys
			plus_gold := this_plus_gold
			discard := this_discard

			ensure
				nameSetted : name = this_name
				typeSetted : type = this_type
				costSetted : cost = this_cost
				plusSetted : plus_cards = this_plus_cards
				actionsSetted : actions = this_actions
				buysSetted : buys = this_buys
				goldSetted : plus_gold = this_plus_gold
				discardSetted : discard = this_discard
		end

	doAction(card_name : STRING)
		do
			if card_name.is_equal ("Chapel") then
				cost := 2
				plus_cards := 0
				actions := 0
				buys := 0
				plus_gold := 0
				discard := 4
			elseif card_name.is_equal ("Festival") then
				cost := 5
				plus_cards := 0
				actions := 2
				buys := 1
				plus_gold := 2
				discard := 0
			elseif card_name.is_equal ("Laboratory") then
				cost := 5
				plus_cards := 2
				actions := 1
				buys := 0
				plus_gold := 0
				discard := 0
			elseif card_name.is_equal ("Market") then
				cost := 5
				plus_cards := 1
				actions := 1
				buys := 1
				plus_gold := 1
				discard := 0
			elseif card_name.is_equal ("Oasis") then
				cost := 3
				plus_cards := 1
				actions := 1
				buys := 0
				plus_gold := 1
				discard := 1
			elseif card_name.is_equal ("Salvager") then --rework
				cost := 4
				plus_cards := 0
				actions := 0
				buys := 1
				plus_gold := 1
				discard := 1
			elseif card_name.is_equal ("Smithy") then
				cost := 4
				plus_cards := 3
				actions := 0
				buys := 0
				plus_gold := 0
				discard := 0
			elseif card_name.is_equal ("Stables") then --rework
				cost := 5
				plus_cards := 3
				actions := 1
				buys := 0
				plus_gold := 0
				discard := 1
			elseif card_name.is_equal ("Village") then
				cost := 3
				plus_cards := 1
				actions := 2
				buys := 0
				plus_gold := 0
				discard := 0
			elseif card_name.is_equal ("Woodcutter") then
				cost := 3
				plus_cards := 0
				actions := 0
				buys := 1
				plus_gold := 2
				discard := 0
			end
		end

	getPlusCards() : INTEGER
		do
			Result := plus_cards
			ensure
				this_plus_cards : Result = plus_cards
		end

	getActions() : INTEGER
		do
			Result := actions
			ensure
				this_actions : Result = actions

		end

	getBuys() : INTEGER
		do
			Result := buys
			ensure
				this_buys : Result = buys

		end

	getplus_gold() : INTEGER
		do
			Result := plus_gold
			ensure
				this_plus_gold : Result = plus_gold

		end

	getdiscard () : INTEGER
		do
			Result := discard
			ensure
				this_discard : Result = discard
		end

end
