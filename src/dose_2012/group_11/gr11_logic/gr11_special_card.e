note
	description: "Summary description for {GR11_SPECIAL_CARD}."
	author: "Milano4"
	date: "27/11/2012"
	revision: "0.1"

class
	GR11_SPECIAL_CARD

feature{NONE}
	action_special_card:GR11_ACTION
	--specific action
	is_activated:BOOLEAN
	--card is already actived
	name_id:STRING
	--name to identify specific special card
	always:BOOLEAN
	--player can activate always in the turn
	end_of_turn:BOOLEAN
	--effect to this card are at the end of the turn

feature --query

	get_action:GR11_ACTION
	--return specific action to this special card
	do
		is_activated:=TRUE
		Result:=action_special_card
	end

	can_activate_card:BOOLEAN
	--control if player can use this special card
	--if is already activated return false
		do
			if is_activated=TRUE then
			Result:=FALSE
			else
				Result:=TRUE
			end
		end

	get_name_id:STRING
	do
		Result:=name_id
	end

end
