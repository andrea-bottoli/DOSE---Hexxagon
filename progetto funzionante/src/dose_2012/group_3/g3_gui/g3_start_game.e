note
	description: "THE WINDOW WHERE THE PLAYER WILL START A GAME WITH JOIN OR CREATE ONE"
	author: "LYDATAKIS GEORGIOU KATEROS"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_START_GAME

feature{G3_FIRST_WINDOW}
	--initialize window
	 initialize_start_game(cont : EV_FIXED)
		--initialize start game window
	do

	end


feature{NONE}
	--actions
	create_a_game
		-- use to create a new game
		do

		end

	join_a_game

		do

		end
	--	ensure		port_number>0



feature{NONE}
	port_number:INTEGER
		--store the port of the server
	create_game : EV_BUTTON
		--Button use to create a new game
	join_game : EV_BUTTON
		--Button use to join a game
	port :EV_TEXT_FIELD
		--Text where the player write the port to join a game
	main_cont : EV_FIXED
		-- the main container to which the button will be added
	comps:G3_COMPS
end
