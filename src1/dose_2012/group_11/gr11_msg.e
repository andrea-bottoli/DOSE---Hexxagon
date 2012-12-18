note
	description: "Represents the message sended beetween components"
	author: "group11"
	date: "09/11/2012"
	revision: "0.1"

class
	GR11_MSG
create
	make

feature
	message: STRING_8
	make(msg: STRING_8)
	do
		message := msg
	end


invariant
	msg_is_valid: true --TODO:the xml message must be valid in any case

end
