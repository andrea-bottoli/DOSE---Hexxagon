note
	description: "Summary description for {G3_INVOCATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G3_INVOCATION

create
	make

feature{NONE}

	make (new_invocation: STRING)
		do
			name_invocation := new_invocation
		end

feature{G3_CONTROLLER}

	set_invocation (new_invocation: STRING)
		do
			name_invocation := new_invocation
		end

	set_parameters (new_parameters : ANY)
		do
			parameters := new_parameters
		end

	set_parameters2 (new_parameters : ANY)
		do
			parameters2 := new_parameters
		end

	name_invocation : STRING

	parameters : ANY

	parameters2 : ANY



end
