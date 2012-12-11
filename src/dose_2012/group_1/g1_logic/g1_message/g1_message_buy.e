note
	description: "Class that represents a message of buy for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_BUY

inherit

	G1_MESSAGE

create
	make, make_buy

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			buy := False
		end

	make_buy (a_buy: BOOLEAN)
		do
			buy := a_buy
		end

feature --Measurent

	buy: BOOLEAN
			-- If you "buy" is true, the player buys the property in that position.
			-- Else is auction for property

end
