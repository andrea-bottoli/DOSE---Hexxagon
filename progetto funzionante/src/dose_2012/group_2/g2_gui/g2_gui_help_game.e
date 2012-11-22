note
	description: "Summary description for {G2_GUI_HELP_GAME}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_HELP_GAME

inherit

	EV_TITLED_WINDOW
		redefine
			initialize,
			is_in_default_state
		end

	--	INTERFACE_NAMES
	--		export
	--			{NONE} all
	--		undefine
	--			default_create, copy
	--		end

create
	default_create

feature {NONE} -- Initialization

	initialize
			-- Build the interface for this window.
		do
			Precursor {EV_TITLED_WINDOW}
		end

	is_in_default_state: BOOLEAN
			-- Is the window in its default state
			-- (as stated in `initialize')
		do
		end

feature

	re_paint
			-- re-paint background image with right rule.
		require
			rule_not_void: internal_image /= void
		do
		end

feature -- events buttons

	back
			--back to the main window.
		do
		end

	rule_basic
			--event button : show rule basic.
		do
		end

	rule_open
			--event button : show rule open.
		do
		end

	rule_same
			--event button : show rule same.
		do
		end

	rule_same_wall
			--event button : show rule same wall.
		do
		end

	rule_plus
			--event button : show rule plus.
		do
		end

	rule_combo
			--event button : show rule combo.
		do
		end

	rule_elemental
			--event button : show rule elemental.
		do
		end

feature -- optative set image the rule

	load_image_rule_basic
			-- load image rule basic.
		do
		end

	load_image_rule_open
			-- load image rule open.
		do
		end

	load_image_rule_same
			-- load image rule same.
		do
		end

	load_image_rule_same_wall
			-- load image rule same_wall.
		do
		end

	load_image_rule_plus
			-- load image rule plus.
		do
		end

	load_image_rule_combo
			-- load image rule combo.
		do
		end

	load_image_rule_elemental
			-- load image rule elemental.
		do
		end

feature --attribute

	internal_image: EV_PIXMAP

end
