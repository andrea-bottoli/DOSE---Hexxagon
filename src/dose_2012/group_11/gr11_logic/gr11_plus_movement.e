note
	description: "increment of movement activated by special card"
	author: "Milano4"
	date: "12/12/12"
	revision: "1.0"

class
	GR11_PLUS_MOVEMENT

inherit

	GR11_MOVEMENT

		redefine
			set_range
		end

feature --function

	set_range(range:INTEGER)
	do
		movements := range + plus
	end

feature --implementation

	plus : INTEGER
	once
		Result := 2
	end

end
