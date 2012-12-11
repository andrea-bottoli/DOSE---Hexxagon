note
	description: "Summary description for {RI_NET_GAME}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_NET_GAME

	feature

		clients : ARRAY[STRING]

		initialize_connection 	--Initializes the low level objects pertaining to the network
			do

			end

		receive_summary			--Handles the event that a summary is receive
			do

			end

		broadcast_summary		--Handles the transmission of game change packets (summaries)
			do

			end

		receive_chat			--Handles the reception and logging of a message
			do

			end

		broadcast_chat			--Handles the transmission of messages
			do

			end

		finalize_connection		--On game completion, performs clean-up and graceful disconnection
			do

			end

end
