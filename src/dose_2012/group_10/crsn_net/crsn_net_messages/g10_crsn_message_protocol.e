note
	description: "Summary description for {G10_CRSN_MESSAGE_PROTOCOL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_CRSN_MESSAGE_PROTOCOL

feature {ANY} -- common
	message_DISCONNECT 	: STRING
	once
		Result := "$DISCONNECT$"
	end
	message_CONNECT 	: STRING
	once
		Result := "$CONNECT$"
	end
	message_OK			: STRING
	once
		Result := "$OK$"
	end
	message_ACK 		: STRING
	once
		Result := "$ACK$"
	end

feature{ANY} -- protocol about connection between lobby_user and lobby_server

	message_GET_USERS : STRING
	once
		Result := "$GET_USERS$"
	end
	message_GET_GAMES : STRING
	once
		Result := "$GET_GAMES$"
	end
	message_CREATE : STRING
	once
		Result := "$CREATE$"
	end
	message_JOIN : STRING
	once
		Result := "$JOIN$"
	end


feature{ANY} -- protocol about connection between lobby_user and lobby_server

-- data_message "request for join" (message to stelnei o joined player me obj any to object tou net_info pou periexei ta stoixeia tou eautou tou)

-- ena data_message "send init game" pou me to opoio o host 8a tou apantaei k 8a tou dinei object ena G10_GAME pou 8a to vazoume sto G10_GAME object tou join

-- ena special_data_message "insert tile to terrain" me obj ena G10_TILE kai i, j 2 ints pou 8a einai to row,col sto terrain -> 8a to stelnei kai o joined kai o host

-- mia me8odo pou kanei send se olous tous joined to "insert tile to terrain" message

-- ena message "ended my turn" ->8a to stelnei o joined otan teleiwnei o gyros tou
--(auto mhn to kaneis akoma giati sthn ousia o player teleiwnei ton guro tou otan steilei ena tile (auto pou epaikse) )

-- ena data_message "next turn" me obj thn metavlhth pou mas leei poios einai o current player tou epomenou gurou(int h' string analoga me to ti einai auto sto logic twn rwsidwn)

end
