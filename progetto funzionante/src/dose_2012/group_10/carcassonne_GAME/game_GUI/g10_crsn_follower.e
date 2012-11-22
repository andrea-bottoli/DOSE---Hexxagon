note
	description: "Summary description for {G10_CRSN_FOLLOWER}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_FOLLOWER
inherit
	EV_FIXED

create
	make

-- attributes
feature {NONE}
	follower_number_display : STRING
	img_src : STRING
	-- height and width are inherited

-- constructors
feature {ANY}
	make()
	do
	end

-- accesor methods.
feature {G10_CRSN_PLAYER_INFO}
	get_follower_number() : INTEGER -- routine returns the number of the followers.
	do
		ensure
			followers_not_mutated : follower_number_display = old follower_number_display
			follower_valid_number : follower_number_display.to_integer_8 >= 0
	end

	get_img_src() : STRING -- routine returns the img_src attribute of this object
	do
		ensure
			img_src_valid : img_src /= void
	end

-- mutator methods.
feature {NONE}
	set_follower_number(num : INTEGER) -- routine sets the number of the followers of this object to num.
	require
		followers_number_is_valid : num >= 0
	do
		ensure
		valid_mutation : old num = follower_number_display.to_integer_8
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
	valid_follower_number : follower_number_display /= void and follower_number_display.to_integer_8 >= 0

end
