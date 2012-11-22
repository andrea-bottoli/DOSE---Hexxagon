note
	description: "Summary description for {CU_JOIN_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_JOIN_AN_EXISTS_GAME

inherit
	CU_WINDOWS

create
    make

feature	-- Implementation
	make
		-- Generates the window to join  an existing game
		do
		end

feature

	set_name_of_match (name_match: STRING)
		-- Set a name of the match to join an exists game
		require
			name_match_not_empty: name_match /= void
		do
		ensure
			name_match_updated: name_match_join.text = name_match
		end

	set_ip_address (ip_address: STRING)
		-- Set a ip address to join an exists game
		require
			ip_address_not_empty: ip_address /= void
		do
		ensure
			ip_address_updated: ip_address_match.text = ip_address
		end

feature	-- Implementation/ Constants

	name_match_join: EV_TEXT_FIELD
			-- Will contain name of the match
	ip_address_match: EV_TEXT_FIELD
			-- Will contain the ip address of the match
    join_button: EV_BUTTON
            -- "Join" button.
	cancel_button: EV_BUTTON
			-- "Cancel" button
end
