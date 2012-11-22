note
	description: "Represents the 'Volcanic' Card."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"
class
	G4_WEAPON_CARDS_VOLCANIC
	inherit G4_WEAPON_CARDS

create
	make

feature --Constructor
 	make
 	do
 	ensure
  		Name.is_equal("Volcanic")
  		(CardNum >= 11) and (CardNum<=12)
  		CardSymbol.is_equal ("Clubs")
 	end
end


