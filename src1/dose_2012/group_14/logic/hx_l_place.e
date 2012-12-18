note
	description: "Summary description for {HX_L_PLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_PLACE

inherit HX_L_IPLACE

create
	make_non_existent,
	make_empty,
	make_owned

feature -- initializer

	make_non_existent()
		do
			exists := False
			is_empty := False
			player_id := 0
		ensure
			not_exists: not exists
		end

	make_empty()
		do
			exists := True
			is_empty := True
			player_id := 0
		ensure
			exists: exists
			empty: is_empty
		end

	make_owned(a_player_id: INTEGER)
		require
			valid_id: a_player_id = 1 or a_player_id = 2
		do
			exists := True
			is_empty := False
			player_id := a_player_id
		ensure
			exists: exists
			empty: not is_empty
			player_set: player_id = a_player_id
		end

feature

	exists: BOOLEAN
		-- Does this place exists on the board?

	is_empty: BOOLEAN
		-- Is this place empty?

	player_id: INTEGER
		-- Player, to who belongs a stone placed in this place.

end
