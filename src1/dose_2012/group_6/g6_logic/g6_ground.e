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

feature {ANY} -- Initialization

	make (pname: STRING; pcost: INTEGER; pdistrict: INTEGER; phouseCost: INTEGER; r0: INTEGER; r1: INTEGER; r2: INTEGER; r3: INTEGER; r4: INTEGER; r5: INTEGER)
			-- Creates a ground cell
		do
			name := pname
			cost := pcost
			owner_id := 0
			is_mortgaged := False
			district := pdistrict
			houseCost := phouseCost
			create rentcost.make_filled (0, 0, 5)
			rentCost [0] := r0
			rentCost [1] := r1
			rentCost [2] := r2
			rentCost [3] := r3
			rentCost [4] := r4
			rentCost [5] := r5
			district_owner := False
			houses := 0
		ensure
			owner_id = 0
			not district_owner
			not is_mortgaged
			houses = 0
		end

feature {NONE} -- Internal representation

	district: INTEGER
			-- which district does this ground pertain to?

	houseCost: INTEGER
			-- How much does a house cost

	rentCost: ARRAY [INTEGER]
			-- rentCost[i] -> with i houses

feature {ANY} -- Status on the ongoing game

	get_district: INTEGER
			--Returns the district of the current ground
		do
			Result := district
		end

	get_houseCost: INTEGER
			--Returns the houseCost of the current ground
		do
			Result := houseCost
		end

	district_owner: BOOLEAN
			-- is the owner, owner of all grounds on the district

	houses: INTEGER
			-- How many houses are built in this ground? from 0 to 5, 5 = 1 hotel

	rent: INTEGER
			-- How much must pay who reaches this cell?
		do
			if (is_mortgaged) then
				Result := 0
			else
				if (houses = 0 and district_owner) then
					Result := 2 * rentCost [0]
				else
					Result := rentCost [houses]
				end
			end
		ensure
			is_mortgaged implies Result = 0
			not is_mortgaged implies ((houses = 0 and not district_owner and Result = rentCost [6] * 2) or Result = rentCost [houses] or (houses = 0 and district_owner and Result = rentCost [6]))
		end

feature --Show object

	to_string: STRING
			-- Returns a string representation of current object
		local
			res: STRING
			i: INTEGER
		do
			res := name + "%T"
			res.append_integer (cost)
			res.append ("%T")
			res.append_integer (district)
			res.append ("%T")
			res.append_integer (houseCost)
			res.append ("%T")
			from
				i := 0
			until
				i = 6
			loop
				res.append_integer (rentCost [i])
				res.append ("%T")
				i := i + 1
			end
			Result := res
		end

feature -- Basic operations

	buy (p_owner_id: INTEGER)
			--p_owner_id is the new owner of the current ground
		do
				-- REVISE how to check district_owner? outside?
		end

	sell (p_owner_id: INTEGER)
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
			owner_id /= 0
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
	rentCost [0] >= 2 and rentCost [0] <= 50
	rentCost [1] >= 10 and rentCost [1] <= 200
	rentCost [2] >= 30 and rentCost [2] <= 600
	rentCost [3] >= 90 and rentCost [3] <= 1400
	rentCost [4] >= 160 and rentCost [4] <= 1700
	rentCost [5] >= 250 and rentCost [5] <= 2000
	owner_id = 0 implies houses = 0
	owner_id = 0 implies not district_owner

end
