note
	description : "This class implements  a machine player"
	author	    : "Jorge E. Gonzalez, Hugo H. Avalos"
	date        : "$Date$"
	revision    : "$Revision$"

class
	G20_AIPLAYER

inherit
	G20_PLAYER
	redefine move, invalid_move end

create
	make

feature
	make
		do

		end

feature -- next movement
	move :G20_MOVEMENT --board : G20_MAINBOARD; players_number: INTEGER; handy_tiles: G20_SATCHEL): G20_MOVEMENT
--			-- We need to know the board state to calculate the new movement
--			-- We need to know the number of players in order to know with positions of the board could we use
--			-- We need the handy tiles corresponding to the AI player in order to know the possible options avialables.

--		require
--			players_number > 1
--		local
--			l_move: G20_MOVEMENT
		do
--			-- calculate the optional next movement based on the entry information
--			-- Sends the next move of an AI Player to the LOGIC	component
--		ensure
--			-- G20_LogicCore.Validate(l_move: G20_MOVEMENT)
		end
	invalid_move
		do
			--handles when a movement that this player mad is invalid.
		end

end
