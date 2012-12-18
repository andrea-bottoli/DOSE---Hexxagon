note
	description: "Class for listening all the message from the network, avoiding LOGIC to request to listen every time"
	author: "MILANO7: Jiang Wu"
	date: "$16/12/2012$"
	revision: "$1.0$"

class
	G1_NET_CLIENT_THREAD
inherit
	SED_STORABLE_FACILITIES
	SOCKET_RESOURCES
	THREAD
	rename
		make as make_thread
	end
create
	make

feature {NONE}
	l_medium: SED_MEDIUM_READER_WRITER
	l_logic_game: G1_LOGIC_CLIENT
	l_main_thread: G1_NET_CLIENT
feature

	make(a_medium: SED_MEDIUM_READER_WRITER;logic_game: G1_LOGIC_CLIENT; main_thread: G1_NET_CLIENT)
	do
		make_thread
		l_medium := a_medium
		l_main_thread := main_thread
		l_logic_game := logic_game
		l_medium.set_for_reading
	end

	execute
		-- This function automatically run and when there is a message, it will be sended to the logic_game
		-- Send message from network to LOGIC
	do
		from

		until
			l_medium.is_last_chunk
		loop
			if l_medium.is_for_reading then
				if attached {G1_MESSAGE} retrieved (l_medium, True) as message then
				 	l_logic_game.update_state (message)
				end
			end
		end
	end

end
