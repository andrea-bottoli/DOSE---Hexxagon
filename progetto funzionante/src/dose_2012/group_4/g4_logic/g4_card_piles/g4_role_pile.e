note
	description: "The main class for the game's Rolepile"
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

class
	G4_ROLE_PILE
	inherit G4_CARD_PILES
create
	make

feature --Constructor

	make(num:INTEGER) --Deal roles accordingly to number of players
	require
		num >= 2 and
		num <= 7
	do

	end
feature --Attributes
	NumPlayers: INTEGER --The number of the players
	Role_Pile: LIST[G4_ROLES] --A list with the game's roles that are available

feature --Setter
	set_num_players(in:INTEGER) --Set the number of the Players
	require
		in >= 2 and
		in <= 7
	do
	ensure
		NumPlayers=in
	end
feature --Rest functions
	player_pick():G4_ROLES --Each Player picks a card
	do

	end
end
