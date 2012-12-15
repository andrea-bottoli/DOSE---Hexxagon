note
	description: "Summary description for {CU_VAR_INTEGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_VAR_INTEGER

feature { ANY }

	value: INTEGER

	change_value (x: INTEGER)
	do
		if x = 3 then
			value := 0
		else
			value := x + 1
		end
	end
end
