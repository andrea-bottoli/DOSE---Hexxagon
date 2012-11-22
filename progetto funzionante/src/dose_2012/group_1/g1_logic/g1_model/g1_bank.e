note
	description: "Class representing the bank in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_BANK

create
	make

feature {ANY}

	money_available: INTEGER

feature -- Initialization

	make
			-- Initialize the bank whit default values
		do
		ensure
			money_available = 20000
		end

feature -- Basic operations

	withdraw_money (amount: INTEGER)
			--withdraw the amount of money spent as a parameter
		require
			valid_amount: amount > 0 and amount < money_available
		do
		ensure
			valid_whitdraw: money_available = (old money_available - amount)
		end

	deposit_money (amount: INTEGER)
			--deposit the amount of money spent as a parameter
		require
			valid_amount: amount > 0
			valid_amount2: (amount + money_available) < 20000
		do
		ensure
			valid_deposit: money_available = (old money_available + amount)
		end

invariant
	valid_money_available: money_available > 0

end
