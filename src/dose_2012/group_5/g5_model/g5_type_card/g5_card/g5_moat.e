note
	description: "Summary description for {G5_MOAT_REACTION}."
	author: "Team Rio Cuarto 4"
	date: "$30/112012$"
	revision: "$0.2$"

class
	G5_MOAT

inherit

	G5_ABSTRACT_COMMAND_CARD
		redefine
			execute
		end

create
	make

feature -- Atributes
	receiver_cards: G5_RECEIVER_COMMAND_CARD

feature {ANY} -- Intialization
	make (receiver: G5_RECEIVER_COMMAND_CARD)
	require
		receiver /= void
	do
		receiver_cards := receiver
	end

feature -- Behavior
	execute()
		-- This redefines the feature class execute () to add the behavior itself of it.
    do
    	receiver_cards.action_moat()
    end

invariant
	receiver_cards /= void
end
