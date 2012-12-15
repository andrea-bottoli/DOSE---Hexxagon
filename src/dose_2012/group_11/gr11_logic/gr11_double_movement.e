note
	description: "Double movements activated by the special card"
	author: "Milano4"
	date: "12/12/12"
	revision: "1.0"

class
	GR11_DOUBLE_MOVEMENT

inherit

	GR11_MOVEMENT

		redefine
			set_range
		end

feature --function

	set_range(range:INTEGER)
	do
		movements := range * double
	end

feature --implementation

	double : INTEGER
	once
		Result := 2
	end

end
