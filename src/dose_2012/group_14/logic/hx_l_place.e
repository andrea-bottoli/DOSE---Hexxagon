note
	description: "Summary description for {HX_L_PLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_L_PLACE

inherit HX_L_IPLACE

create
	make

feature -- initializer

	make(a_exists: BOOLEAN; a_is_empty: BOOLEAN; a_player: HX_L_IPLAYER)
		require
			player_set_if_exists_and_not_empty: (a_exists AND NOT a_is_empty) implies a_player /= void
		do
			place_player := a_player
			place_is_empty := a_is_empty
			exists := a_exists
		end

feature -- Internal stuff

	place_player: HX_L_IPLAYER
	place_is_empty: BOOLEAN

feature

	is_empty: BOOLEAN
		-- Is this place empty?
		do
			Result := place_is_empty
		end

	set_is_empty(a_empty: BOOLEAN)
		-- Is this place empty?
		do
			place_is_empty := a_empty
			if a_empty then
				place_player := Void
			end
		end

	player: HX_L_IPLAYER
		-- Player, to who belongs a stone placed in this place.
		do
			Result := place_player
		end

	set_player (a_player: HX_L_IPLAYER)
		-- Player, to who belongs a stone placed in this place.
		do
			place_player := a_player
		end
end
