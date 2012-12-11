note
	description: "Summary description for {RI_NET_CLIENT}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_NET_CLIENT

inherit
	SOCKET_RESOURCES



	feature

		connect (IP : STRING; port : INTEGER) --Connects to a server
			local
				soc: NETWORK_STREAM_SOCKET
			do

			end

		connect_game (port : INTEGER)
			do

			end

		request_disconnect
			do

			end

		announce			--Sends a formal message to an available server signaling the initiation of the connection handshake
			do

			end

		testConnection		--Performs a basic ping and requests basic data to test the connection and the server
			do

			end

		requestNewGame		--Sends a NewGameRequest to the server. Should be answered with GameID
			do

			end

		sendSummary	(game_summary : STRING)	--Sends an End-Of-Round Summary to the server for processing and replication
			do

			end

		onSummaryReceived	--To be used as an agent for the socket's OnReceive event
			do

			end

		sendChat (message : STRING) --Sends a message to the server, to be logged and forwarded to other clients
			do

			end

		onReceiveChat 		--To be used as an agent for receiving a chat message
			do

			end








end
