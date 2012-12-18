note
	description: "The main class for the game's Rolepile"
	author: "Team Crete12 of Group4"
	date:"13/11/2012"
	revision: "kutsukos"

class
	G4_ROLE_PILE
	inherit G4_CARD_PILES
		redefine shuffle end
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
		Role_Pile.start
		if num = 4 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create bandit.make
			Role_Pile.force (bandit)
			create bandit.make
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
		elseif num = 5 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create deputy.make
			Role_pile.force (deputy)
			create bandit.make
			Role_Pile.force (bandit)
			create bandit.make
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
		elseif num = 6 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create deputy.make
			Role_pile.force (deputy)
			create bandit.make
			Role_Pile.force (bandit)
			create bandit.make
			Role_Pile.force (bandit)
			create bandit.make
			Role_Pile.force (bandit)
			create fugitive.make
			Role_Pile.force (fugitive)
		elseif num = 7 then
			create sheriff.make
			Role_Pile.force (sheriff)
			create deputy.make
			Role_pile.force (deputy)
			create deputy.make
			Role_pile.force (deputy)
			create bandit.make
			Role_Pile.force (bandit)
			create bandit.make
			Role_Pile.force (bandit)
			create bandit.make
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
		if(a_card_id <= Role_Pile.count) then
			Role_Pile.go_i_th (a_card_id)
			Result := Role_Pile.item
			Role_Pile.remove
		else
			print("Invalid choice")
		end
	end

feature

	shuffle
	local
		l_time: TIME; l_seed: INTEGER; math: DOUBLE_MATH; rnd: RANDOM;
		i: INTEGER; k: INTEGER; j: REAL_64; tmp1: G4_ROLES; tmp2: G4_ROLES
	do
		create l_time.make_now
		l_seed := l_time.hour
		l_seed := l_seed*60 + l_time.minute
		l_seed := l_seed*60 + l_time.second
		l_seed := l_seed*1000 + l_time.milli_second
		create rnd.set_seed (l_seed)
		create math
		Role_Pile.start
		rnd.start
		from i := 1 until i = Role_Pile.count+1
		loop
			j := math.floor (rnd.double_item * (1 + i))
			from k := 1 until k >= j
			loop
				k := k + 1
			end
			if (k /= i) then
				tmp1:=Role_Pile.at(i)
				tmp2:=Role_Pile.at(k)
				Role_Pile.go_i_th(i)
				Role_Pile.remove
				Role_Pile.force (tmp1)
				Role_Pile.go_i_th(k)
				Role_Pile.remove
				Role_Pile.force (tmp2)

			end
			rnd.forth
			i := i + 1
		end
	end

	display_role_list
	local
		i : INTEGER
	do
		i := 1
		from Role_Pile.start until Role_Pile.after = true
			loop
				io.new_line
				print(Role_Pile.i_th(i).get_role_name)
				io.put_string (" Code: ")
				print(i)
				i := i+1
				Role_Pile.forth
			end
	end
end
