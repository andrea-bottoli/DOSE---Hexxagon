note
	description: "Summary description for {G10_GUI_FOLLOWER}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "follower class represents the number of followers a player posses in the game"

class
	G10_GUI_FOLLOWER
inherit
	EV_FIXED

create
	make

-- attributes
feature {NONE}
	follower_number_display : INTEGER
	img_src : STRING

-- constructors
feature {ANY}
	make()
	do
		default_create()
		set_follower_number(10)
		set_img_src("test img src")
		update_background_color()
		set_minimum_height (30)
		set_minimum_width (100)
	end

-- accesor methods.
feature {G10_GUI_PLAYER_INFO}
	get_follower_number() : INTEGER -- routine returns the number of the followers.
	do
		result := follower_number_display.to_integer
		ensure
			followers_not_mutated : follower_number_display = old follower_number_display
			follower_valid_number : follower_number_display.to_integer_8 >= 0
	end

	get_img_src() : STRING -- routine returns the img_src attribute of this object
	do
		result := img_src
		ensure
			img_src_valid : img_src /= void
	end

	get_width() : INTEGER -- routine returns the width of this object
	do
		result := width
		ensure
			attr_not_mutated : width = old width
	end

	get_height() : INTEGER -- routine returns the height of this object
	do
		result := height
		ensure
			attr_not_mutated : height = old height
	end

-- mutator methods.
feature {NONE}
	set_follower_number(num : INTEGER) -- routine sets the number of the followers of this object to num.
	require
		followers_number_is_valid : num >= 0
	do
		follower_number_display := num
		ensure
			valid_mutation : old num = follower_number_display
	end

	set_img_src(src : STRING) -- routine sets this object's image source to src
	require
		src_not_void : src /= void
	do
		img_src := src
		ensure
			valid_mutation : img_src /= void
			right_mutation : img_src = old src
	end

	update_background_color_c(c : EV_COLOR) -- routine sets the background color of this object to c
	require
		color_not_void : c /= void
	do
		set_background_color(c)
		ensure
			color_changed_to_c : background_color = c
	end

	update_background_color() -- routine sets the background color of this object to white
	local
		c : EV_COLOR
	do
		create c.make_with_8_bit_rgb (30, 130, 130)
		set_background_color(c)
	end

--class invariants
invariant
	valid_img_src : img_src /= void
	valid_follower_number : follower_number_display >= 0

end
