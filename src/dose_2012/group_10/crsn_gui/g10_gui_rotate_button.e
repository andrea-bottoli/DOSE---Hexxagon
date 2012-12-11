note
	description: "Summary description for {G10_GUI_ROTATE_BUTTON}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "$rotate button represents the gui of the rotate button in carcassone game$"

class
	G10_GUI_ROTATE_BUTTON
inherit
	EV_FIXED
	rename
		default_create as make_ev_fixed
	select
		make_ev_fixed
	end
	G10_GAME_CONSTANTS
	undefine
		copy, is_equal
	end

create
	make

--attributes
feature {NONE}
	description_name_display : STRING

-- constructor
feature {ANY} -- routine creates a new reference to a rotate button object.
	make()
	do
		make_ev_fixed
		update_background_pixmap("rotate_button_35_35.png")

		set_minimum_height (35)
		set_minimum_width (35)
	end

-- accesor methods.
feature {G10_GUI_PLAYER_ACTION_PANEL}
	get_background_color() : EV_COLOR-- routine returns the color of this rotate_button object.
	do
		result := current.background_color
		ensure
			color_not_void : current.background_color /= void
	end

	get_name() : STRING -- routine returns the name attribute of this rotate button object
	do
		result := description_name_display
		ensure
			name_not_void : description_name_display /= void
	end

-- mutator methods
	update_background_color_c(c : EV_COLOR) -- routine sets the background color of this object to c
	require
		color_not_void : c /= void
	do
		set_background_color(c)
		ensure
			color_changed_to_c : background_color = c
	end

	update_background_pixmap(src : STRING)
	local
		new_pixmap : EV_PIXMAP
		image_source : KL_PATHNAME
	do
		image_source := game_img_path
		image_source.append_name (src)
		create new_pixmap
		new_pixmap.set_with_named_file (file_system.pathname_to_string(image_source))
		set_background_pixmap(new_pixmap)
	end

	update_background_color() -- routine sets the background color of this object to white
	local
		c : EV_COLOR
	do
		create c.make_with_8_bit_rgb (0, 100, 0)
		set_background_color(c)
	end

	set_description_name(n : STRING) -- routine sets the description name to n
	require
		n_not_void : n /= void
	do
		description_name_display := n
	ensure
		description_name_valid_mutated : description_name_display = old n
	end


--class invariants
invariant
	--name_not_void : description_name_display /= void

end
