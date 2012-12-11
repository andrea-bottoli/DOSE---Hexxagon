note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_MSG_TO_GUI

inherit
	GR11_MSG

feature

	is_update:BOOLEAN
	--checks if the current message is a update message or not

	do
		ensure
			msg_not_deleted: true --TODO
			is_one_of_update_msg: true --TODO
	end

	is_error:BOOLEAN
	--checks if the current message is a error message

	do
		ensure
			msg_not_deleted: true --TODO
			is_one_of_error_message: true --TODO
	end

	get_content:STRING_8

	do

	end

invariant

	 is_a_update_or_is_a_error : is_update xor is_error


end
