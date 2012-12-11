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

--	make (a_name : STRING a_type : STRING a_cost : INTEGER)
--	do
--		name := a_name
--		type := a_type
--		cost := a_cost
--	end


	getName() : STRING
		do
			Result := name
			ensure
				this_name : Result = name
		end

	getType() : STRING
		do
			Result := type
			ensure
				this_type : Result = type
		end

	getCost() : INTEGER
		do
			Result := cost
			ensure
				this_cost : Result = cost

		end

	doAction(card_name : STRING)
	require
			isString : card_name /= void
	deferred end



end
