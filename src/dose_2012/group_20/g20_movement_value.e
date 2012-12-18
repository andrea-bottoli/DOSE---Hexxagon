note
	description: "Summary description for {G20_MOVEMENT_VALUE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_MOVEMENT_VALUE

	create
	make--(inMovement:G20_MOVEMENT; inValue: INTEGER)
	--makeNull

	feature{NONE}
	movement: G20_MOVEMENT;
	value: INTEGER;

	feature{ANY}
	make(inMovement:G20_MOVEMENT; inValue: INTEGER)
	do
		movement := inMovement;
		value := inValue;
	end --make

	getMovement: G20_MOVEMENT
		do
			result:=movement
		end

	getValue: INTEGER
		do
			result:=value
		end

	setMovement(newMovement: G20_MOVEMENT)
		do
			movement:=newMovement
		end

	setValue(newValue: INTEGER)
		do
			value:=newValue
		end


end
