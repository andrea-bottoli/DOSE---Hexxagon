note
	description: "Summary description for {BS_NET_PROTOCOL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_PROTOCOL

feature -- Protocol strings

	ack: STRING
		once
			result := "#OK"
		end

	add_player: STRING
		once
			result := "#ADDPLAYER"
		end

	add_player_name: STRING
		once
			result := "#NAME"
		end

	add_player_type: STRING
		once
			result := "#TYPE"
		end

	bye: STRING
		once
			result := "#BYE"
		end

	closing: STRING
		once
			result := "#CLOSING"
		end

	rematch: STRING
		once
			result := "#REMATCH"
		end

	remove_player: STRING
		once
			result := "#REMOVEPLAYER"
		end


	sending_command: STRING
		once
			result := "#COMMAND"
		end

	sending_move: STRING
		once
			result := "#MOVE"
		end

	send_it: STRING
		once
			result := "#SENDIT"
		end

	size: STRING
		once
			result := "#SIZE"
		end

end
