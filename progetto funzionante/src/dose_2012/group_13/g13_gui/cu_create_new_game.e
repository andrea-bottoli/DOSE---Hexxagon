note
	description: "Summary description for {CU_CREATE_NEW_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CREATE_NEW_GAME

inherit
	CU_WINDOWS

create
    make

feature -- Initialization
	make
		-- Generates the window to create the game
		do
		end

feature

	set_name_of_match (name_match: STRING)
		-- Set a name of the match to create a new game
		require
			name_match_not_empty: name_match /= void
		do
		ensure
			name_match_updated: name_match_create.text = name_match
		end

feature {NONE}	-- Implementation/ Constants

	name_match_create: EV_TEXT_FIELD
			-- Will contain name of the match
    create_button: EV_BUTTON
            -- "Create" button.
	cancel_button: EV_BUTTON
			-- "Cancel" button
end
