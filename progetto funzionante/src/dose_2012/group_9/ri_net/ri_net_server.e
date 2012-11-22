note
	description: "Summary description for {RI_NET_SERVER}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_NET_SERVER

	feature

	clients : ARRAY[STRING]			--Stores all announced IPs for use during broadcast

		initialize_connection		--Initializes all low level objects for Network functionality
			do

			end

		respond_to_test				--If test received, answer with server description and trigger a broadcast
			do

			end

		accept_announce				--If an announcement is received, accept it and trigger a broadcast
			do

			end

		broadcast_info				--Broadcasts Lobby status to all announced clients
			do

			end



end
