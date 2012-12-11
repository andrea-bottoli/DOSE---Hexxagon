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
			isString : this_name /= void
			isString : this_type /= void
			isInteger : this_cost >= 0
			isInteger : this_golds >= 0
		do
			name  := this_name
			type  := this_type
			cost  := this_cost
			golds := this_golds
			ensure
				nameSetted : name = this_name
				typeSetted : type = this_type
				costSetted : cost = this_cost
				goldsSetted : golds = this_golds

		end

	doAction(card_name : STRING)
		do
			if card_name.is_equal ("copper") or card_name.is_equal ("COPPER") or card_name.is_equal ("Copper") then
				golds := 1
			elseif card_name.is_equal ("silver") or card_name.is_equal ("SILVER") or card_name.is_equal ("Silver") then
				golds := 2
			elseif card_name.is_equal ("gold") or card_name.is_equal ("GOLD") or card_name.is_equal ("Gold") then
				golds := 3
			else
				golds :=0
			end

		end

	getGolds() : INTEGER
		do
			Result := golds
			ensure
				this_golds : Result = golds
		end

end
