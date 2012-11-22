note
	description: "Summary description for {G21_VALUATED_MOVE}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

class
	G21_VALUATED_MOVE -- This class is a descendent of G21_MOVE. It works just like G21_MOVE but it also provides and attribute "value" that it's used to show how a possible move is good

inherit
	G21_MOVE

create
	make_with_value

feature{G21_AI} -- Attributes

	value: INTEGER -- a value that indicates how much a possible Ai move is good

feature{NONE} -- Creation

	make_with_value (new_card: G21_CARD; new_position: G21_POINT; new_value: INTEGER) -- like G21_MOVE make feature, it also receives a value to set in variable "value"

		require

			new_card_valid: new_card/=void
			new_position_valid: new_position/=void and then new_position.x>=1 and then new_position.x<=3 and then new_position.y>=1 and then new_position.y<=3

		do

			set_card(new_card)
			set_position(new_position)
			set_value(new_value)

		ensure

			card_set: card/=void and then card=new_card
			card_not_changed: new_card=old new_card
			position_set: position/=void and then position.x=new_position.x and then position.y=new_position.y
			new_position_not_changed: new_position=old new_position and then new_position.x=old new_position.x and then new_position.y=old new_position.y
			value_set: value=new_value

		end

feature{G21_AI} --Procedures

	set_value (new_value: INTEGER) -- it sets the variable "value" to the parameter "new_value" value

		require

		do

			value:=new_value

		ensure

			value_set: value=new_value

		end

end
