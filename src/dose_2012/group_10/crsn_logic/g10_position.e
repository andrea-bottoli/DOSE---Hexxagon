note
	description: "Summary description for {POSITION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_POSITION

create
	make

feature
	X:INTEGER
	Y:INTEGER

-- mutator methods.
feature
	set_x(arg : INTEGER) -- routine sets the x attribute of position to x
	require
         in_range: arg <=72 and arg >=0
	do
		X := arg
	end

	set_y(arg : INTEGER) -- routine sets the y attribute of position to x
	require
         in_range: arg <=72 and arg >=0
	do
		Y := arg
	end

	get_x():INTEGER
	do
		Result:=X
	end

	get_y():INTEGER
	do
		Result:=Y
	end

-- constructors.
feature
	make()
	do
		X := 0
		Y := 0
	end

end
