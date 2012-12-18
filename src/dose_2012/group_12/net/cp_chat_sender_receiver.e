note
	description: "CP_CHAT_SENDER_RECEIVER is responsible for listening and sending new chat messages"
	author: "Jim Darivas"
	date: "$Date$"
	revision: "$Revision$"

class
	CP_CHAT_SENDER_RECEIVER

inherit

	SED_STORABLE_FACILITIES
	THREAD
		rename
			make as thread_make,
			exit as thread_exit
		end

create

	make

feature

	make (a_socket: NETWORK_STREAM_SOCKET; a_id: INTEGER)
		do
			thread_make
			id := a_id
			create reader.make (a_socket)
			create writer.make (a_socket)
		end

	execute
		do
			from
				terminate := False
			until
				terminate
			loop
				reader.set_for_reading
				if attached {CP_MESSAGE} retrieved(reader, True) as new_message then
					action.call ([new_message.get_player_name, new_message.get_message])
				end
			end
		end

	set_receive_action (a_action: PROCEDURE [ANY, TUPLE])
		do
			action := a_action
		end

	send_message (message: CP_MESSAGE)
		do
			writer.set_for_writing
			store (message, writer)
		end

	terminate_thread
		do
			terminate := True
		end

feature {NONE}

	terminate: BOOLEAN
	id: INTEGER
	reader: SED_MEDIUM_READER_WRITER
	writer: SED_MEDIUM_READER_WRITER
	action: PROCEDURE [ANY, TUPLE]

end
