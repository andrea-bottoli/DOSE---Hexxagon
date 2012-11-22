note
	description: "Summary description for {G5_CARD}."
	author: "Team RioCuarto4"
	date: "$Date$"
	revision: "$Revision$"

class
	G5_CARD

create
	make

feature {ANY} -- Intialization

	make (id_card: STRING; value_cost: INTEGER; value_type: STRING)
	-- creates a new instance of card
	require
		exist_name: id_card /= void
		cost_positive: cost > -1
		type: type.has_substring("action") or type.has_substring("reaction") or type.has_substring("attack") or
				type.has_substring("victory") or type.has_substring("curse") or type.has_substring("treasure")
	do

	end

feature -- Elements

	id: STRING
		-- Identification of the card, this corresponds to a constant in the class g5_macro_card.
	cost: INTEGER
		-- Indicates the cost of the card
	type: STRING
		-- Indicates the type of the card, the class listed in g5_macro_cards
	command: G5_ABSTRACT_COMMAND_CARD
		-- Indicates the actions to be performed by the instance of the card
end
