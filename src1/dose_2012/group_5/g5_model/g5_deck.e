note
	description: "Summary description for {G5_DECK}."
	author: "Team: Rio Cuarto 4"
	date: "$17/11/2012$"
	revision: "$0.2$"

class
	G5_DECK [G]

inherit
	LINKED_STACK [G]

create
	make

feature -- Operations

	shuffle()
		-- Shuffles the cards the deck
		require
			(linear_representation /= Void) and (not is_empty)
		local
			rand: RANDOM
			time: TIME
			random_num: INTEGER
			array_aux: ARRAY [G]
			card_aux: G
			i: INTEGER

		do
			-- Transfer stack to array auxiliary
			from
				create array_aux.make_filled (card_aux, 1, count)
				i := 1
			until
				i > count
			loop
				array_aux.put(linear_representation.i_th (i),i)
				i :=  i + 1
			end
			wipe_out

			-- Random function about array auxiliary
			from
				create rand.make
				create time.make_now_utc
				rand.set_seed (time.milli_second)
				i := 1

			until
				i > array_aux.count
			loop
				random_num := (rand.i_th (i) \\ array_aux.count) + 1
				card_aux := array_aux.item (i)
				array_aux.put (array_aux.item(random_num), i)
				array_aux.put (card_aux, random_num)
				i := i + 1
			end

			-- Transfer array auxiliary to stack
			from
				i := 1
			until
				i > array_aux.count
			loop
				put(array_aux.item(i))
				i := i + 1
			end
		ensure
		end
end
