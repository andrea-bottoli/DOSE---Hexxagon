note
	description: "The position class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
	ZB_POSITION

		inherit
			ANY
		redefine
			is_equal
			end
	create
		make
	feature

	x:INTEGER
	y:INTEGER

	setX(x1:INTEGER)
	do
		x:=x1
	end

	setY(y1:INTEGER)
	do
		y:=y1
	end

	is_equal(other: like Current):BOOLEAN
		do
			if x=other.x and y=other.y then Result:=true
			else Result:=false
			end
		end

	make(x1,y1:INTEGER)
		do
			x:=x1
			y:=y1
		end

end
