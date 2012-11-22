note
	description: "Summary description for {G10_CRSN_PLAYER}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_PLAYER
inherit
	EV_FIXED

create
	make

-- attributes
feature {NONE}
	player_name_display : STRING
	img_src : STRING
	-- height and width are inherited

-- constructors
feature {ANY}
	make()
	do
	end

-- accesor methods.
feature {G10_CRSN_PLAYER_INFO}
	get_player_name_display() : STRING -- routine returns the name of this player object.
	do
		ensure
			followers_not_mutated : player_name_display = old player_name_display
	end

	get_img_src() : STRING -- routine returns the img_src attribute of this object
	do
		ensure
			img_src_valid : img_src /= void
	end

-- mutator methods.
feature {NONE}
	set_player_name_display(n : STRING) -- routine sets player_name_display attribute of this object to n.
	require
		name_is_valid : n /= void
	do
		ensure
		valid_mutation : old n = player_name_display
	end

	set_img_src(src : STRING) -- routine sets this object's image source to src
	require
		src_not_void : src /= void
	do
		ensure
			valid_mutation : img_src /= void
			right_mutation : img_src = old src
	end

--class invariants
invariant
	valid_img_src : img_src /= void
	valid_player_name : player_name_display /= void

end
