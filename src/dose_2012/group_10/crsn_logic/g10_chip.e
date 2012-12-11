note
	description: "Summary description for {CHIP}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_CHIP
create
	make
feature
	ChipCode:INTEGER 	--0 = none
						--1 = paladin
						--2 = peasant
						--3 = thief
						--4 = sherif
feature
	get_chip_code():INTEGER
	do
		Result:=ChipCode
	end

--constructors
feature{ANY}
	make(TheCode:INTEGER)
	do
		ChipCode := TheCode
	end
end
