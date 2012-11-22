note
	description: "Summary description for {G10_CRSN_ROTATE_BUTTON}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_ROTATE_BUTTON
inherit
	EV_BUTTON

create
	make

--attributes
feature {NONE}
	color : EV_COLORIZABLE
	description_name_display : STRING
	-- height : INTEGER (inherited ftom EV_BUTTON)
	-- width  : INTEGER (inherited ftom EV_BUTTON)

-- constructor
feature {ANY} -- routine creates a new reference to a rotate button object.
	make()
	do

	end

-- accesor methods.
feature {G10_CRSN_PLAYER_ACTION_PANEL}
	get_background_color() : EV_COLORIZABLE-- routine returns the color of this rotate_button object.
	do
		ensure
			color_not_void : color /= void
	end

	get_name() : STRING -- routine returns the name attribute of this rotate button object
	do
		ensure
			name_not_void : description_name_display /= void
	end
-- mutator methods 	
-- set_background_color(c : EV_COLORIZABLE) method contained in super class

--class invariants
invariant
	color_not_void : color /= void
	name_not_void : description_name_display /= void

end
