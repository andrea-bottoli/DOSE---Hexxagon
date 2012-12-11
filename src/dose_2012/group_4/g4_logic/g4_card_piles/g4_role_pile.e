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

feature --Attributes

	NumPlayers: INTEGER --The number of the players
	Role_Pile: LIST[G4_ROLES] --A list with the game's roles that are available

feature --Constructor

	make(num:INTEGER) --Deal roles accordingly to number of players
	require
		num >= 4 and
		num <= 7

	local sheriff: G4_ROLES_SHERIFF; deputy: G4_ROLES_DEPUTY; bandit: G4_ROLES_BANDIT; fugitive: G4_ROLES_FUGITIVE;

	do
		if num = 4 then
			sheriff.make
			Role_Pile.put (sheriff)
			bandit.make
			Role_Pile.put (bandit)
			Role_Pile.put (bandit)
			fugitive.make
			Role_Pile.put (fugitive)
		end
		if num = 5 then
			sheriff.make
			Role_Pile.put (sheriff)
			deputy.make
			Role_pile.put (deputy)
			bandit.make
			Role_Pile.put (bandit)
			Role_Pile.put (bandit)
			fugitive.make
			Role_Pile.put (fugitive)
		end
		if num = 6 then
			sheriff.make
			Role_Pile.put (sheriff)
			deputy.make
			Role_pile.put (deputy)
			bandit.make
			Role_Pile.put (bandit)
			Role_Pile.put (bandit)
			Role_Pile.put (bandit)
			fugitive.make
			Role_Pile.put (fugitive)
		end
		if num = 7 then
			sheriff.make
			Role_Pile.put (sheriff)
			deputy.make
			Role_pile.put (deputy)
			Role_pile.put (deputy)
			bandit.make
			Role_Pile.put (bandit)
			Role_Pile.put (bandit)
			Role_Pile.put (bandit)
			fugitive.make
			Role_Pile.put (fugitive)
		end

		NumPlayers := num
	end

feature --Setter
	set_num_players(in:INTEGER) --Set the number of the Players
	require
		in >= 4 and
		in <= 7
	do
		NumPlayers := in
	ensure
		NumPlayers=in
	end
feature --Rest functions
	player_pick():G4_ROLES --Each Player picks a card
	do

	end
end
