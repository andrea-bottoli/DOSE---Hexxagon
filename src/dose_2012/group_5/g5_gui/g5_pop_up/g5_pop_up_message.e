note
	description: "This class is used to create a pop-up with a text message to display."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_MESSAGE

create
	make

feature
	make(a_message: STRING)
		-- This is the constructor that will create the pop-up
		require
			valid_arg: a_message /= void
		do
			message:= a_message
		end

feature -- Variable

	message: STRING
		-- This is the message to be displayed

end
