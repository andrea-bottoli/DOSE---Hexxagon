note
	description : "Client conexion for the Dominion"
	date        : "13/11/12"
	revision    : "0.0"

class
    DO_CLIENT

inherit

    SOCKET_RESOURCES

    STORABLE

create
    make

feature

	soc1: detachable NETWORK_STREAM_SOCKET

    make(master_server: STRING; master_port: INTEGER)
    	--create a new client
		local
			message: DO_OUR_MESSAGE
		do
			create soc1.make_client_by_port (master_port, master_server)
			soc1.connect
			create message.make
			message.extend ("I want to connect to the game%N")
			process(message)
			if attached {DO_OUR_MESSAGE} retrieved (soc1) as new_msg then
				io.putstring (new_msg.last)
			end
			connected:=True
		rescue
			if soc1 /= Void then
				soc1.cleanup
				connected:= False
			end
		end

feature --process the information

    process(msg: DO_OUR_MESSAGE)
        require
        	soc1/=Void
		do
			msg.independent_store (soc1)
			if attached {DO_OUR_MESSAGE} msg.retrieved (soc1) as new_msg then
				from
					new_msg.start
				until
					new_msg.after
				loop
					io.putstring (new_msg.item)
					new_msg.forth
				end
				io.new_line
			end
		end

feature

	connected: BOOLEAN
		--is the connection established?

	ip: STRING
		--ip of the master server

feature {ANY}

	append(msg: DO_OUR_MESSAGE)
		require
			msg /= Void
		do
			process(msg)
		end

end
