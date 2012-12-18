note
	description: "Represents the role of the Deputy."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

class
	G4_ROLES_DEPUTY
		inherit
			G4_ROLES
		redefine victory_conditions end
create
	make

feature --Constructor
	make
	do
		set_role_name("Deputy")
	ensure
		Role_Name.is_equal("Deputy")
	end

feature --Special Function

	victory_conditions(a_player_array: ARRAYED_LIST[G4_PLAYER]): BOOLEAN --same as seriff
	local i: INTEGER; flag: BOOLEAN
	do
		flag := true
		from i := 1 until i = a_player_array.count + 1
		loop
			if (a_player_array[i].get_item_board.get_player_role.get_role_name.is_equal ("Bandit")) = true or (a_player_array[i].get_item_board.get_player_role.get_role_name.is_equal ("Fugitive")) = true then
				flag := false
			end
			i := i + 1
		end
		Result := flag
	end
end
