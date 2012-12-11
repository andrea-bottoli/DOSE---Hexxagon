note
	description: "Class that represents a message for net."
	author: "Manuel Varela  -> Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE

create
	make_text

feature -- Initialization

	make_text (a_message: STRING)
		do
			l_message := a_message
		end

feature -- Status

	l_message: STRING

feature -- Basic opetarions

	set_message (a_message: STRING)
		do
			l_message := a_message
		end

	get_message: STRING
		do
			Result := l_message
		end

end
