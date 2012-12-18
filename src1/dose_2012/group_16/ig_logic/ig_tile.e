note
	description: "Summary description for {IG_TILE}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_TILE

create
	make_with_hexes

feature -- Initialization

	make_with_hexes (a_first_hex, a_second_hex: IG_HEX)
		require
			hex_not_void: a_first_hex /= Void and a_second_hex /= Void
		do
			first_hex := a_first_hex
			second_hex := a_second_hex
		ensure
			first_hex_set: first_hex = a_first_hex
			second_hex_set: second_hex = a_second_hex
		end

feature -- Access

	first_hex: IG_HEX
		-- The color of the first face.
	second_hex: IG_HEX
		--  The color of the second face.

end
