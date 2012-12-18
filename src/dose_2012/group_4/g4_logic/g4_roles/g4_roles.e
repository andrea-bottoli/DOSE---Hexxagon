note
	description: "Represents the role that a player accumulates during a round of BANG!."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

deferred class
	G4_ROLES

feature --Atrributes
	Role_Name: STRING

feature --Setters and Getters

	set_role_name(a_role_name: STRING)
	require
		a_role_name.is_equal("Sheriff") or
		a_role_name.is_equal("Deputy")  or
		a_role_name.is_equal("Bandit")	or
		a_role_name.is_equal("Fugitive")
	do
		Role_Name := a_role_name
	ensure
		Role_Name.is_equal(a_role_name)
	end

	get_role_name(): STRING
	do
		Result:=Role_Name
	end

feature --Special Function

	victory_conditions(a_palyer_array: ARRAYED_LIST[G4_PLAYER]): BOOLEAN
	do

	end
end
