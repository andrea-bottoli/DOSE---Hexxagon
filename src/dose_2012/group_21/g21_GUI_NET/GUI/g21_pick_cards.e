note
	description: "Summary description for {G21_PICK_CARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_PICK_CARDS
inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G21_CARD_MESSAGE
	undefine default_create, copy end

feature {NONE}
	deck : ARRAY[G21_XLABEL]
	listener : G21_CARD_MESSAGE

feature
	initialize
	local
		i : INTEGER
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent close_window)
		set_title("Triple Triad")
		set_size(1024, 768)
		disable_user_resize

		extend (l_ev_scrollable_area_1)
		l_ev_scrollable_area_1.extend (l_ev_table_1)

		l_ev_scrollable_area_1.set_item_width (80)
		l_ev_scrollable_area_1.set_item_height (7)
		l_ev_table_1.resize (15, 7)
	end

	addListener(listener_a : G21_CARD_MESSAGE)
	require
		listener /= Void
	do
		listener := listener
	ensure
		listener = listener_a
	end

	deckList(deck_a : ARRAY[G21_CARD])
	require else
		deck_a /= Void
	do
		from i:=1
		until i = deck_a.count
		loop
			deck.force(create {G21_XLABEL}.XLabel(deck_a(i)))
		end

		from i := 1
		until i = deck_a.count
		loop

			l_ev_table_1.put_at_position (deck.item (i), (i\\7)+1, (i//7)+1, 1, 1)
			pick.forth
		end
	end

feature {NONE}
	close_window
	do
		(create {EV_ENVIRONMENT}).application.destroy
	end

	sendCardPick(card_a : G21_CARD)
	do
		listener.sendCardClick(card_a)
	end

	sendCardSelect(card : G21_CARD)
	do

	end

	sendCardPlay(card : G21_CARD; row : INTEGER ; col : INTEGER)
	do

	end

end
