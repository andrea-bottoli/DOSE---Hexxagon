note
	description: "Summary description for {G3_CARD}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_CARD

create
	make

feature {NONE}


	make (number_card: STRING ; kind_card: STRING; special_card: BOOLEAN)
			-- Initialize card whit parameters
		require
			valid_number: number_card = "A" or  number_card = "2" or  number_card = "3" or number_card = "4" or
						  number_card = "5" or  number_card = "6" or  number_card = "7" or number_card = "8" or
						  number_card = "9" or  number_card = "10" or  number_card = "J" or  number_card = "Q" or
						  number_card = "K" or  number_card = Void
			valid_kind_card: kind_card = "BLACK" or kind_card = "RED" or kind_card = "BLUE" or kind_card = "GREEN" or
							 kind_card = "THE MAHJONGG" or kind_card="THE DOG" or kind_card= "THE DRAGON" or
							 kind_card = "THE PHOENIX"
	
		do
		ensure
			number = number_card
			kind = kind_card
			special = special_card
		end


feature
	number : STRING
	kind : STRING
	special : BOOLEAN



invariant
	correct_card:((number /= Void) and (not special)) or
				 ((special) and (number = Void) and (kind = "THE DOG" or
				    kind = "THE DRAGON" or kind = "THE MAHJONGG" or kind="THE PHOENIX"))
end
