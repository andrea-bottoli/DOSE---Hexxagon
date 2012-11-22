note
	description: "This class represents a ground cell"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_GROUND

inherit

	G6_PROPERTY

create
	make

feature -- Initialization

	make (line: STRING)
			-- Creates a property cell from a string of a file
		do
		ensure
			ownerId = 0
			not districtOwner
			not is_mortgaged
			houses = 0
		end

feature

	district: INTEGER -- which district does this ground pertain to?

	districtOwner: BOOLEAN -- is the owner, owner of all grounds on the district

	houseCost: INTEGER -- How much does a house cost

	houses: INTEGER -- How many houses are built in this ground? from 0 to 5, 5 = 1 hotel

	rent: INTEGER -- How much must pay who reaches this cell?
		do
		ensure
			is_mortgaged implies Result = 0
			not is_mortgaged implies ((houses = 0 and not districtOwner and Result = rentCost [6] * 2) or Result = rentCost [houses] or (houses = 0 and districtOwner and Result = rentCost [6]))
		end

feature {NONE}

	rentCost: ARRAY [INTEGER] -- rentCost[1] -> with 1 house, ... , rentCost[5] -> with 1 hotel , rentCost[6] -> without houses

feature -- Basic operations

	buy (p_ownerId: INTEGER)
			--p_ownerId is the new owner of the current ground
		do
				-- REVISE how to check districtOwner? outside?
		end

	sell (p_ownerId: INTEGER)
			-- The current ground is traded to another player
		do
		end

	mortgage
			--mortgage the current ground
		do
		end

	dismortgage
		do
		end

	build (p_houses: INTEGER)
		require
			not is_mortgaged
			ownerId /= 0
			p_houses > 0 and p_houses <= 5 - houses
		do
				-- REVISE how to check if the construction is equilibrated
		ensure
			houses = old houses + p_houses
		end

	demolish (p_houses: INTEGER)
		require
			p_houses > 0 and p_houses <= houses
		do
				-- REVISE how to check if the construction is equilibrated
		ensure
			houses = old houses - p_houses
		end

invariant
	district >= 1 and district <= 8
	houseCost >= 50 and houseCost <= 200
	houses >= 0 and houses <= 5
	rentCost [1] >= 10 and rentCost [1] <= 200
	rentCost [2] >= 30 and rentCost [2] <= 600
	rentCost [3] >= 90 and rentCost [3] <= 1400
	rentCost [4] >= 160 and rentCost [4] <= 1700
	rentCost [5] >= 250 and rentCost [5] <= 2000
	rentCost [6] >= 2 and rentCost [6] <= 50
	ownerId = 0 implies houses = 0
	ownerId = 0 implies not districtOwner

end
