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
		create Character_Pile.make

		create bart.make
		Character_Pile.force (bart)
		create blackjack.make
		Character_Pile.force (blackjack)
		create calamity.make
		Character_Pile.force (calamity)
		create gringo.make
		Character_Pile.force (gringo)
		create jesse.make
		Character_Pile.force (jesse)
		create jurdonnais.make
		Character_Pile.force (jurdonnais)
		create carlson.make
		Character_Pile.force (carlson)
		create lucky.make
		Character_Pile.force (lucky)
		create regret.make
		Character_Pile.force (regret)
		create ramirez.make
		Character_Pile.force (ramirez)
		create dollan.make
		Character_Pile.force (dollan)
		create ketchum.make
		Character_Pile.force (ketchum)
		create slab.make
		Character_Pile.force (slab)
		create lafayette.make
		Character_Pile.force (lafayette)
		create vulture.make
		Character_Pile.force (vulture)
		create thekid.make
		Character_Pile.force (thekid)
	end

feature --Rest functions

	player_pick(a_card_id : INTEGER):G4_CHARACTERS --Each Player picks a card
	do
		--Implemented for terminal
		if(a_card_id <= Character_Pile.count) then
			Character_Pile.go_i_th (a_card_id)
			Result := Character_Pile.item
			Character_Pile.remove
		else
			print("Invalid choice")
		end
	end


feature

	display_character_list
	local
		i : INTEGER
	do
		i := 1
		from Character_Pile.start until Character_Pile.after = true
			loop
				io.new_line
				io.put_string (Character_Pile.item.get_character_name + " ")
				io.put_string (" Code: ")
				print(i)
				i := i+1
				Character_Pile.forth
			end
	end
end
