note
	description: "The main class for the game's Discard pile"
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

class
	G4_DISCARD_PILE
	inherit G4_CARD_PILES

feature --Attributes
	Can_Draw: BOOLEAN --Checks if a player can draw a card from discard pile using special ability

feature --Setters and Getters

	set_can_draw(c:BOOLEAN) --Set Can_Draw value TRUE/FALSE
	require
		c.is_equal(true) or c.is_equal(false)
	do

	ensure
		Can_Draw=c
	end

	get_can_draw():BOOLEAN	--Returns TRUE if a player can draw a card from discard pile using special ability, or FALSE if not
	do

	end

feature --User's Actions

	draw():G4_CARDS --Player draw a card
	do

	end
	reuse():G4_CARDS --Player reuses the card from the top of Discard Pile
	do

	end
end
