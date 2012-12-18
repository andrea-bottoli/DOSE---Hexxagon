note
	description: "Summary description for {CU_COORDINATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_COORDINATE

inherit ANY
	redefine
		is_equal
	end

create
	make

feature
	x: INTEGER
	y: INTEGER

feature {NONE} -- Initialization

	make(a_x,a_y: INTEGER)
		require
			valid_x: a_x>0 and a_x<25
			valid_y: a_y>0 and a_y<24
		do
			x:=a_x
			y:=a_y
		end
feature
	is_equal(other: like Current):BOOLEAN
		do
			result:= (other.x=x) and (other.y=y)
		end
end
