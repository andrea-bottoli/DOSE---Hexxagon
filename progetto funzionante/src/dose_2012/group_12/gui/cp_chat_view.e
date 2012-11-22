note
	description: "The GUI component which will handle the view of the chat."
	author: "Christos Petropoulos"

class
	CP_CHAT_VIEW

create
	make

feature -- Initilization

	make
			-- Initializes the component
		do

		end

feature -- Update chat view

	add_new_message(message:CP_MESSAGE)
			-- Adds the new message to the chat view
		require
			message_not_void : message/=Void
		do

		end

feature -- Send message event

	send_message(message:STRING)
			-- Sends the message
		require
			message_not_void: message/=Void
		do

		end

end
