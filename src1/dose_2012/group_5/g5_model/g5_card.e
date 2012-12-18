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
		cost_positive: value_cost > -1
		type: value_type.has_substring("action") or value_type.has_substring("reaction") or value_type.has_substring("attack") or(
				value_type.has_substring("victory") xor value_type.has_substring("curse") xor value_type.has_substring("treasure"))
	do
		id := id_card
		cost := value_cost
		type := value_type
	end

feature -- Elements

	id: STRING
		-- Identification of the card, this corresponds to a constant in the class g5_macro_card.
	cost: INTEGER
		-- Indicates the cost of the card
	type: STRING
		-- Indicates the type of the card, the class listed in g5_macro_cards
	command1: G5_ABSTRACT_COMMAND_CARD
		-- First behavior of the card
	command2: G5_ABSTRACT_COMMAND_CARD
		-- Second behavior of the card

feature  -- Implementation

	set_command1(command_concret: G5_ABSTRACT_COMMAND_CARD)
	require
		not_null: command_concret /= void
	do
		command1 := command_concret
	ensure
		command1 = command_concret
	end


	set_command2(command_concret: G5_ABSTRACT_COMMAND_CARD)
	require
		not_null: command_concret /= void
	do
		command2 := command_concret
	ensure
		command2 = command_concret
	end

end
