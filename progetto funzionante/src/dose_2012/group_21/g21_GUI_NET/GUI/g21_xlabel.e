note
	description: "Summary description for {G21_XLABEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_XLABEL
inherit
	EV_DRAWING_AREA --Class from EiffelVision

create
	XLabel

feature

	XLabel(card_a : g21_card)
	require
		card_a /= Void
	do

	ensure
		right_text /= Void
		left_text /= Void
		top_text /= Void
		bottom_text /= Void
		card /= Void
	end

feature {G21_XLABEL}
	card: g21_card
	right_text:EV_TEXT
	left_text:EV_TEXT
	top_text:EV_TEXT
	bottom_text:EV_TEXT

	loadCard(UID : INTEGER) : EV_DRAWING_AREA
	require
		UID /= Void
	do

	ensure
		Result /= Void
	end

end
