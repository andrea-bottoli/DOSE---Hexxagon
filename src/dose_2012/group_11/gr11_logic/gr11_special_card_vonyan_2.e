note
	description: "Summary description for {GR11_SPECIAL_CARD_VONYAN_2}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_SPECIAL_CARD_VONYAN_2
	--vonyan 2 : ships can have double move
	--ogni turno devo settare
inherit
	GR11_SPECIAL_CARD

	redefine
		get_action
	end

create
	make


feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_VONYAN_2}
				name_id:="VONYAN_2"
				always:=TRUE
				end_of_turn:=FALSE
			end

feature--redefine

	get_action:GR11_ACTION
	do
		is_activated:=FALSE
		--each turn player can use again
		Result:=action_special_card
	end


end
