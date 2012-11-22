note
	description: "Summary description for {G3_PLAYER}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_PLAYER

feature

	make
	do

	end

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
		ensure partner=partner_
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


feature

	id : G3_PLAYER_ID

	partner : G3_PLAYER

	cards : LINKED_LIST [G3_CARD]

	hand_score : INTEGER -- hand winning

end
