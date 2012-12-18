note
	description: "The main class that represents all the Item Cards of the game "
	author: "Team Crete12 of Group4"
	date:"12/11/2012"
	revision: "tsampis"

deferred class
	G4_ITEM_CARDS
		inherit G4_CARDS
		redefine get_instance end

feature
	get_instance : STRING
	do
		Result := "Item"
	end
end
