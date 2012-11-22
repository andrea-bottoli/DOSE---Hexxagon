note
	description: "Server conexion for a multiplayer game."
	author: "Alejandro Yaciuk"
	date: "07/11/12"
	revision: "0.0"

class
	DO_SERVER

inherit

    SOCKET_RESOURCES

    STORABLE

create
    make

feature --status

	connected: BOOLEAN
		--is the connection established?

feature

    make
            -- Accept communication with client and exchange messages
        do

        ensure
        	connected
        end

	getInfo
		do

		end

	sendInfo
		do

		end

    process (soc1: NETWORK_STREAM_SOCKET)
            -- Receive a message, extend it, and send it back
        require
        	soc1/=Void
        do

        end

end
