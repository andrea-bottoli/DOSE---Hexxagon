note
	description: "Summary description for {G21_XLABEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_XLABEL
inherit
	EV_PIXMAP --Class from EiffelVision

create
	XLabel

feature
	listener : G21_CARD_MESSAGE

feature

	XLabel(card_a : G21_CARD)
	require
		card_a /= Void
	do
		card := card_a.getcardname
		set_with_named_file (rpath("options.png"))
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
		UID > 0
	do

	ensure
		Result /= Void
	end

feature

	OnClickSelect()
	do
		listener.sendCard(card)
	end

	OnClickPlay()
	do
		listener.sendCard(card)
	end

	OnClickPick()
	do
		listener.sendCard(card)
	end
end
