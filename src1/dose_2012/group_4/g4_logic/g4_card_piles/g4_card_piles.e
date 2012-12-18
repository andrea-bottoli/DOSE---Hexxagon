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
		from i:=1 until i = count + 1		--Copying Pile to NewPile but Shuffled.
		loop
			imod:=i\\2
			NewPile.start
			if	imod=0	then
				NewPile.start
				NewPile.put_right (Pile.item)
			else
				if i=1 then
					NewPile.force (Pile.item)
				end
				NewPile.start
				NewPile.put_left (Pile.item)
			end
			Pile.forth
			i:=i+1
		end
		Result := NewPile
	end

feature
	get_pile : LINKED_LIST[G4_CARDS]
	do
		Result := Card_Pile
	end

feature

	display_list(Pile : LINKED_LIST [G4_CARDS])
	local
		i : INTEGER
	do
		from Pile.start until Pile.item = Pile.last
			loop
				io.new_line
				io.put_string (Pile.item.getname + " ")
				print(Pile.item.get_number)
				io.put_string (" " + Pile.item.get_symbol + " ")
				io.put_string (" Code: ")
				print(i)
				io.new_line
				i := i+1
				Pile.forth
			end
	end
end
