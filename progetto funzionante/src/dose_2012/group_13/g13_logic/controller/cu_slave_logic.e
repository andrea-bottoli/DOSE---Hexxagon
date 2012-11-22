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

feature {CU_INIT_CONTROLLER}
	make
		do

		end

feature --Inherited methods

	move(a_direction: STRING)
		-- moves the player's pawn
		do
		end

	suggestion(a_accuse: BOOLEAN; a_room: INTEGER; a_suspect: INTEGER; a_weapon: INTEGER)
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
