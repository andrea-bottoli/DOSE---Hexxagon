note
	description: "The GUI component which will handle the view of the player's bag. The bag contains the insects"
	author: "Christos Petropoulos"

class
	CP_PLAYER_BAG

create
	make

feature -- Initialization

	make
			-- Initializes the component
		do

		end

feature {NONE} -- Attributes

	bag: ARRAY[CP_INSECT]

feature -- Update procedures

	add_insect_in_bag(insect:CP_INSECT)
			-- Adds an insect in the bag
		require
			insect_not_void: insect/=Void
		do

		end

	remove_insect_from_bag(insect:CP_INSECT)
			-- Adds an insect in the bag
		require
			insect_not_void: insect/=Void
		do

		end

feature {NONE} -- Draw Bag procedures

	draw_panel
			-- Draws the panel of the component
		do

		end

	draw_insect_buttons
			-- Draws the button for each insect in the bag
		do

		end

feature {NONE} -- Button Event

	playInsect(insect:CP_INSECT)
			-- Plays the selected insect
		require
			insect_not_void: insect/=Void
		do
			
		end

end
