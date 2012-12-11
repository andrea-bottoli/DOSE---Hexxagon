note
	description: "Summary description for {G5_VICTORY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_VICTORY

inherit

	G5_ABSTRACT_COMMAND_CARD
		redefine
			execute
		end
create
	make


feature -- Atribute
	receiver_cards: G5_RECEIVER_COMMAND_CARD

feature {ANY} -- Intialization
	make (receiver: G5_RECEIVER_COMMAND_CARD)
	require
		receiver /= void
	do
		receiver_cards:=receiver
	end

feature -- Behavior
	execute()
		-- This redefines the feature class execute () to add the behavior itself of it.
    do
		receiver_cards.add_point_victory()
    end
invariant
	receiver_cards /= void
end