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
	CharacterPile: G4_CHARACTER_PILE
	RolePile: G4_ROLE_PILE
	Players : ARRAYED_LIST[G4_PLAYER] ----Players of the game
	turn :INTEGER --The current turn
	roles: G4_ROLES --Roles of players
	characters : G4_CHARACTERS ----Characters of players
	winner_id,target : INTEGER
	card: G4_CARDS

feature

	make
	local
		i,turn_id : INTEGER
		card_played : G4_CARDS
		dynamite_card : G4_CARDS
		pass_flag,dynamite_flag : BOOLEAN
		jail: G4_ITEM_CARDS_JAIL
	do
		print("Logic Implementation")
		--create Players.make(7)

		--Initialize of the game
		set_Players_Number(5)
		create DiscardPile.make
		create CharacterPile.make
		create RolePile.make(5)
		create DrawPile.make


		DrawPile.shuffle
		RolePile.shuffle

		--tsampis_test


		create Players.make (PlayersNum)

		create_players -- Create Players

		from i:=1 until i= PlayersNum + 1
		loop
			from pass_flag := false until pass_flag = true
			loop
				io.put_string ("Player ")
				print(i)
				io.new_line
				CharacterPile.display_character_list
				io.new_line
				io.new_line
				io.put_string ("Choose a character: ")
				io.readint
				if( io.last_integer>0 and io.last_integer<=CharacterPile.character_pile.count)	then
					Players[i].get_item_board.set_player_character (CharacterPile.player_pick (io.last_integer))
					pass_flag:=true
				else
					io.new_line
					io.put_string ("Try Again...")
					pass_flag:=false
				end
				io.new_line
			 end
			i:=i+1

		end

		init_Roles(PlayersNum)

		deal_cards -- Deal Cards to players
		dynamite_flag := false

		turn_id := 1
		--print(isWinner(Players))
		from winner_id := isWinner(Players) until winner_id /= 0 --Checks if there is a winner
		loop
			io.new_line
			io.put_string ("Player ")
			print(turn_id)
			io.new_line
			io.putstring (" is " + Players[turn_id].get_item_board.get_player_character.get_character_name + " - ")
			print(Players[turn_id].get_item_board.get_player_role.get_role_name)
			io.new_line

			if(dynamite_flag = true) then --Search for the Dynamite Card and trigger the action
				if(dynamite_card.destroyed = False) then
					io.new_line
					io.putstring ("Dynamite Case")
					Players[turn_id].get_item_board.add_item (dynamite_card)
					dynamite_card.action (Players, turn_id,0, DrawPile,DiscardPile)
				else
					io.new_line
					io.putstring ("Dynamite goes boom")
					dynamite_flag := False
					Players[turn_id].get_item_board.discard_item (dynamite_card)
				end
			end


			if(Players[turn_id].get_item_board.get_player_character.get_character_name.is_equal ("Kit Carlson")) then-- Kit Carlson case

				io.new_line
				io.putstring ("Kit Carlson case")
				io.new_line
				DrawPile.get_pile.start
				io.new_line
				from i:=1 until i = 4
				loop
					--Print the first 3 cards of the DrawPile
					io.putstring (DrawPile.get_pile.item.getname + " " + DrawPile.get_pile.item.get_symbol + " ")
					print(DrawPile.get_pile.item.get_number)
					io.putstring (" Code : ")
					print (i)
					io.new_line
					DrawPile.get_pile.forth
					i := i + 1
				end
				io.new_line
				from i:=1 until i = 4
				loop
					--Chooses 2 cards of 3
					io.put_string ("Choose Card ")
					print(i)
					io.readint
					Players[turn_id].draw_card (DrawPile.get_pile.at (io.last_integer))
					i := i + 1
				end

			elseif(Players[turn_id].get_item_board.get_player_character.get_character_name.is_equal ("Pedro Ramirez")) then-- Pedro Ramirez case

				io.new_line
				io.putstring ("Pedro Ramirez case")
				io.new_line
				io.putstring ("Do you want to draw your first card from the Discard Pile [y/n]")
				io.read_character
				if(io.last_character.is_equal ('y')) then
					if(DiscardPile.get_pile.is_empty = false) then
						Players[turn_id].draw_card (DiscardPile.get_pile.last)
						Players[turn_id].draw (DrawPile)
					else
						io.putstring ("Player cannot draw from Discard because its empty")
					end
				else
					io.putstring ("Player draws 2 cards") --Player draws 2 cards
					Players[turn_id].draw (DrawPile)
					Players[turn_id].draw (DrawPile)
				end
			elseif(Players[turn_id].get_item_board.get_player_character.get_character_name.is_equal ("Jesse Jones")) then-- Jesse Jones case
				io.new_line
				io.putstring ("Jesse Jones case")
				io.new_line
				io.putstring ("Do you want to draw your first card from the hand of a Player [y/n]")
				io.read_character
				io.new_line
				if(io.last_character.is_equal ('y')) then
					io.put_string ("Choose a target: ")
					io.read_integer
					io.new_line
					target := io.last_integer
					if(Players[target].get_player_hand.is_empty = false) then
						io.put_string ("Choose a number between 1 and ")
						print(Players[io.last_integer].get_player_hand.count)
						io.putstring (": ")
						io.read_integer
						io.new_line
						Players[turn_id].draw_card (Players[target].pick_a_card (io.last_integer))
					else
						io.putstring ("Player cannot draw from Discard because its empty")
					end
				end

			elseif(Players[turn_id].get_item_board.get_player_character.get_character_name.is_equal ("Lucky Duke")) then-- Lucky Duke case
					io.new_line
					io.putstring ("Jesse Jones case")
					io.new_line
					io.putstring ("Player draws first card") --Draw the first card
					Players[turn_id].draw (DrawPile)
					from i:=1 until i = 3
					loop
						--Print the next 2 cards of the DrawPile
						io.new_line
						io.putstring (DrawPile.get_pile.item.getname + " " + DrawPile.get_pile.item.get_symbol + " ")
						print(DrawPile.get_pile.item.get_number)
						io.putstring (" Code : ")
						print (i)
						io.new_line
						DrawPile.get_pile.forth
						i := i + 1
					end
					io.new_line

					--Chooses 1 card of 2
					io.put_string ("Choose Card ")
					io.readint
					Players[turn_id].draw_card (DrawPile.get_pile.at (i))
					i := i + 1
			else
				io.putstring ("Player draws 2 cards") --Player draws 2 cards
				Players[turn_id].draw (DrawPile)
				Players[turn_id].draw (DrawPile)
				io.new_line
			end
			io.new_line

			--card_played := find_a_card(Players[turn_id].get_item_board, "Jail")  --Search for the Jail Card



			--Trigger Action of the character
			io.putstring ("Do you want to trigger the action of the character? [y/n]")
			io.read_character
			if(io.last_character.is_equal ('y')) then
				Players[turn_id].get_item_board.get_player_character.action (Players, turn_id, DrawPile)
			end


			create jail.make
			from pass_flag := false until pass_flag = true
			loop
			--JAIL CHECK
			if find_a_card(Players[turn_id].get_item_board, "Jail") = true then
				io.new_line
				io.put_string ("You have been sended to Jail and you must draw from the draw pile.")

				card_played := DrawPile.pop
				if card_played.getname.is_equal ("Hearts") then
					io.new_line
					io.put_string ("It is your lucky day, you drawed a Heart and you escaped Jail.")
					io.new_line
				else
					io.new_line
					io.put_string ("You are now in Jail and you loose you turn")
					io.new_line
					pass_flag := true
				end
				DiscardPile.put (card_played)
				Players[turn_id].get_item_board.discard_item (jail)
			else
				if(	Players[turn_id].get_item_board.get_player_items.is_empty = false) then
					Players[turn_id].get_item_board.display_item_board
				end
				io.new_line
				io.new_line
				Players[turn_id].display_hand
				io.new_line
				pass_flag:=true

				io.new_line
				io.put_string ("Choose a card to play (0 to pass): ")
				io.readint
				if(io.last_integer > 0 and io.last_integer<=Players[turn_id].get_player_hand.count) then
					card_played := Players[turn_id].pick_a_card (io.last_integer)
					if(card_played.getname.is_equal ("Jail"))then -- Jail card case
						io.put_string ("Chose a target to get in Jail: ")
						io.readint
						Players[io.last_integer].get_item_board.add_item (card_played)
					elseif(card_played.getname.is_equal ("Dynamite")) then
						dynamite_flag := true
						Players[turn_id].get_item_board.add_item (card_played) --Dynamite card case
						dynamite_card := card_played
					else
						card_played.action (Players, turn_id,io.last_integer, DrawPile,DiscardPile) -- Action
					end
					Players[turn_id].play(card_played, DiscardPile)
					io.new_line
				end
				if(io.last_integer=0) then
					pass_flag := true
				else
					pass_flag := false
				end
			end
		end

			turn_id := turn_id + 1
			if(turn_id > PlayersNum ) then
				turn_id := 1
			end

		end
	end

	init_Roles(a_player_num: INTEGER) -- Give roles to each player
	local i: INTEGER
	do
		from i:=1 until i = a_player_num+1
		loop
			Players.i_th (i).get_item_board.set_player_role (RolePile.player_pick(1))
			i:=i+1
		end
	end

	init_Deck--(Pile:G4_DRAW_PILE;card : G4_CARDS) --Initialize the deck of the cards
	do end

	--Set Players_Number
	set_Players_Number(num : INTEGER)
	do
		PlayersNum := num
		ensure PlayersNum > 4
	end

	--Create Players
	create_players
	local
		i : INTEGER; player: G4_PLAYER
	do
		create Players.make (PlayersNum)
		from i:=1 until i = PlayersNum + 1
		loop
			--Players.force (create {G4_PLAYER}.make(i))
			create player.make(i)
			player := new_player(i)
			Players.force (player)
			i := i+1
		end
	end

	new_player(id : INTEGER) : G4_PLAYER
	local
		player  : G4_PLAYER
	do
		create player.make(id)
		Result := player
	end

	deal_cards --Deal the cards to each player

	local
		i:INTEGER
		j:INTEGER
	do
		Players.start
		from i:=1 until i = PlayersNum + 1
		loop
			from j:=0 until j = Players[i].get_item_board.get_player_character.get_character_life
			loop
				--print( Players[i].get_item_board.get_player_character.get_character_life)
				--io.new_line
				Players[i].draw (DrawPile)
				j := j+1
			end
			i := i+1
		end
	end


	 --searces a card in a players items
	 find_a_card(a_item_board: G4_ITEM_BOARD; a_card_name: STRING): BOOLEAN
	 local card_flag: BOOLEAN
	 do
	  	card_flag := false
	  	from a_item_board.player_items.start until a_item_board.player_items.after = true
	  	loop
	   		if (a_item_board.player_items.item.getname.is_equal (a_card_name) = true )then
	    		card_flag := true
	   		end
	  	end
	  	Result := card_flag
	 end


	--Checks if there is a winner
	 --And returns 1 if the winner is the sheriff,
	 --2 if it is a bandit,
	 --3 if it is the fugitive
	 --0 if there is no winner
	 isWinner(a_players_list: ARRAYED_LIST[G4_PLAYER]) :INTEGER --Check who's the winner
	 local
	 	winner,i: INTEGER
	 	flag: BOOLEAN
	 do
	  	flag := false
	  	winner := 0
	  	from i:= 1 until i = a_players_list.count + 1
	  	loop
	   		if a_players_list[i].get_item_board.get_player_role.victory_conditions (a_players_list) = true then
	    		flag := true
	   		end
	   		if flag = true then
	    		if a_players_list[i].get_item_board.get_player_role.get_role_name.is_equal ("Sheriff") = true then
	     			winner := 1
	    		elseif a_players_list[i].get_item_board.get_player_role.get_role_name.is_equal ("Bandit") = true then
	     			winner := 2
	    		elseif a_players_list[i].get_item_board.get_player_role.get_role_name.is_equal ("Fugitive") = true then
	     			winner := 3
	    		end
	   		end
	   		i:= i + 1
	  	end
	  	Result := winner
	 end
end

