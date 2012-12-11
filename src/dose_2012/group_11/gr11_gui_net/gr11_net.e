note
	description: "Interface of NET sub-component"
	author: "Debrecen3"
	date: "13/11/2012"

deferred class
	GR11_NET


feature

	recv_net_msg(m: GR11_MSG)
	--This feature validates and interprets messages received from the network.
	--If the message seems to be valid, the feature invokes the corresponding actions.
	deferred
	end

	send_net_msg(m: GR11_MSG)
	--This feature sends a network message. The message must be valid to the schema,
	--the system uses. The message can contain information about an action in a game,
	--or it can be a join request to the server.
	deferred
	end

	send_gui_msg(m: GR11_MSG)
	--After receiving a network message, the game state may need to be updated
	--(because of other players interactions). If a players action changes the game's state,
	--theses changes needs to be followed. This feature sends direct orders to the GUI
	--about what needs to be performed.
	deferred
	end



end
