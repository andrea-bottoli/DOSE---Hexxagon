note
	description: "Summary description for {G21_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_CARD
create
	make

feature

	right:INTEGER_32
	left:INTEGER_32
	top:INTEGER_32
	bottom:INTEGER_32

	element:CHARACTER_8 -- should be equal ' ' if the card is not elemental
	-- 'f' for fire, 'i' for ice, 't' for thunder, 'e' for earth, 'w' for water,'n' for wind, 'p' for poison, 'h' for holy
	cardName:STRING

	make
	do

	ensure
		rightHasValue:right /= void
		leftHasValue:left /= void
		topHasValue:top /= void
		bottomHasValue:bottom /= void

		elementHasValue:element /= void
		cardNameHasValue:cardName /= void
	end



end
