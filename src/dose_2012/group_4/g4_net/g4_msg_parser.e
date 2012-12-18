note
	description: "Created to help Crete folks to parse the message"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G4_MSG_PARSER

create
	make

feature
	-- just call the make with the data from the package send ovger the newtork so it can identify the header
	-- Msgs always start with the sender id, server our the client number, followed by its type and custom data
	make(data : STRING )
	local
		data_parts : LIST[STRING_8]
	do
		data_parts := data.split ('|') -- or separator is |, do not use in the middle of custom string to avoid bugs :)
		msg_sender := data_parts.at (0)
		msg_type := data_parts.at (1)
		msg_custom := data_parts.at (2)
	end

	get_sender() : STRING
	do
		Result := msg_sender
	end
	get_type() : STRING
	do
		Result := msg_type
	end
	get_custom() : STRING
	do
		Result := msg_custom
	end

feature{NONE}
	msg_sender : STRING
	msg_type : STRING
	msg_custom : STRING
end
