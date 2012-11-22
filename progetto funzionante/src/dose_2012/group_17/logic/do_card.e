note
	description: "Summary description for {DO_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DO_CARD

feature{NONE}

	name : STRING
	type : STRING
	cost : INTEGER

feature{ANY}

	getName() : STRING
		do
			ensure
				this_name : Result = name

		end

	getType() : STRING
		do
			ensure
				this_type : Result = type

		end

	getCost() : INTEGER
		do
			ensure
				this_cost : Result = cost

		end

	doAction(card_name : STRING)
	require
			isString : card_name /= void
	deferred end



end
