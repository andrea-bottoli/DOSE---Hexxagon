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
	winner_id : INTEGER
	card: G4_CARDS

feature

	make
	local
		c : G4_CHARACTERS
		i,choice,turn_id : INTEGER
		winner : BOOLEAN
		card_played : G4_CARDS
		act_card : G4_ACTION_CARDS
	do
		print("Logic Implementation")
		--create Players.make(7)
		--tsampis_test

		--Initialize of the game
		set_Players_Number(7)
		create DiscardPile.make
		create CharacterPile.make
		create RolePile.make(7)
		create DrawPile.make

		create_players -- Create Players


		from i:=1 until i= PlayersNum
		loop
			io.put_string ("Player ")
			print(i)
			io.new_line
			CharacterPile.display_character_list
			io.new_line
			io.new_line
			io.put_string ("Choose a character: ")
			io.readint
			Players[i].get_item_board.set_player_character (CharacterPile.player_pick (io.last_integer))
			io.new_line

			i:= i+1
		end


		deal_cards -- Deal Cards to players

		turn_id := 1
		from winner := false until winner = true
		loop
			io.put_string ("Player ")
			print(turn_id)
			io.new_line
			Players[turn_id].display_hand
			io.new_line
			print(Players[turn_id].get_player_hand.count)
			io.put_string ("Chose a card to play: ")
			io.readint
			card_played :=  Players[turn_id].pick_a_card (io.last_integer)
			Players[turn_id].play(card_played)
			if(card_played.get_instance = "Action") then
				io.put_string ("Choose target: ")
				io.readint
				card_played.action (Players, turn_id,io.last_integer, DrawPile)
			end
			io.new_line
			turn_id := turn_id + 1

		end

		DrawPile.display_list (DrawPile.card_pile)

--		CharacterPile.display_character_list --Pick character from terminal test complete
--		io.put_string ("----END HERE----")
--		c := CharacterPile.player_pick (2)
--		CharacterPile.display_character_list
--		print(c.get_character_name)

	end


	tsampis_test
	local
		bang : G4_ACTION_CARDS_BANG
		miss : G4_ACTION_CARDS_MISS
		--scope : G4_ITEM_CARDS_SCOPE
		player1 : G4_PLAYER
		player2 : G4_PLAYER
		--pile : G4_DRAW_PILE
	do
		print("Logic Implementation")
		--create Players.make(7)
		create player1.make
		Players.force (player1)
		create player2.make
		Players.force (player2)
		--Players[2].make
		set_Players_Number(7)
		create DiscardPile.make
		print("Edw 1")
		create CharacterPile.make
		create RolePile.make(7)
		create DrawPile.make

		DrawPile.display_list (DrawPile.card_pile)
		print("Edw 2")

		create bang.make
		bang.set_symbol ("Hearts")
		bang.set_number (3)
		create miss.make -- kapou edw trwei Precondition violated
		miss.set_symbol ("Spades")
		miss.set_number (5)
--		--create scope.make

--		Players[1].add (bang)
--		Players[1].add (bang)
--		Players[1].add (miss)


--		Players[2].add (bang)
--		Players[2].add (bang)
--		Players[2].add (miss)

--		Players[2].get_item_board.add_item (scope)

--		bang.action (Players, 1,2, pile)
	end



	init_Roles(role : G4_ROLES) -- Give roles to each player
	do  end

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
		player : G4_PLAYER
		i : INTEGER
	do
		create Players.make(7)
		create player.make
		from i:=1 until i = PlayersNum + 1
		loop
			player.set_player_id (i)
			Players.force (player)
			i := i+1
		end
	end

	deal_cards --Deal the cards to each player

	local
		i:INTEGER
		j:INTEGER
	do
		from i:=1 until i = PlayersNum + 1
		loop
			from j:=0 until j = Players[i].get_item_board.get_player_character.get_character_life
			loop
				--print( Players[i].get_item_board.get_player_character.get_character_life)
				--io.next_line
				Players[i].draw (DrawPile)
				j := j+1
			end
			i := i+1
		end
	end

	isWinner :INTEGER --Check who's the winner
	do
		ensure (winner_id >= 1) and (winner_id <= 7)
	end


end

