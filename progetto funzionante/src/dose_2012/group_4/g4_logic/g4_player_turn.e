note
	description: "Represents Main function, responisible to control the game."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "tsampis"

deferred class
	G4_PLAYER_TURN

feature
	PlayersNum : INTEGER --The number of players that participating in the game
	players : G4_PLAYER ----Players of the game
	turn :INTEGER --The current turn
	roles: G4_ROLES --Roles of players
	characters : G4_CHARACTERS ----Characters of players
	winner_id : INTEGER

feature

	init_Roles(role : G4_ROLES) -- Give roles to each player
	do  end

	init_Deck(item : G4_CARDS) --Initialize the deck of the cards
	do  end

	shuffle_deck(deck: G4_CARDS) --Shuffle the deck of the cards
	do  end

	deal_cards(deck: G4_CARDS) --Deal the cards to each player
	do  end

	isWinner() :INTEGER --Check who's the winner
	do
		ensure (winner_id >= 1) and (winner_id <= 7)
	end

end

