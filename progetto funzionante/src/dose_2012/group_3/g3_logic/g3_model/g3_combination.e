note
	description: "Summary description for {G3_COMBINATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G3_COMBINATION


feature

	is_valid : BOOLEAN
		-- Verifies if the combination of cards is a valid play.
	do
	ensure
		Result = True or Result = False
	end



feature

	cards : LINKED_LIST [G3_CARD]

invariant
	correct_attributes: cards/= Void

end
