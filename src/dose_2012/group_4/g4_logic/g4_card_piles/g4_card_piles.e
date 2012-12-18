note
	description: "The main class for the game's piles "
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

deferred class G4_CARD_PILES

feature --Attributes
	Card_Pile: LINKED_LIST [G4_CARDS] --A simple linked list that contains all different pile of cards

feature --Function

	shuffle -- Fisher-Yates algorithm
	local
		l_time: TIME; l_seed: INTEGER; math: DOUBLE_MATH; rnd: RANDOM;
		i: INTEGER; k: INTEGER; j: REAL_64; tmp1: G4_CARDS; tmp2: G4_CARDS
	do
		create l_time.make_now
		l_seed := l_time.hour
		l_seed := l_seed*60 + l_time.minute
		l_seed := l_seed*60 + l_time.second
		l_seed := l_seed*1000 + l_time.milli_second
		create rnd.set_seed (l_seed)
		create math
		Card_Pile.start
		rnd.start
		from i := 1 until i = Card_Pile.count+1
		loop
			j := math.floor (rnd.double_item * (1 + i))
			from k := 1 until k >= j
			loop
				k := k + 1
			end
			if (k /= i) then
				tmp1:=Card_Pile.at(i)
				tmp2:=Card_Pile.at(k)
				Card_Pile.go_i_th(i)
				Card_Pile.remove
				Card_Pile.force (tmp1)
				Card_Pile.go_i_th(k)
				Card_Pile.remove
				Card_Pile.force (tmp2)

			end
			rnd.forth
			i := i + 1
		end
	end

feature
	get_pile : LINKED_LIST[G4_CARDS]
	do
		Result := Card_Pile
	end

feature

	display_list
	local
		i : INTEGER
	do
		i:=1
		from Card_Pile.start until Card_Pile.after = true
		loop
			io.new_line
			io.put_string (Card_Pile.item.getname + " ")
			print(Card_Pile.item.get_number)
			io.put_string (" " + Card_Pile.item.get_symbol + " ")
			io.put_string (" Code: ")
			print(i)
			io.new_line
			i := i+1
			Card_Pile.forth
		end
	end
end
