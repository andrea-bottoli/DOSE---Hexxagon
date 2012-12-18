note
	description: "The main class for the game's Discard pile"
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

class
	G4_DISCARD_PILE
	inherit G4_CARD_PILES

create
	make

feature
	make
	do
		create Card_Pile.make
	end
feature --Attributes
	Can_Draw: BOOLEAN --Checks if a player can draw a card from discard pile using special ability

feature --Setters and Getters

	set_can_draw(c:BOOLEAN) --Set Can_Draw value TRUE/FALSE
	require
		c.is_equal(true) or c.is_equal(false)
	do
		Can_Draw := c
	ensure
		Can_Draw=c
	end

	get_can_draw():BOOLEAN	--Returns TRUE if a player can draw a card from discard pile using special ability, or FALSE if not
	do
		Result:=Can_Draw
	end

feature --User's Actions

	put(card: G4_CARDS)--Player places a card on Discard Pile
	do
		Card_Pile.force (card) -- Put to the end
	end
	draw():G4_CARDS	--Player reuses the card from the top of Discard Pile
	do
		if Can_Draw=TRUE then	--Player can draw a card
			Result := Card_Pile.first
			Card_Pile.start
			Card_Pile.remove
		else					--Player cant draw a card
			--Result := NULL	Here we shouldn't return something to the user and do nothing
		end

	end
	reuse():LINKED_LIST[G4_CARDS] --Discard copies it's LIST to DrawPile(shuffled), when DrawPile is empty
	local
		ReturnPile:LINKED_LIST[G4_CARDS]
		count:INTEGER
		i:INTEGER
	do
		create ReturnPile.make
		count:=Card_Pile.count
		from i:=0 until i=count		--Copying Card_Pile to Return_Pile
		loop
			ReturnPile.force (Card_Pile.item)
			Card_Pile.forth
			i:=i+1
		end
		Card_Pile.start
		ReturnPile.start
		from i:=0 until i=count		--Empty Card_Pile
		loop
			Card_Pile.remove
			i:=i+1
		end
		Result:=ReturnPile
	end
end
