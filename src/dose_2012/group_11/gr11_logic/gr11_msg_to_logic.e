note
	description: "Given a BBS model, this class operates on it according to the xml command given upon creation"
	author: "Milano4"
	date: "09/11/2012"
	revision: "0.5"

class
	GR11_MSG_TO_LOGIC

inherit
	GR11_MSG

create
	make

feature --creation
	make(xml:STRING)
		--given an xml command of the protocol this object will contain the algorythm to apply to a given model when needed
		require
			creation_by_xml_string: xml @ 1 = '<'
		local
					str_index : INTEGER
		do
			from
				str_index:=1
			until
				str_index > xml.count
			loop

			end
		end
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

	get_content:STRING

	do

	end

invariant

	 is_a_command_or_is_a_request : is_command xor is_request


end
