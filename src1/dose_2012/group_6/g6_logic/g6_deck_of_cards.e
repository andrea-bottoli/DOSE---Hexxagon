note
	description: "This class represents a deck of cards"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_DECK_OF_CARDS

create
	make

feature {ANY} -- Initialization

	make (file_name: STRING)
			-- Create a mixed deck of cards from a file
		local
			input: PLAIN_TEXT_FILE
			l: LIST [STRING]
			path: STRING
			aux: G6_CARD
		do
			create deck.make
			path := "Dose_2012\group_6\g6_logic\"
			path.append (file_name)
			create input.make_open_read (path)
			from
				input.start
				input.read_line
			until
				input.off
			loop
				l := input.last_string.split ('%T')
				create aux.make (l.at (1).to_integer, l.at (2).to_integer, l.at (3))
				deck.extend (aux)
				input.read_line
			end
			random_sort
			jail_card := Void
		end

feature {NONE} -- Internal repreentation

	deck: LINKED_CIRCULAR [G6_CARD]

	jail_card: G6_CARD

feature {NONE} -- Internal operations

	random_sort
			-- Sorts cards randomly
		local
			r: RANDOM
			aux: TIME
		do
			create r.make
			create aux.make_now
			r.set_seed (aux.second)
			from
				deck.start
			until
				deck.exhausted
			loop
				deck.swap (r.item \\ deck.count + 1)
				r.forth
				deck.forth
			end
			deck.start
		end

feature {ANY} -- Basic operations

	next_card: G6_CARD
			-- Returns the next card
		do
			Result := deck.item
			if (deck.item.get_id = 1) then
				jail_card := deck.item
				deck.remove
			else
				deck.forth
			end
		end

	borrow_jail_card
			-- a player uses the jail card, so borrow jail card to the deck
		require
			jail_card /= Void
		do
			deck.put_left (jail_card)
			jail_card := Void
		ensure
			jail_card = Void
		end

feature {ANY} -- show object

	to_string: STRING
			-- Returns a string representation of current object
		local
			pos: CIRCULAR_CURSOR
		do
			pos := deck.cursor
			Result := ""
			from
				deck.start
			until
				deck.exhausted
			loop
				Result.append (deck.item.to_string)
				Result.append ("%N")
				deck.forth
			end
			deck.go_to (pos)
		end

invariant
	deck.count = 17 or deck.count = 16
	deck.count = 17 implies jail_card = Void
	deck.count = 16 implies jail_card /= Void

end
