note
	description: "Summary description for {RI_BUTTON}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_BUTTON

	inherit
		EV_BUTTON

	feature
		flag	: BOOLEAN
		pressed: EV_PIXMAP
		unpressed: EV_PIXMAP

		set_pix(unp,pr:EV_PIXMAP)
		do
			flag := true
			unpressed := unp
			pressed := pr
		end

		get_unpressed : EV_PIXMAP
		do
			Result := unpressed
		end

		get_pressed   : EV_PIXMAP
		do

			Result := pressed
		end

		set_flag(a_flag: BOOLEAN)
		do
			flag := a_flag
		end

		get_flag: BOOLEAN
		do
			Result := flag
		end
end
