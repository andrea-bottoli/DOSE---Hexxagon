note
	description: "Summary description for {CP_PLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_PLACE

inherit CP_IFPLACE

create
	make

feature -- initializer

	make(eexists: BOOLEAN; iis_empty: BOOLEAN; pplayer: CP_IFPLAYER)
		require
			player_set_if_exists_and_not_empty: (eexists AND NOT iis_empty) implies pplayer /= void
		do
			place_player := pplayer
			place_is_empty := iis_empty
			exists := eexists
		end

feature -- Internal stuff

	place_player: CP_IFPLAYER
	place_is_empty: BOOLEAN

feature

	is_empty: BOOLEAN
		-- Is this place empty?
		do
			Result := place_is_empty
		end

	set_is_empty(eempty: BOOLEAN)
		-- Is this place empty?
		do
			place_is_empty := eempty
		end

	player: CP_IFPLAYER
		-- Player, to who belongs a stone placed in this place.
		do
			Result := place_player
		end

	set_player (pplayer: CP_IFPLAYER)
		-- Player, to who belongs a stone placed in this place.
		do
			place_player := pplayer
		end
end
