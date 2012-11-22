note
	description: "Represents a message for the Logic subcomponent"
	author: "Milano4"
	date: "09/11/2012"
	revision: "0.5"

class
	GR11_MSG_TO_LOGIC

inherit
	GR11_MSG

feature

	is_command:BOOLEAN
	--checks if the current message is a command message or not

	do
		ensure
			msg_not_deleted: true --TODO
			is_one_of_command_msg: true --TODO
	end

	is_request:BOOLEAN
	--checks if the current message is a request message

	do
		ensure
			msg_not_deleted: true --TODO
			is_one_of_request_message: true --TODO
	end

	get_content:STRING_8

	do

	end

invariant

	 is_a_command_or_is_a_request : is_command xor is_request


end
