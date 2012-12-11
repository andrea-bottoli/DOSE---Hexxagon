note
	description: "This class is a set of rules for a game of TTNG sending to nother NET"
	author: "Rio Cuarto8"
	date: "09/11/2012"
	revision: "1.0"

class
	G2_NET_RULES_MGE

inherit

	ARRAY [BOOLEAN]

	STORABLE
		undefine
			is_equal,
			copy
		end

create
	make

end
