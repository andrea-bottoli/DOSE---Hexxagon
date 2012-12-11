note
	description: "Represents Main function, responisible to control the game."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

class
	G4_PLAYER_TURN

create
	make

feature
	PlayersNum : INTEGER --The number of players that participating in the game
	DrawPile: G4_DRAW_PILE
	DiscardPile : G4_DISCARD_PILE
	Players : ARRAY[G4_PLAYER] ----Players of the game
	turn :INTEGER --The current turn
	roles: G4_ROLES --Roles of players
	characters : G4_CHARACTERS ----Characters of players
	winner_id : INTEGER
	card: G4_CARDS

feature

	make
	do  end

	init_Roles(role : G4_ROLES) -- Give roles to each player
	do  end

	init_Deck--(Pile:G4_DRAW_PILE;card : G4_CARDS) --Initialize the deck of the cards
	do end

	set_Players_Number(num : INTEGER)
	do
		PlayersNum := num
		ensure PlayersNum > 4
	end

	shuffle_deck(deck: G4_CARDS) --Shuffle the deck of the cards
	do  end

	deal_cards() --Deal the cards to each player

	local
	i:INTEGER
	j:INTEGER
	do
		from i:=0 until i = PlayersNum
		loop
			from j:=0 until i = 5
			loop
				Players[i].draw(DrawPile);
			end
		end
	end

	isWinner :INTEGER --Check who's the winner
	do
		ensure (winner_id >= 1) and (winner_id <= 7)
	end


end

