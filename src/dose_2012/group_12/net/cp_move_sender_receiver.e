note
	description: "CP_MOVE_SENDER_RECEIVER is responsible for listening and sending new game messages"
	author: "Jim Darivas"
	date: "$Date$"
	revision: "$Revision$"

class
	CP_MOVE_SENDER_RECEIVER

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
			-- Listens for any gamemessages and it sends them to the "receive action"
		do
			from
				terminate := False
			until
				terminate = True
			loop
				reader.set_for_reading
				if attached {CP_GAMEMESSAGE} retrieved (reader, True) as new_message then
					action.call([new_message])
				end
			end
		end

	set_receive_action (a_action: PROCEDURE [ANY, TUPLE])
		do
			action := a_action
		end

	send_game_message (a_game_message: CP_GAMEMESSAGE)
		do
			writer.set_for_writing
			store (a_game_message, writer)
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
