note
	description: "The main class for the game's character's pile"
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos, LuckyPunk"

class
	G4_CHARACTER_PILE
	Inherit G4_CARD_PILES
create
	make

feature --Constructor

	Character_Pile: LINKED_LIST[G4_CHARACTERS]

	make
	local bart: G4_CHARACTERS_BART_CASSIDY; blackjack: G4_CHARACTERS_BLACK_JACK; calamity: G4_CHARACTERS_CALAMITY_JANET; gringo: G4_CHARACTERS_EL_GRINGO;
		  jesse: G4_CHARACTERS_JESSE_JONES; jurdonnais: G4_CHARACTERS_JURDONNAIS; carlson: G4_CHARACTERS_KIT_CARLSON; lucky: G4_CHARACTERS_LUCKY_DUKE;
		  regret: G4_CHARACTERS_PAUL_REGRET; ramirez: G4_CHARACTERS_PEDRO_RAMIREZ; dollan: G4_CHARACTERS_ROSE_DOLLAN; ketchum: G4_CHARACTERS_SID_KETCHUM;
		  slab: G4_CHARACTERS_SLAB_THE_KILLER; lafayette: G4_CHARACTERS_SUZY_LAFAYETTE; vulture: G4_CHARACTERS_VULTURE_SAM; thekid: G4_CHARACTERS_WILLY_THE_KID;
	do
		bart.make
		Character_Pile.put (bart)
		blackjack.make
		Character_Pile.put (blackjack)
		calamity.make
		Character_Pile.put (calamity)
		gringo.make
		Character_Pile.put (gringo)
		jesse.make
		Character_Pile.put (jesse)
		jurdonnais.make
		Character_Pile.put (jurdonnais)
		carlson.make
		Character_Pile.put (carlson)
		lucky.make
		Character_Pile.put (lucky)
		regret.make
		Character_Pile.put (regret)
		ramirez.make
		Character_Pile.put (ramirez)
		dollan.make
		Character_Pile.put (dollan)
		ketchum.make
		Character_Pile.put (ketchum)
		slab.make
		Character_Pile.put (slab)
		lafayette.make
		Character_Pile.put (lafayette)
		vulture.make
		Character_Pile.put (vulture)
		thekid.make
		Character_Pile.put (thekid)
	end

feature --Rest functions

	player_pick():G4_CARDS --Each Player picks a card
	do

	end
end
