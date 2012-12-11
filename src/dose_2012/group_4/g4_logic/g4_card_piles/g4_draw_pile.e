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
		from i := 1 until i = 4
		loop
			if i = 1 then a_symbol := "Diamonds"
				from j := 2 until j = 14
				loop
					bang.make
					bang.set_symbol (a_symbol)
					bang.set_number (j)
					Card_Pile.put (bang)
					if j = 8 then
						panic.make
						panic.set_symbol (a_symbol)
						panic.set_number (j)
						Card_Pile.put (panic)
					end
					if j >= 9 and j <= 11 then
						catbalou.make
						catbalou.set_symbol (a_symbol)
						catbalou.set_number (j)
						Card_Pile.put (catbalou)
					end
					if j = 12 then
						duell.make
						duell.set_symbol (a_symbol)
						duell.set_number (j)
						Card_Pile.put (duell)
					end
					if j = 13 or j = 14 then
						indians.make
						indians.set_symbol (a_symbol)
						indians.set_number (j)
						Card_Pile.put (indians)
					end
				end
			end
			if i = 2 then a_symbol := "Clubs"
				from j := 2	until j = 9
				loop
					bang.make
					bang.set_symbol (a_symbol)
					bang.set_number (j)
					Card_pile.put (bang)
					if j = 8 then
						duell.make
						duell.set_symbol (a_symbol)
						duell.set_number (j)
						Card_pile.put (duell)
					end
					if j = 9 then
						generalstore.make
						generalstore.set_symbol (a_symbol)
						generalstore.set_number (j)
						Card_pile.put (generalstore)
					end
				end
				from j := 10 until j = 14
				loop
					miss.make
					miss.set_symbol (a_symbol)
					miss.set_number (j)
					Card_pile.put (miss)
					if j = 11 or j = 12 then
						schofield.make
						schofield.set_symbol (a_symbol)
						schofield.set_number (j)
						Card_pile.put (schofield)
					end
				end
				volcanic.make
				volcanic.set_symbol (a_symbol)
				volcanic.set_number (10)
				Card_pile.put (volcanic)
				remington.make
				remington.set_symbol (a_symbol)
				remington.set_number (13)
				Card_pile.put (remington)
				carbine.make
				carbine.set_symbol (a_symbol)
				carbine.set_number (14)
				Card_pile.put (carbine)
			end
		end
		if i = 3 then a_symbol := "Spades"
			from j := 2	until j = 8
			loop
				miss.make
				miss.set_symbol (a_symbol)
				miss.set_number (j)
				Card_pile.put (miss)
			end
			winchester.make
			winchester.set_symbol (a_symbol)
			winchester.set_number (j)
			Card_pile.put (winchester)
			stagecoach.make
			stagecoach.set_symbol (a_symbol)
			stagecoach.set_number (9)
			Card_pile.put (stagecoach)
			Card_pile.put (stagecoach)
			volcanic.make
			volcanic.set_symbol (a_symbol)
			volcanic.set_number (10)
			Card_pile.put (volcanic)
			jail.make
			jail.set_symbol (a_symbol)
			jail.set_number (10)
			Card_pile.put (jail)
			jail.set_number (11)
			Card_pile.put (jail)
			duell.make
			duell.set_symbol (a_symbol)
			duell.set_number (11)
			Card_pile.put (duell)
			generalstore.make
			generalstore.set_symbol (a_symbol)
			generalstore.set_number (12)
			Card_pile.put (generalstore)
			barrel.make
			barrel.set_symbol (a_symbol)
			barrel.set_number (12)
			Card_pile.put (barrel)
			barrel.set_number (13)
			Card_pile.put (barrel)
			schofield.make
			schofield.set_symbol (a_symbol)
			schofield.set_number (13)
			Card_pile.put (schofield)
			bang.make
			bang.set_symbol (a_symbol)
			bang.set_number (14)
			Card_pile.put (bang)
			scope.make
			scope.set_symbol (a_symbol)
			scope.set_number (14)
			Card_pile.put (scope)
		end
		if i = 4 then a_symbol := "Hearts"
			dynamite.make
			dynamite.set_symbol (a_symbol)
			dynamite.set_number (2)
			Card_pile.put (dynamite)
			welsfar.make
			welsfar.set_symbol (a_symbol)
			welsfar.set_number (3)
			Card_pile.put (welsfar)
			jail.make
			jail.set_symbol (a_symbol)
			jail.set_number (4)
			Card_pile.put (jail)
			saloon.make
			saloon.set_symbol (a_symbol)
			saloon.set_number (5)
			Card_pile.put (saloon)
			from j := 6	until j = 11
			loop
				beer.make
				beer.set_symbol (a_symbol)
				beer.set_number (j)
				Card_pile.put (beer)
				if j = 8 or j = 9 then
					mustang.make
					mustang.set_symbol (a_symbol)
					mustang.set_number (j)
					Card_pile.put (mustang)
				end
				if j = 10 then
					gatling.make
					gatling.set_symbol (a_symbol)
					gatling.set_number (j)
					Card_pile.put (gatling)
				end
				if j = 11 then
					panic.make
					panic.set_symbol (a_symbol)
					panic.set_number (j)
					Card_pile.put (panic)
				end
			end
			from j := 12 until j = 14
			loop
				bang.make
				bang.set_symbol (a_symbol)
				bang.set_number (j)
				Card_pile.put (bang)
				if j = 12 or j = 14 then
					panic.make
					panic.set_symbol (a_symbol)
					panic.set_number (j)
					Card_pile.put (panic)
				end
				if j = 13 then
					catbalou.make
					catbalou.set_symbol (a_symbol)
					catbalou.set_number (j)
					Card_pile.put (catbalou)
				end
			end

		end
	end

feature --Player's Actions

	pop(): G4_CARDS
	do
		Result := Card_Pile.first
		Card_Pile.start
		Card_Pile.remove
	ensure
		Result.is_equal(Card_Pile.first)
	end

feature --Getter

	get_is_empty(): BOOLEAN
	do
		Result := Card_Pile.is_empty
	end
end
