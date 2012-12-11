note
	description: "Just testing object in order to test the sending method we've providing to logic}."
	author: "Team Milano 2"
	date: "6-12-2012"
	revision: "0.3"

class
	XX_NET_MESSAGE

create
	make
feature --Attributes

	message: STRING
	num: INTEGER

feature {NONE}

	make (string:STRING; number: INTEGER)
		do
			message:= string
			num:= number
		end

end


