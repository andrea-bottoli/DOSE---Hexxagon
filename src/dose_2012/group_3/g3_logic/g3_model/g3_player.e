note
	description: "Summary description for {G3_PLAYER}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_PLAYER

create
	make, make_with_parameters

feature {NONE}

	make
		do
			create cards.make			-- Creates a empty list of cards.
			create received_cards.make	-- Creates a empty list of received cards.
			is_playing := False			-- Because the list 'cards' is empty.
			hand_score := 0
		end

	make_with_parameters(name_ : STRING; cards_ : LINKED_LIST[G3_CARD])
		require
			valid_arg : name_ /= Void and cards /= Void and cards.count > 0
		do
			name := name_
			cards := cards_
			create received_cards.make
			is_playing := True
			hand_score := 0
		end

feature

	set_id(id_:G3_PLAYER_ID)
			-- Set id of player
		require
			id_ /= Void
		do
		ensure
			id=id_
		end

	set_partner(partner_:G3_PLAYER)
		-- Set player's partner
		require
			partner_ /= Void
		do
		ensure
			partner=partner_
		end

	set_cards(cards_:LINKED_LIST [G3_CARD])
			-- Set cards for a player
		require
			cards_ /= Void
		do
		ensure
			cards = cards_
		end

	set_hand_score(hand_score_:INTEGER)
			-- Set hand socore for a player
		require

		do
		ensure
			hand_score=hand_score_
		end

feature {G3_CONTROLLER, G3_MODEL}

	set_name(name_ : STRING)
		require
			valid_arg: name /= Void
		do
			name := name_
		ensure
			set_ok: name.is_equal (name_)
		end

	add_cards (cards_to_add : LINKED_LIST [G3_CARD])
			--Add cards to player's list of cards
		do
			from
				cards_to_add.start
			until
				cards_to_add.off
			loop
				cards.sequence_put (cards_to_add.item)
				cards_to_add.forth
			end
		end

	delete_cards (cards_to_delete : LINKED_LIST [G3_CARD])
				-- Remove cards to player's list of cards
		require

		do
			from
				cards_to_delete.start
			until
				cards_to_delete.off
			loop
				delete_card(cards_to_delete.item)
				cards_to_delete.forth
			end
			if cards.is_empty then
				is_playing:=false
			end

		end

	delete_card (card_to_delete:G3_CARD)
		do
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.is_equal (card_to_delete) then
					cards.remove
				end
				cards.forth
			end
			if cards.is_empty then
				is_playing:=false
			end

		end

	has_card (card : G3_CARD) : BOOLEAN
		require
			card/=Void
		do
			Result:=False
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.is_equal (card) then
					Result:=TRUE
				end
				cards.forth
			end
		end


feature

	name : STRING

	id : G3_PLAYER_ID

	partner : G3_PLAYER

	cards : LINKED_LIST [G3_CARD]

	received_cards : LINKED_LIST [G3_CARD] -- Cards that are received from the other players at the beginning of the round.

	is_playing : BOOLEAN -- Is the player playing? = Does he have carts?

	hand_score : INTEGER -- hand winning

invariant
	(cards.count > 0 and is_playing) or (cards.count = 0 and not is_playing)
end
