note
	description: "Summary description for {G4_ACTION_CARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G4_ACTION_CARDS
	inherit G4_CARDS
	redefine get_instance end


feature

	get_instance : STRING
	do
		Result := "Action"
	end
end
