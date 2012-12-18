note
	description: "The GUI component which will handle the view of the player's bag. The bag contains the insects"
	author: "Christos Petropoulos"

class
	CP_PLAYER_BAG

inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make

feature -- Initialization

	make(co:STRING;c:CP_GAME_VIEW)
			-- Initializes the component
		local
			beetle:CP_BEETLES
			spider:CP_SPIDER
			gass:CP_GASSHOPPER
			ant:CP_SOLDIER_ANTS
			bee:CP_QUEEN_BEE
		do
			default_create
			caller := c
			-- Creates the insects
			create beetle
			create spider
			create gass
			create ant
			create bee
			create color.make_from_string (co)
			add_insect_in_bag (beetle)
			add_insect_in_bag (spider)
			add_insect_in_bag (gass)
			add_insect_in_bag (ant)
			add_insect_in_bag (bee)

		end

feature {NONE} -- Attributes

	bag: ARRAY[CP_INSECT]

feature -- Update procedures

	add_insect_in_bag(insect:CP_INSECT)
			-- Adds an insect in the bag
		require
			insect_not_void: insect/=Void
		local
			new_btn:CP_BAG_BUTTON
		do
				create new_btn.make_bag_button (insect, color, current)
				current.extend_with_position_and_size (new_btn, 0, (current.count)*153, 153, 132)
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

feature -- Attributes

	caller:CP_GAME_VIEW
	color:STRING
end
