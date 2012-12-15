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
		set_role_name("Sheriff")
	ensure
		Role_Name.is_equal("Sheriff")
	end

feature --Special Function

	victory_conditions(a_player_array: ARRAY[G4_PLAYER]): BOOLEAN
	local i: INTEGER
	do
		from i := a_player_array.lower until i = a_player_array.upper
		loop
			if (a_player_array[i].get_item_board.get_player_role.get_role_name = "Bandit") = true or (a_player_array[i].get_item_board.get_player_role.get_role_name = "Fugitive") = true then
				Result := false
			end
		end
		Result := true
	end
end
