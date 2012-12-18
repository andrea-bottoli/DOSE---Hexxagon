note
	description: "Class representing the bank in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7 : Leonardo Marmol"
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
			money_available := 50000
		ensure
			money_available = 50000
		end

feature -- Basic operations

	withdraw_money (a_mount: INTEGER)
			--withdraw the amount of money spent as a parameter
		require
			valid_amount: a_mount > 0 and a_mount < money_available
		do
			money_available := money_available - a_mount
		ensure
			valid_whitdraw: money_available = (old money_available - a_mount)
		end

	deposit_money (a_mount: INTEGER)
			--deposit the amount of money spent as a parameter
		require
			valid_amount: a_mount > 0
		do
			money_available := money_available + a_mount
		ensure
			valid_deposit: money_available = (old money_available + a_mount)
		end

invariant
	valid_money_available: money_available > 0

end
