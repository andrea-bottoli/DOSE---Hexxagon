note
	description: "This class represents a service cell"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_SERVICE

inherit

	G6_PROPERTY

create
	make

feature {ANY} -- Initialization

	make (pname: STRING; pcost: INTEGER)
			-- Creates a service cell with pname as name and pcost as cost
		require
			valid_service_name: pname /= Void and pname /~ ""
			valid_service_cost: pcost >= 0
		do
			name := pname
			cost := pcost
			owner_id := 0
			is_mortgaged := False
			services_owner := False
		ensure
			owner_id = 0
			not services_owner
		end

feature {ANY} -- Status on the ongoing game

	services_owner: BOOLEAN
			-- does the owner own 2 services?

	rent (dice: INTEGER): INTEGER
			-- How much must a player pay if reach the current train?
		require
			dice >= 2 and dice <= 12
		do
			if (is_mortgaged) then
				Result := 0
			else
				if (services_owner) then
					Result := 10 * dice
				else
					Result := 4 * dice
				end
			end
		ensure
			services_owner implies Result = 10 * dice
			not services_owner implies Result = 4 * dice
		end

feature {ANY} -- Show object

	to_string: STRING
			-- Returns a string representation of current object
		do
			Result := name + "%T"
			Result.append_integer (cost)
		end

feature -- Basic operations

	buy (p_owner_id: INTEGER)
			-- p_owner_id is the new owner of the current ground
		require else
			valid_new_service_owner: p_owner_id >= 0 and p_owner_id <= 8
		do
				-- REVISE how to check allservices_owner? outside?
		end

	sell (p_owner_id: INTEGER)
			-- The current service is traded to another player
		require else
			valid_new_service_owner: p_owner_id >= 0 and p_owner_id <= 8
		do
		end

invariant
	owner_id = 0 implies not services_owner
	cost = 150

end
