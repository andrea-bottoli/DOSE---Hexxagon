note
	description: "Summary description for {G10_GUI_PLAYER}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "player class represent the name of a player in the game."

class
	G10_GUI_PLAYER
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
		default_create()
		set_player_name_display("test_name")
		set_img_src("test img src")
		update_background_color()
		set_minimum_height (100)
		set_minimum_width (100)
	end

-- accesor methods.
feature {G10_GUI_PLAYER_INFO}
	get_player_name_display() : STRING -- routine returns the name of this player object.
	do
		result := player_name_display
		ensure
			followers_not_mutated : player_name_display = old player_name_display
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
	set_player_name_display(n : STRING) -- routine sets player_name_display attribute of this object to n.
	require
		name_is_valid : n /= void
	do
		player_name_display := n
		ensure
			valid_mutation : old n = player_name_display
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
		create c.make_with_8_bit_rgb (130, 130, 20)
		set_background_color(c)
	end

--class invariants
invariant
	valid_img_src : img_src /= void
	-- to source ton foto tha einai standar.
	valid_player_name : player_name_display /= void

end
