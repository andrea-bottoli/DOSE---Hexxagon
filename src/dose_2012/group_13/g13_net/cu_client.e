note
	description: "Summary description for {CU_CLIENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CLIENT

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
			message: CU_NET_MESSAGE
		do
			create soc1.make_client_by_port (master_port, master_server)
			soc1.connect
			create message.make
			io.putstring ("Please don't close this window.%N")
			message.extend ("I want to connect to the game.%N")
			process(message)
			if attached {CU_NET_MESSAGE} retrieved (soc1) as new_msg then
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

    process(msg: CU_NET_MESSAGE)
        require
        	soc1/=Void
		do
			msg.independent_store (soc1)
			if attached {CU_NET_MESSAGE} retrieved (soc1) as new_msg then
				from
					new_msg.start
				until
					new_msg.off
				loop
					io.putstring (new_msg.item)
					io.new_line
					new_msg.forth
				end
				io.new_line
			end
		end

	listen
		do
			if attached {CU_NET_MESSAGE} retrieved (soc1) as new_msg then
				from
					new_msg.start
				until
					new_msg.off
				loop
					io.putstring (new_msg.item)
					io.new_line
					new_msg.forth
				end
			end
		end

feature

	connected: BOOLEAN
		--is the connection established?

	turn: BOOLEAN
		--is the players turn?

feature {ANY}

	append(msg: CU_NET_MESSAGE)
		require
			msg /= Void
		do
			process(msg)
			listen
		end

end
