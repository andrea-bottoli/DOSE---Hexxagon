note
	description: "This class represents a cards (community chest or chance)"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_CARD

create
	make

feature {NONE} -- Internal representation

	message: STRING

	type: INTEGER

	id: INTEGER

feature {ANY} -- Initialization

	make (ptype: INTEGER; pid: INTEGER; pmessage: STRING)
			-- Initialization for `Current' card
		require
			pmessage /~ ""
			ptype = 1 or ptype = 2
			pid >= 1 and pid <= 17
		do
			message := pmessage
			type := ptype
			id := pid
		end

feature {ANY} -- Access

	get_message: STRING
		do
			Result := message
		end

	get_type: INTEGER
		do
			Result := type
		end

	get_id: INTEGER
		do
			Result := id
		end

feature {ANY} -- show object

	to_string: STRING
			-- Returns a string representation of a card
		do
			Result := ""
			Result.append (type.out)
			Result.append ("%T")
			Result.append (id.out)
				--			Result.append ("%T")
				--			Result.append (message)
		end

end
