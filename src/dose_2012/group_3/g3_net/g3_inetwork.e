note
	description: "Summary description for {G3_INETWORK}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$0.1$"

deferred class
	G3_INETWORK


feature {G3_CONTROLLER}
	-- mode client

	connect (ip : STRING ; message : G3_MESSAGE) : G3_MESSAGE
			-- this feature shall be called by client controller to register on the remote game
		deferred
		end

	send_to_server (message : G3_MESSAGE)
			-- send message to server controller registered after invoking feature connect
		deferred

		end

	run_server_mode
			-- set the component ready to receive conections
		deferred

		end

	send_to_client (message : G3_MESSAGE)
			-- send message to registered client
		deferred
		end


feature{G3_CONTROLLER}

	set_controller (controller_ : G3_CONTROLLER)
		do
			controller := controller_
		end


feature{NONE} -- internal feature

	controller : G3_CONTROLLER

end
