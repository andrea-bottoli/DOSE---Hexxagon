note
	description: "[
					The G5_MESSAGES_CONTAINER is used to exchange one or 
					more messages through the Sockets between a Server and 
					its clients. That's the reason why it inherits from the
					STORABLE class.
					]"
	author: "Luca Falsina"
	date: "12.12.2012"
	revision: "1.0"

class
	G5_MESSAGES_CONTAINER

inherit
	LINKED_LIST[G5_MESSAGE]

	STORABLE
		undefine
			is_equal, copy
		end

create
	make

end
