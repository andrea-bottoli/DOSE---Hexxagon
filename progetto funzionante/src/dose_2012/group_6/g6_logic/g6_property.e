note
	description: "This class represent one cell which can be owned by a player"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

deferred class
	G6_PROPERTY

inherit

	G6_CELL

feature -- Representation

	ownerId: INTEGER -- Who owns this property? 0 -> bank 1-8 -> player

	cost: INTEGER -- how much does the ground cost, the mortage is the 50% of this value

	is_mortgaged: BOOLEAN -- is morgaged this property?

feature -- Basic operations

	buy (p_ownerId: INTEGER)
			-- p_ownerId is the new owner of the current property
		require
			ownerId = 0
		deferred
		ensure
			ownerId = p_ownerId
		end

	sell (p_ownerId: INTEGER)
			-- The current property is traded to another player
		require
			ownerId /= 0
		deferred
		ensure
			ownerId = p_ownerId
		end

	mortgage
			--mortgage the current property
		require
			not is_mortgaged
		deferred
		ensure
			is_mortgaged
		end

	dismortgage
		require
			is_mortgaged
		deferred
		ensure
			not is_mortgaged
		end

invariant
	ownerId >= 0 and ownerId <= 8
	cost >= 60 and cost <= 400
	ownerId = 0 implies not is_mortgaged

end
