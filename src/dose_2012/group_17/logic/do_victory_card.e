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
			isString : this_name  /= void
			isString : this_type  /= void
			isInteger : this_cost  >= 0
			isInteger : this_victory_points >= -1
		do
			name := this_name
			type := this_type
			cost := this_cost
			victory_points := this_victory_points
			ensure
				nameSetted : name = this_name
				typeSetted : type = this_type
				costSetted : cost = this_cost
				victory_pointsSetted : victory_points = this_victory_points
		end

	doAction(card_name : STRING)
		do
			if card_name.is_equal ("estate") or card_name.is_equal ("ESTATE") or card_name.is_equal ("Estate") then
				victory_points := 1
			elseif card_name.is_equal ("duchy") or card_name.is_equal ("DUCHY") or card_name.is_equal ("Duchy") then
				victory_points := 3
			elseif card_name.is_equal ("province") or card_name.is_equal ("PROVINCE") or card_name.is_equal ("Province") then
				victory_points := 6
			elseif card_name.is_equal ("curse")or card_name.is_equal ("CURSE") or card_name.is_equal ("Curse") then
				victory_points := -1
			else
				victory_points := 0
			end
		end

	getVictoryPoints() : INTEGER
		do
			Result := victory_points
			ensure
				this_victory_points : Result = victory_points
		end

end
