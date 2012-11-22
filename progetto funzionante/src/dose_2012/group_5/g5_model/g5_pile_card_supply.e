note
	description: "Summary description for {G5_PILE_CARD_SUPPLY}."
	author: "Team RioCuarto4"
	date: "$Date$"
	revision: "$Revision$"

class
	G5_PILE_CARD_SUPPLY

feature

	card: G5_CARD
		-- Indicates the type of letter of this stack

	amount_available: INTEGER
		-- Indicates the amount of cards remaining in the stack

feature

	get_instance(): G5_CARD
		-- Returns the card corresponding to this stack
		require
			(card /= VOID)
		do
		ensure
			(result = card)
		end

	decrement_amount()
		-- Decremented by 1, the available amount of the card
		require
			(amount_available > 0)
		do
		ensure
			(amount_available = old amount_available - 1)
		end

end
