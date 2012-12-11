note
	description: "The main class for the game's piles "
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

deferred class G4_CARD_PILES

feature --Attributes
	Card_Pile: LINKED_LIST [G4_CARDS] --A simple linked list that contains all different pile of cards

feature --Function
	shuffle(Pile: LINKED_LIST[G4_CARDS]):LINKED_LIST[G4_CARDS] --suffles the cards on the pile
	local
		NewPile:LINKED_LIST[G4_CARDS]
		i:INTEGER
		count:INTEGER
		imod:INTEGER
	do
		create NewPile.make
		count:=Pile.count
		from i:=0 until i=count		--Copying Pile to NewPile but Shuffled.
		loop
			imod:=i\\2
			NewPile.start
			if	imod=0	then
				if i=0 then
					NewPile.force (Pile.item)
				else
					NewPile.start
					NewPile.put_right (Pile.item)
				end
			else
				NewPile.start
				NewPile.put_left (Pile.item)
			end
			Pile.forth
			i:=i+1
		end
		Result := NewPile
	end

feature

	display_list(Pile : LINKED_LIST [G4_CARDS])
	do

		from Pile.start until Pile.item = Pile.last
			loop
				io.put_string (Pile.item.get_symbol)
				Pile.forth
			end
	end
end
