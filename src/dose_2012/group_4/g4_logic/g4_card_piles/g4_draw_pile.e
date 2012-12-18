note
	description: "The main class for the game's Drawpile "
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos, LuckyPunk"

class
	G4_DRAW_PILE
	Inherit G4_CARD_PILES

create
	make

feature --Constructor
	make
	local i: INTEGER; j: INTEGER; a_symbol: STRING;
		  bang: G4_ACTION_CARDS_BANG; beer: G4_ACTION_CARDS_BEER; catbalou: G4_ACTION_CARDS_CATBALOU; duell: G4_ACTION_CARDS_DUELL;
		  gatling: G4_ACTION_CARDS_GATLING; generalstore: G4_ACTION_CARDS_GENERALSTORE; indians: G4_ACTION_CARDS_INDIANS; miss: G4_ACTION_CARDS_MISS;
		  panic: G4_ACTION_CARDS_PANIC; saloon: G4_ACTION_CARDS_SALOON; stagecoach: G4_ACTION_CARDS_STAGECOACH; welsfar: G4_ACTION_CARDS_WELSFARGO;
		  barrel: G4_ITEM_CARDS_BARREL; dynamite: G4_ITEM_CARDS_DYNAMITE; jail: G4_ITEM_CARDS_JAIL; mustang: G4_ITEM_CARDS_MUSTANG; scope: G4_ITEM_CARDS_SCOPE;
		  carbine: G4_WEAPON_CARDS_CARBINE; remington: G4_WEAPON_CARDS_REMINGTON; schofield: G4_WEAPON_CARDS_SCHOFIELD; volcanic: G4_WEAPON_CARDS_VOLCANIC;
		  winchester: G4_WEAPON_CARDS_WINCHESTER
	do
		create Card_Pile.make

		from i := 1 until i = 5
		loop
			if i = 1 then a_symbol := "Diamonds"
				from j := 2 until j = 15
				loop
					create bang.make
					bang.set_symbol (a_symbol)
					bang.set_number (j)
					Card_Pile.force (bang)
					if j = 8 then
						create panic.make
						panic.set_symbol (a_symbol)
						panic.set_number (j)
						Card_Pile.force (panic)
					end
					if j = 9 or j = 10 or j = 11 then
						create catbalou.make
						catbalou.set_symbol (a_symbol)
						catbalou.set_number (j)
						Card_Pile.force (catbalou)
					end
					if j = 12 then
						create duell.make
						duell.set_symbol (a_symbol)
						duell.set_number (j)
						Card_Pile.force (duell)
					end
					if j = 13 or j = 14 then
						create indians.make
						indians.set_symbol (a_symbol)
						indians.set_number (j)
						Card_Pile.force (indians)
					end
					j := j + 1
				end
			end
			if i = 2 then a_symbol := "Clubs"
				from j := 2	until j = 10
				loop
					create bang.make
					bang.set_symbol (a_symbol)
					bang.set_number (j)
					Card_pile.force (bang)
					if j = 8 then
						create duell.make
						duell.set_symbol (a_symbol)
						duell.set_number (j)
						Card_pile.force (duell)
					end
					if j = 9 then
						create generalstore.make
						generalstore.set_symbol (a_symbol)
						generalstore.set_number (j)
						Card_pile.force (generalstore)
					end
					j := j + 1
				end
				from j := 10 until j = 15
				loop
					create miss.make
					miss.set_symbol (a_symbol)
					miss.set_number (j)
					Card_pile.force (miss)
					if j = 11 or j = 12 then
						create schofield.make
						schofield.set_symbol (a_symbol)
						schofield.set_number (j)
						Card_pile.force (schofield)
					end
					j := j + 1
				end
				create volcanic.make
				volcanic.set_symbol (a_symbol)
				volcanic.set_number (10)
				Card_pile.force (volcanic)
				create remington.make
				remington.set_symbol (a_symbol)
				remington.set_number (13)
				Card_pile.force (remington)
				create carbine.make
				carbine.set_symbol (a_symbol)
				carbine.set_number (14)
				Card_pile.force (carbine)
			end
			if i = 3 then a_symbol := "Spades"
				from j := 2	until j = 9
				loop
					create miss.make
					miss.set_symbol (a_symbol)
					miss.set_number (j)
					Card_pile.force (miss)
					j := j + 1
				end
				create winchester.make
				winchester.set_symbol (a_symbol)
				winchester.set_number (j)
				Card_pile.force (winchester)
				create stagecoach.make
				stagecoach.set_symbol (a_symbol)
				stagecoach.set_number (9)
				Card_pile.force (stagecoach)
				create stagecoach.make
				stagecoach.set_symbol (a_symbol)
				stagecoach.set_number (9)
				Card_pile.force (stagecoach)
				create volcanic.make
				volcanic.set_symbol (a_symbol)
				volcanic.set_number (10)
				Card_pile.force (volcanic)
				create jail.make
				jail.set_symbol (a_symbol)
				jail.set_number (10)
				Card_pile.force (jail)
				create jail.make
				jail.set_symbol (a_symbol)
				jail.set_number (11)
				Card_pile.force (jail)
				create duell.make
				duell.set_symbol (a_symbol)
				duell.set_number (11)
				Card_pile.force (duell)
				create generalstore.make
				generalstore.set_symbol (a_symbol)
				generalstore.set_number (12)
				Card_pile.force (generalstore)
				create barrel.make
				barrel.set_symbol (a_symbol)
				barrel.set_number (12)
				Card_pile.force (barrel)
				create barrel.make
				barrel.set_symbol (a_symbol)
				barrel.set_number (13)
				Card_pile.force (barrel)
				create schofield.make
				schofield.set_symbol (a_symbol)
				schofield.set_number (13)
				Card_pile.force (schofield)
				create bang.make
				bang.set_symbol (a_symbol)
				bang.set_number (14)
				Card_pile.force (bang)
				create scope.make
				scope.set_symbol (a_symbol)
				scope.set_number (14)
				Card_pile.force (scope)
			end
			if i = 4 then a_symbol := "Hearts"
				create dynamite.make
				dynamite.set_symbol (a_symbol)
				dynamite.set_number (2)
				Card_pile.force (dynamite)
				create welsfar.make
				welsfar.set_symbol (a_symbol)
				welsfar.set_number (3)
				Card_pile.force (welsfar)
				create jail.make
				jail.set_symbol (a_symbol)
				jail.set_number (4)
				Card_pile.force (jail)
				create saloon.make
				saloon.set_symbol (a_symbol)
				saloon.set_number (5)
				Card_pile.force (saloon)
				from j := 6	until j = 12
				loop
					create beer.make
					beer.set_symbol (a_symbol)
					beer.set_number (j)
					Card_pile.force (beer)
					if j = 8 or j = 9 then
						create mustang.make
						mustang.set_symbol (a_symbol)
						mustang.set_number (j)
						Card_pile.force (mustang)
					end
					if j = 10 then
						create gatling.make
						gatling.set_symbol (a_symbol)
						gatling.set_number (j)
						Card_pile.force (gatling)
					end
					if j = 11 then
						create panic.make
						panic.set_symbol (a_symbol)
						panic.set_number (j)
						Card_pile.force (panic)
					end
					j := j + 1
				end
				from j := 12 until j = 15
				loop
					create bang.make
					bang.set_symbol (a_symbol)
					bang.set_number (j)
					Card_pile.force (bang)
					if j = 12 or j = 14 then
						create panic.make
						panic.set_symbol (a_symbol)
						panic.set_number (j)
						Card_pile.force (panic)
					end
					if j = 13 then
						create catbalou.make
						catbalou.set_symbol (a_symbol)
						catbalou.set_number (j)
						Card_pile.force (catbalou)
					end
					j := j + 1
				end
			end
			i := i + 1
		end
end

feature --Player's Actions

	pop: G4_CARDS
	do
		Result := Card_Pile.first
		Card_Pile.start
		Card_Pile.remove
--	ensure
--		Result = Card_Pile.first -- Raise error(not the same first)
	end

	pick_a_card(a_card_id:INTEGER) : G4_CARDS --Pick a card with an integer (implementation for command line)
	do
		--Implemented for terminal
		if(a_card_id < Card_Pile.count) then
			Card_Pile.go_i_th (a_card_id)
			Result := Card_Pile.item
			Card_Pile.remove
		else
			print("Invalid choice")
		end
	end

feature --Getter

	get_is_empty: BOOLEAN
	do
		Result := Card_Pile.is_empty
	end
end
