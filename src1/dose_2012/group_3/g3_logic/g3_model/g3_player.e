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
			create id.make
			create cards.make			-- Creates a empty list of cards.
			create received_cards.make	-- Creates a empty list of received cards.
			is_playing := False			-- Because the list 'cards' is empty.
			hand_score := 0
		end

	make_with_parameters(name_ : STRING; team_number_ : INTEGER; cards_ : LINKED_LIST[G3_CARD])
		require
			valid_arg : (name_ /= Void and cards /= Void and cards.count > 0) and (team_number_ = 1 or team_number_ = 2)
		do
			create id.make
			name := name_
			team_number := team_number_
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
			id:= id_
		ensure
			id = id_
		end

	set_partner(partner_:G3_PLAYER)
		-- Set player's partner
		require
			partner_ /= Void
		do
			partner := partner_
		ensure
			partner=partner_
		end

	set_cards(cards_:LINKED_LIST [G3_CARD])
			-- Set cards for a player
		require
			cards_ /= Void
		do
			cards := cards_
		ensure
			cards = cards_
		end

	set_hand_score(hand_score_:INTEGER)
			-- Set hand socore for a player
		do
			hand_score := hand_score_
		ensure
			hand_score=hand_score_
		end

feature {G3_CONTROLLER, G3_MODEL}

	set_name(name_ : STRING)
		require
			valid_arg: name_ /= Void
		do
			name := name_
		ensure
			set_ok: name.is_equal (name_)
		end

	set_is_playing(flag : BOOLEAN)
		do
			is_playing := flag
		end

	clear_hand_score
		do
			hand_score := 0
		end

	set_team_number (team_number_ : INTEGER)
		require
			valid_arg: team_number_ = 1 or team_number = 2
		do
			team_number := team_number_
		ensure
			team_number_ = 1 or team_number = 2
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

	count_point_in_hand : INTEGER
			-- Conts the points of the cards in the player's hand.
		local
			sum: INTEGER
		do
			from
				cards.start
			until
				cards.off
			loop
				sum := sum + cards.item.point
				cards.forth
			end
		end

	receive_card_from_player(card : G3_CARD)
			-- Reiceves a card from a player at the beginning the rond. This card is added to the received_cards list.
			-- The cards are not given to the cards list until the feature update_received_cards is called.
		require
			valid_arg: card /= Void
		do
			received_cards.extend (card)
		end

	update_received_cards
			-- Adds the received cards to the list of cards of the player.
		do
			from
				received_cards.start
			until
				received_cards.off
			loop
				cards.extend (received_cards.item)
				received_cards.forth
			end
			received_cards.wipe_out
		end

	count_received_cards : INTEGER
			-- Return the number of elements in the received_card list.
		do
			Result := received_cards.count
		end

	all_cards_in_hand: BOOLEAN
			--Before first move
		do
			Result:= cards.count=14
		end


feature

	name : STRING

	id : G3_PLAYER_ID

	team_number : INTEGER
		-- The number of the team which the player belongs.

	partner : G3_PLAYER

	cards : LINKED_LIST [G3_CARD]

	is_playing : BOOLEAN -- Is the player playing? = Does he have carts?

	hand_score : INTEGER -- hand winning

feature {NONE}

	received_cards : LINKED_LIST [G3_CARD] -- Cards that are received from the other players at the beginning of the round.

invariant
	(cards.count > 0 and is_playing) or (cards.count = 0 and not is_playing)
end
