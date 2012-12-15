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
	Role_Pile: LINKED_LIST[G4_ROLES] --A list with the game's roles that are available

feature --Constructor

	make(num:INTEGER) --Deal roles accordingly to number of players
	require
		num >= 4 and
		num <= 7

	local sheriff: G4_ROLES_SHERIFF; deputy: G4_ROLES_DEPUTY; bandit: G4_ROLES_BANDIT; fugitive: G4_ROLES_FUGITIVE;

	do
		create Role_Pile.make

		if num = 4 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create bandit.make
			Role_Pile.force (bandit)
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
		end
		if num = 5 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create deputy.make
			Role_pile.force (deputy)
			create bandit.make
			Role_Pile.force (bandit)
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
		end
		if num = 6 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create deputy.make
			Role_pile.force (deputy)
			create bandit.make
			Role_Pile.force (bandit)
			Role_Pile.force (bandit)
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
		end
		if num = 7 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create deputy.make
			Role_pile.force (deputy)
			Role_pile.force (deputy)
			create bandit.make
			Role_Pile.force (bandit)
			Role_Pile.force (bandit)
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
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
	player_pick(a_card_id : INTEGER):G4_ROLES --Each Player picks a card
	do
		--Implemented for terminal
		if(a_card_id < Role_Pile.count) then
			Role_Pile.go_i_th (a_card_id)
			Result := Role_Pile.item
			Role_Pile.remove
		else
			print("Invalid choice")
		end
	end

feature
	display_role_list
	local
		i : INTEGER
	do
		i := 1
		from Role_Pile.start until Role_Pile.item = Role_Pile.last
			loop
				io.new_line
				io.put_string (Role_Pile.item.get_role_name + " ")
				io.put_string (" Code: ")
				print(i)
				i := i+1
				Role_Pile.forth
			end
	end
end
