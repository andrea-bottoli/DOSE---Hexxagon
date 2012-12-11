note
	description: "This class will display a pop-up that contains a list of cards. The player has to chose some of this cards."
	author: "Gabriele Fanchini"
	date: "17.11.2012"
	revision: "1.0"

class
	G5_POP_UP_WITH_SELECTION

create
	make

feature

	make(a_place: STRING; a_list_of_cards: ARRAY[STRING]; min: INTEGER; max: INTEGER)
		--The constructor of the class
		require
			valid_arg: a_list_of_cards /= void
			valid_arg: min>0
			valid_arg: max>0 and max>min
			valid_arg: place /= void
		do
			list_of_cards:= a_list_of_cards
			min_selection:= min
			max_selection:= max
			place:= a_place
		end

feature -- Variables

	list_of_cards: ARRAY[STRING]
		-- The list of cards to be displayed

	min_selection: INTEGER
		-- the minimum number of cards to chose

	max_selection: INTEGER
		-- the maximum number of cards to chose

	place: STRING
		-- from what the player has to select
end
