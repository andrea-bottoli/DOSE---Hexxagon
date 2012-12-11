note
	description: "Summary description for {G21_RULE_PLUS} "

	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_RULE_PLUS
inherit
	G21_RULES
	redefine isMakeChange end

	feature
	isMakeChange:BOOLEAN
	do

	end

	makeChangeAndUpdate(pos_X:INTEGER_32 ;
pos_Y:INTEGER_32 ; card:G21_CARD)
	do

	end

end
