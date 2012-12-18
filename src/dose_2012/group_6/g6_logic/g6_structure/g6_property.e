note
	description: "This class represent one cell which can be owned by a player"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

deferred class
	G6_PROPERTY

inherit

	G6_CELL

feature {NONE} -- Internal representation

	cost: INTEGER
			-- how much does the ground cost, the mortage is the 50% of this value

feature {ANY} -- Status on the ongoing game

	owner_id: INTEGER assign set_owner_id
			-- Who owns this property? 0 -> bank 1-8 -> player

	is_mortgaged: BOOLEAN assign set_is_mortgaged
			-- is morgaged this property?

feature {ANY} --Access

	get_cost: INTEGER
			-- Returns the cost of the current property
		do
			Result := cost
		end

feature -- Basic operations

	buy (p_owner_id: INTEGER)
			-- p_owner_id is the new owner of the current property
		require
			valid_new_owner: owner_id = 0 -- porque se obliga a que el nuevo propietario sea el banco?
		deferred
		ensure
			owner_ok: owner_id = p_owner_id
		end

	sell (p_owner_id: INTEGER)
			-- The current property is traded to another player
		require
			valid_new_owner: owner_id /= 0
		deferred
		ensure
			owner_ok: owner_id = p_owner_id
		end
	set_is_mortgaged(bool: BOOLEAN)
		do
			is_mortgaged := bool
		end

	ret_is_mortgaged():BOOLEAN
		do
			Result := is_mortgaged
		end

	set_owner_id(p_id: INTEGER)
	require
		valid_owner_id: p_id >0 and p_id <= 8
	do
		owner_id := p_id
	ensure
		owner_id = p_id
	end
invariant
	owner_id >= 0 and owner_id <= 8
	cost >= 60 and cost <= 400
	owner_id = 0 implies not is_mortgaged

end
