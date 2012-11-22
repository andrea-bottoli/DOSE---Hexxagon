note
	description : "Client conexion for the Dominion"
	date        : "13/11/12"
	revision    : "0.0"

class
    DO_CLIENT

inherit

    SOCKET_RESOURCES

create
    make

feature

    make
    	--create a new client
        do

        end

feature --process the information

    process (soc1: NETWORK_STREAM_SOCKET)
        require
        	soc1/=Void
        do

        end
end
