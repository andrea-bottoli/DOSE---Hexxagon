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

feature {ANY} -- Initialization

	make (pname: STRING; pcost: INTEGER)
			-- Creates a train cell from with pname as name and pcost as cost
		require
			valid_train_name: pname /= Void and pname /~ ""
			valid_train_cost: pcost >= 0
		do
			name := pname
			cost := pcost
			owner_id := 0
			is_mortgaged := False
			trains_owns := 0
		ensure
			owner_id = 0
			trains_owns = 0
		end

feature {ANY} -- Status on the ongoing game

	trains_owns: INTEGER
			-- How many trains does the owner own, from 0 to 4

	rent: INTEGER
			-- How much must a player pay if reach the current train?
		do
			if (is_mortgaged) then
				Result := 0
			else
				Result := trains_owns * 25
			end
		ensure
			Result = trains_owns * 25
		end

feature {ANY} -- Show object

	to_string: STRING
			-- Returns a string representation of current object
		do
			Result := name + "%T"
			Result.append_integer (cost)
		end

feature -- Status setting

	buy (p_owner_id: INTEGER)
			-- p_owner_id is the new owner of the current train
		require else
			valid_new_owner: p_owner_id >= 0 and p_owner_id <= 8
		do
				-- REVISE how to check trains_owns? outside?
		end

	sell (p_owner_id: INTEGER)
			-- The current train is traded to another player
		require else
			valid_new_owner: p_owner_id >= 0 and p_owner_id <= 8
		do
		end

invariant
	trains_owns >= 0 and trains_owns <= 4

end
