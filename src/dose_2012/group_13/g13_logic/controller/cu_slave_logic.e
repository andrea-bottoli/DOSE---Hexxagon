note
	description: "This class implements the behaviour of the game in Slave Mode"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SLAVE_LOGIC

inherit
	CU_LOGIC

create
	make

feature
	net: CU_CLIENT

feature {CU_INIT_CONTROLLER}
	make
		do
			create game.make
			--create net.make
		ensure
--			ok_net: net /= void
		end

feature --Inherited methods
	rcv_message(a_msg: CU_MESSAGE)--It is not useless! From here we receive everything about messages that must go between gui and net
		do
		end

	move(a_direction: STRING)
		-- moves the player's pawn
		do
		end

	suggestion(a_accuse: BOOLEAN; a_room: CU_ROOM_CARD; a_suspect: CU_SUSPECT_CARD; a_weapon: CU_WEAPON_CARD)
		-- gives the chance to make a suggestion or an accusation
		do
		end
	use_secret_passage()
		-- gives the chanche of using a secret passage in a room
		do
		end
	leave_room(a_corridor: CU_CORRIDOR)
		-- allows to exit from the door using the chosen door
		do
		end

feature {CU_OBSERVABLE}
	update(a_subject: CU_OBSERVABLE; a_mess: CU_MESSAGE)
		--this is for receiving updates from Network (and gui?)
		do

		end
end
