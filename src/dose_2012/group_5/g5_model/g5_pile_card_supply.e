note
	description: "Summary description for {G5_PILE_CARD_SUPPLY}."
	author: "Team: Rio Cuarto 4"
	date: "$24/11/2012$"
	revision: "$0.3$"

class
	G5_PILE_CARD_SUPPLY

create
	make

feature

	card: G5_CARD
		-- Indicates the type of letter of this stack

	amount_available: INTEGER
		-- Indicates the amount of cards remaining of this stack

feature -- Initialization

	make(new_card: G5_CARD; amount_max: INTEGER)
		-- Create a stack of cards
		require
			valid_arg: (new_card /= Void and amount_max > 7)
		do
			card := new_card
			amount_available := amount_max
		ensure
			card /= Void and amount_available > 7
		end

feature

	get_instance(): G5_CARD
		-- Returns the card corresponding to this stack
		require
			(card /= VOID)
		do
			result := card
		ensure
			(result = card)
		end

	decrement()
		-- Decremented by 1, the available amount of the card
		require
			(amount_available > 0)
		do
			amount_available := amount_available - 1
		ensure
			(amount_available = old amount_available - 1)
		end

end
