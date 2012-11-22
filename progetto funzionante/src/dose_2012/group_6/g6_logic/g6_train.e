note
	description: "This class represents a train cell"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_TRAIN

inherit

	G6_PROPERTY

create
	make

feature -- Initialization

	make
			-- Creates a train cell from a string of a file
		do
		ensure
			ownerId = 0
			trainsOwns = 0
		end

feature --Access

	trainsOwns: INTEGER -- How many trains does the owner own, from 1 to 4

	rent: INTEGER
		do
		ensure
			Result = trainsOwns * 25
		end

feature -- Status setting

	buy (p_ownerId: INTEGER)
			--p_ownerId is the new owner of the current train
		do
				-- REVISE how to check trainsOwns? outside?
		end

	sell (p_ownerId: INTEGER)
			-- The current train is traded to another player
		do
		end

	mortgage
			--mortgage the current train
		do
		end

	dismortgage
		do
		end

invariant
	trainsOwns >= 1 and trainsOwns <= 4

end
