note
	description: "Represents the role of the Sheriff."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

class
	G4_ROLES_SHERIFF
		inherit
			G4_ROLES
		redefine victory_conditions end
create
	make

feature --Constructor
	make
	do
	ensure
		Role_Name.is_equal("Sheriff")
	end

feature --Special Function

	victory_conditions: BOOLEAN

end
