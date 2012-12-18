note
	description: "Summary description for {G10_CRSN_MESSAGE_PROTOCOL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_NET_COM_PROTOCOL

feature {G10_LOBBY_USER,G10_JOINED_PLAYER,G10_HOST,G10_LOBBY_SERVER}
	-- common for all

	message_ACK 		: STRING
	once
		Result := "$ACK$"
	end

feature {G10_LOBBY_USER, G10_JOINED_PLAYER}
	-- common for clients only
	message_DISCONNECT 	: STRING
	once
		Result := "$DISCONNECT$"
	end
	message_CONNECT 	: STRING
	once
		Result := "$CONNECT$"
	end


feature{G10_LOBBY_USER}
	-- only lobby user access

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
	message_CHAT : STRING
	once
		Result := "$CHAT$"
	end

feature{G10_JOINED_PLAYER}
	-- only for joined player

	message_INIT : STRING
	once
		Result := "$INIT$"
	end
	message_TILE : STRING
	once
		Result := "$TILE$"
	end
	message_ENDTURN : STRING
	once
		Result := "$ENDTURN$"

	end
	message_NETXTURN : STRING
	once
		Result := "$NEXTTURN$"
	end

end
