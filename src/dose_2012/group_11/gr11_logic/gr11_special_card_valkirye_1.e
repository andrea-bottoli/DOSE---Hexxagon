note
	description: "Summary description for {GR11_SPECIAL_CARD_VALKYRIE_1}."
	author: "Milano4"
	date: "30/11/2012"
	revision: "0.1"

class
	GR11_SPECIAL_CARD_VALKYRIE_1
	--valkyrie 1 : capital ship moves increased by 2
	--problemi settare ogni turno i movimenti non sono costanti

inherit
	GR11_SPECIAL_CARD

create
	make

feature {NONE}--inizializer
		make
		--create action for this specific card
			do
				action_special_card:=create {GR11_ACTION_VALKYRIE_1}
				name_id:="VALKYRIE_1"
				always:=TRUE
				end_of_turn:=FALSE
			end

end
