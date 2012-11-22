note
	description: "Represents the 'Mustang' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_ITEM_CARDS_MUSTANG
inherit G4_ITEM_CARDS

create
	make


feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Mustang")
  		(CardNum >= 8) and (CardNum<=9)
  		CardSymbol.is_equal ("Spades")
  		CardSymbol.is_equal ("Hearts")

 	end
end
