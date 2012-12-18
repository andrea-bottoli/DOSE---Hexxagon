note
	description: "This class is a set of rules for a game of TTNG sending to nother NET"
	author: "Team Rio Cuarto8"
	date: "$Date$"
	revision: "1.1"

class
	G2_NET_RULES_MGE

inherit

	ARRAY [BOOLEAN]

	G2_NET_MJE
		undefine
			is_equal,
			copy
		end

create
	make

end
