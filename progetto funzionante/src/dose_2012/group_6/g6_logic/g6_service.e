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

feature -- Initialization

	make (line: STRING)
			-- Creates a service cell from a string of a file
		do
		ensure
			ownerId = 0
			not servicesOwner
		end

feature

	servicesOwner: BOOLEAN -- does the owner own 2 services?

	rent (dice: INTEGER): INTEGER
		require
			dice >= 2 and dice <= 12
		do
		ensure
			servicesOwner implies Result = 10 * dice
			not servicesOwner implies Result = 4 * dice
		end

feature --Basic operations

	buy (p_ownerId: INTEGER)
			--p_ownerId is the new owner of the current ground
		do
				-- REVISE how to check allServicesOwner? outside?
		end

	sell (p_ownerId: INTEGER)
			-- The current service is traded to another player
		do
		end

	mortgage
			--mortgage the current service
		do
		end

	dismortgage
		do
		end

invariant
	ownerId = 0 implies not servicesOwner
	cost = 150

end
