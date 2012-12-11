note
	description: "Class for Kindom Builder MainBoard."
	author: "Debrecen2"
	date: "2012.11.14."
	revision: "1.0"

deferred class
	G19_MAIN_BOARD
feature
--	add_object_to_position(object: G19_GAMEBOARD_OBJECT, position_x: INTEGER, position_y: INTEGER)
--	deferred
--	end

	set_kingdom_builder_cards(cards: ARRAY[G19_KINGDOM_BUILDER_CARD])
	deferred
	end

--	add_summary_card(updown: INTEGER, position: INTEGER, G19_SUMMARY_CARD)
--	deferred
--	end

	add_user_card(card: G19_CARD)
	deferred
	end

end
