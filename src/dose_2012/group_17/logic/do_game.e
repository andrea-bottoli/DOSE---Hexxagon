note
	description: "Summary description for {DO_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_GAME

create
	Play_Game

feature{NONE}
	GameName : STRING
	NumberOfPlayers : INTEGER
	CurrentPlayer : INTEGER
	PlayersList : ARRAYED_LIST[DO_PLAYER]
	CardMap : HASH_TABLE[DO_CARD,STRING]

--Deck Piles
	--Trash Pile
	trash_pile : DO_TRASH_PILE

	--Coin
	copper : DO_DRAW_PILE --x60
	silver : DO_DRAW_PILE --x40
	gold : DO_DRAW_PILE --x30

	--Victory
	estate : DO_DRAW_PILE --x24
	duchy : DO_DRAW_PILE --x12
	province : DO_DRAW_PILE --x12
	curse : DO_DRAW_PILE --x30

	--Kingdom --all of them x10
	chapel : DO_DRAW_PILE
	festival : DO_DRAW_PILE
	laboratory : DO_DRAW_PILE
	market : DO_DRAW_PILE
	oasis : DO_DRAW_PILE
	salvager : DO_DRAW_PILE
	smithy : DO_DRAW_PILE
	stables : DO_DRAW_PILE
	village : DO_DRAW_PILE
	woodcutter : DO_DRAW_PILE

	make
		do
			Set_Game("New_Game")
			NumberOfPlayers:=0
			CurrentPlayer:=0
		end

feature

	Add_Player(a_player :DO_PLAYER)
		require
			arg_player_not_void : a_player /= void
		do
			PlayersList.put_right (a_player)

			ensure
				Player_added : PlayersList.count() = old PlayersList.count() + 1
		end

	Delete_Player(d_player : DO_PLAYER)
		require
			arg_player_not_void : d_player /= void
		do
			PlayersList.prune (d_player)

			ensure
				Player_deleted : PlayersList.count() = old PlayersList.count() - 1
		end

	Valid_Move() : BOOLEAN
		do
			ensure
				Move : Result = True or Result = False
		end

			-- PLAY GAME METHOD --
	 -- HERE IS WHERE THE MAGIC HAPPENS --
	-- ALL OTHER METHODS ARE CALLED HERE --
	Play_Game(number_of_players : INTEGER)
		do
			numberofplayers := number_of_players
			currentplayer := 1

			init_card_list()
			Init_Deck_Piles()
			Init_Players()

		end

	Is_End_Game() : BOOLEAN
		local
			num_empty_piles : INTEGER
		do
			if province.is_empty then
				Result :=TRUE
			else
				num_empty_piles:=0
				if copper.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if silver.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if gold.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if estate.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if duchy.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if curse.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if chapel.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if festival.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if laboratory.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if market.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if oasis.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if salvager.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if smithy.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if stables.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if village.is_empty then
					num_empty_piles:=num_empty_piles+1
				end
				if woodcutter.is_empty then
					num_empty_piles:=num_empty_piles+1
				end

				if num_empty_piles>=3 then
					Result :=TRUE
				else
					Result :=FALSE
				end
			end
			ensure
				game_end : Result = True or Result = False
		end

feature

	-- Get message from GUI and decipher it so we can update the game state based on the changes --
	NotifyGameState(a_message : STRING) : STRING
		require
			arg_not_void : a_message /= void
		local
			Action_ind : INTEGER
			Action : STRING
			Card : STRING
			message : STRING
			delete : DO_CARD
		do
			if a_message.is_equal ("init")then
				create message.make_empty
			elseif a_message.is_equal ("change_player") then -- eisai piwmenos
				--reset_hand (playerslist.at(currentplayer))
				currentplayer := (currentplayer\\playerslist.count)+1
				reset_hand (playerslist.at(currentplayer))
				--playerslist.at (currentplayer).set_num_gold (0)
				create message.make_empty
			else

				Action_ind := a_message.index_of ('_', 1)
				create Action.make_filled (' ', Action_ind-1)
				create Card.make_filled (' ', a_message.count - Action_ind)
				create message.make_empty


				Action.subcopy(a_message, 1, Action_ind-1, 1)
				Card.subcopy (a_message, Action_ind+1, a_message.count, 1)


				if Action.is_equal ("play") then
					playerslist.at(currentplayer).play_card(cardmap.at(Card))
				elseif Action.is_equal ("buy") then
					playerslist.at(currentplayer).buy_card(cardmap.at(Card))
					if playerslist.at(currentplayer).get_message.is_equal ("Buy Succesfull.") then
						if Card.is_equal ("Copper") then
							delete:=copper.remove_top_card
						elseif Card.is_equal ("Silver") then
							delete:=silver.remove_top_card
						elseif Card.is_equal ("Gold")then
							delete:=gold.remove_top_card
						elseif Card.is_equal ("Estate")then
							delete:=estate.remove_top_card
						elseif Card.is_equal ("Duchy")then
							delete:=duchy.remove_top_card
						elseif Card.is_equal ("Province")then
							delete:=province.remove_top_card
						elseif Card.is_equal ("Curse")then
							delete:=curse.remove_top_card
						elseif Card.is_equal ("Chapel")then
							delete:=chapel.remove_top_card
						elseif Card.is_equal ("Festival")then
							delete:=festival.remove_top_card
						elseif Card.is_equal ("Laboratory")then
							delete:=laboratory.remove_top_card
						elseif Card.is_equal ("Market")then
							delete:=market.remove_top_card
						elseif Card.is_equal ("Oasis")then
							delete:=oasis.remove_top_card
						elseif Card.is_equal ("Salvager")then
							delete:=salvager.remove_top_card
						elseif Card.is_equal ("Smithy")then
							delete:=smithy.remove_top_card
						elseif Card.is_equal ("Stables")then
							delete:=stables.remove_top_card
						elseif Card.is_equal ("Village")then
							delete:=village.remove_top_card
						elseif Card.is_equal ("Woodcutter")then
							delete:=woodcutter.remove_top_card
						elseif Card.is_equal ("Duchy")then
							delete:=duchy.remove_top_card
						end
					end
				elseif Action.is_equal ("clean") then
					delete := playerslist.at(currentplayer).discard_card(cardmap.at(Card))
					trash_pile.add_card (delete)
				end
			end

			across playerslist.at(currentplayer).get_hand
			as i
			loop
				message := message + i.item.getname + " "
			end
			message := message + "_"
			message := message + playerslist.at(currentplayer).get_num_actions.out + "/"
			message := message + playerslist.at(currentplayer).get_num_buys.out + "/"
			message := message + playerslist.at(currentplayer).get_num_gold.out
			message := message + "_"
			message := message + playerslist.at(currentplayer).get_message

			Result := message
		--	reset_hand (playerslist.at (currentplayer))
		--	playerslist.at (currentplayer).set_num_actions (1)
		--	playerslist.at (currentplayer).set_num_buys (1)
		--	playerslist.at (currentplayer).set_num_gold (0)
		--	print ( message)

			ensure
				arg_deciphered : Result /= void
		end


feature --Initialization

	Init_Players()
		local
			player : DO_PLAYER
			num_players : INTEGER
		do
			create PlayersList.make (NumberOfPlayers)

			from
				num_players:=1;
			until
				num_players=NumberOfPlayers+1
			loop
				create player.make
				player.set_name ("Player"+num_players.out)
				Dealer(player)
				PlayersList.force(player)
				playerslist.at (currentplayer).set_num_actions (1)
				playerslist.at (currentplayer).set_num_buys (1)
				playerslist.at (currentplayer).set_num_gold (0)
				num_players:=num_players+1

			end

		end

	Dealer(player : DO_PLAYER)
		local
			draw : ARRAYED_LIST[DO_CARD]
			d_pile :DO_DRAW_PILE
			discard : DO_DISCARD_PILE
			count : INTEGER
		do
			--Create pile
			create discard.make
			create draw.make (10)

			--Draw 7 copper
			draw.force (copper.remove_top_card)
			draw.force (copper.remove_top_card)
			draw.force (copper.remove_top_card)
			draw.force (copper.remove_top_card)
			draw.force (copper.remove_top_card)
			draw.force (copper.remove_top_card)
			draw.force (copper.remove_top_card)

			--Draw 3 Estate
			draw.force (estate.remove_top_card)
			draw.force (estate.remove_top_card)
			draw.force (estate.remove_top_card)
			draw:=shuffle (draw)
			--Add piles to player
			create d_pile.make_init (10, draw)
			player.set_discard_pile (discard)
			player.set_draw_pile (d_pile)



			from
					count:=0
				until
					count=5
				loop
					player.get_hand.force (player.get_draw_pile.remove_top_card)
					count:=count+1
				end
		end

	Init_Card_List()
	local
			coin_card : DO_COIN_CARD
			victory_card : DO_VICTORY_CARD
			kingdom_card : DO_KINGDOM_CARD
	do
		--coin
		create cardmap.make (17)
		create coin_card.make ("Copper", "Coin", 0, 1)
		cardmap.put (coin_card, "Copper")
		create coin_card.make ("Silver", "Coin", 3, 2)
		cardmap.put (coin_card, "Silver")
		create coin_card.make ("Gold", "Coin", 6, 3)
		cardmap.put (coin_card, "Gold")
		--victory
		create victory_card.make ("Estate", "Victory", 2, 1)
		cardmap.put (victory_card,"Estate")
		create victory_card.make ("Duchy", "Victory", 5, 3)
		cardmap.put (victory_card,"Duchy")
		create victory_card.make ("Province", "Victory", 8, 6)
		cardmap.put (victory_card,"Province")
		create victory_card.make ("Curse", "Victory", 0, -1)
		cardmap.put (victory_card,"Curse")
		--kingdom
		create kingdom_card.make ("Chapel", "Kingdom", 2, 0, 0, 0, 0, 4)
		cardmap.put (kingdom_card,"Chapel")
		create kingdom_card.make ("Festival", "Kingdom", 5, 0, 2, 1, 2, 0)
		cardmap.put (kingdom_card,"Festival")
		create kingdom_card.make ("Laboratory", "Kingdom", 5, 2, 1, 0, 0, 0)
		cardmap.put (kingdom_card,"Laboratory")
		create kingdom_card.make ("Market", "Kingdom", 5, 1, 1, 1, 1, 0)
		cardmap.put (kingdom_card,"Market")
		create kingdom_card.make ("Oasis", "Kingdom", 3, 1, 1, 0, 1, 1)
		cardmap.put (kingdom_card,"Oasis")
		create kingdom_card.make ("Salvager", "Kingdom", 4, 0, 0, 1, 1, 1)
		cardmap.put (kingdom_card,"Salvager")
		create kingdom_card.make ("Smithy", "Kingdom", 4, 3, 0, 0, 0, 0)
		cardmap.put (kingdom_card,"Smithy")
		create kingdom_card.make ("Stables", "Kingdom", 5, 3, 1, 0, 0, 1)
		cardmap.put (kingdom_card,"Stables")
		create kingdom_card.make ("Village", "Kingdom", 3, 1, 2, 0, 0, 0)
		cardmap.put (kingdom_card,"Village")
		create kingdom_card.make ("Woodcutter", "Kingdom", 3, 0, 0, 1, 2, 0)
		cardmap.put (kingdom_card,"Woodcutter")
	end


	Init_Deck_Piles()
		local
			counter : INTEGER
			coin_card : DO_COIN_CARD
			victory_card : DO_VICTORY_CARD
			kingdom_card : DO_KINGDOM_CARD

			--Coin
			a_copper : ARRAYED_LIST[DO_CARD] --x60
			a_silver : ARRAYED_LIST[DO_CARD] --x40
			a_gold : ARRAYED_LIST[DO_CARD] --x30

			--Victory
			a_estates : ARRAYED_LIST[DO_CARD] --x24
			a_duchies : ARRAYED_LIST[DO_CARD] --x12
			a_province : ARRAYED_LIST[DO_CARD] --x12
			a_curse : ARRAYED_LIST[DO_CARD] --x30

			--Kingdom --all of them x10
			a_chapel : ARRAYED_LIST[DO_CARD]
			a_festival : ARRAYED_LIST[DO_CARD]
			a_laboratory : ARRAYED_LIST[DO_CARD]
			a_market : ARRAYED_LIST[DO_CARD]
			a_oasis : ARRAYED_LIST[DO_CARD]
			a_salvager : ARRAYED_LIST[DO_CARD]
			a_smithy : ARRAYED_LIST[DO_CARD]
			a_stables : ARRAYED_LIST[DO_CARD]
			a_village : ARRAYED_LIST[DO_CARD]
			a_woodcutter : ARRAYED_LIST[DO_CARD]
		do
		--Create Trash Pile
			create trash_pile.make

		--Create the arrayed lists
			-----------------------------------Create Coin---------------------------------------
			create a_copper.make (60)
			from
				counter:=0
			until
				counter=60
			loop
				create coin_card.make ("Copper", "Coin", 0, 1)
				a_copper.force (coin_card)
				counter:=counter+1
			end

			create a_silver.make (40)
			from
				counter:=0
			until
				counter=40
			loop
				create coin_card.make ("Silver", "Coin", 3, 2)
				a_silver.force (coin_card)
				counter:=counter+1
			end

			create a_gold.make (30)
			from
				counter:=0
			until
				counter=30
			loop
				create coin_card.make ("Gold", "Coin", 6, 3)
				a_gold.force (coin_card)
				counter:=counter+1
			end

			---------------------------Create Victory------------------------------------------
			create a_estates.make (24)
			from
				counter:=0
			until
				counter=24
			loop
				create victory_card.make ("Estate", "Victory", 2, 1)
				a_estates.force (victory_card)
				counter:=counter+1
			end

			create a_duchies.make (12)
			from
				counter:=0
			until
				counter=12
			loop
				create victory_card.make ("Duchy", "Victory", 5, 3)
				a_duchies.force (victory_card)
				counter:=counter+1
			end

			create a_province.make (12)
			from
				counter:=0
			until
				counter=12
			loop
				create victory_card.make ("Province", "Victory", 8, 6)
				a_province.force (victory_card)
				counter:=counter+1
			end

			create a_curse.make (30)
			from
				counter:=0
			until
				counter=30
			loop
				create victory_card.make ("Curse", "Victory", 0, -1)
				a_curse.force (victory_card)
				counter:=counter+1
			end

			---------------------------------------------Create Kingdom-----------------------------------------------------
			create a_chapel.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Chapel", "Kingdom", 2, 0, 0, 0, 0, 4)
				a_chapel.force (kingdom_card)
				counter:=counter+1
			end

			create a_festival.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Festival", "Kingdom", 5, 0, 2, 1, 2, 0)
				a_festival.force (kingdom_card)
				counter:=counter+1
			end

			create a_laboratory.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Laboratory", "Kingdom", 5, 2, 1, 0, 0, 0)
				a_laboratory.force (kingdom_card)
				counter:=counter+1
			end

			create a_market.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Market", "Kingdom", 5, 1, 1, 1, 1, 0)
				a_market.force (kingdom_card)
				counter:=counter+1
			end

			create a_oasis.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Oasis", "Kingdom", 3, 1, 1, 0, 1, 1)
				a_oasis.force (kingdom_card)
				counter:=counter+1
			end

			create a_salvager.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Salvager", "Kingdom", 4, 0, 0, 1, 1, 1)
				a_salvager.force (kingdom_card)
				counter:=counter+1
			end

			create a_smithy.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Smithy", "Kingdom", 4, 3, 0, 0, 0, 0)
				a_smithy.force (kingdom_card)
				counter:=counter+1
			end

			create a_stables.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Stables", "Kingdom", 5, 3, 1, 0, 0, 1)
				a_stables.force (kingdom_card)
				counter:=counter+1
			end

			create a_village.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Village", "Kingdom", 3, 1, 2, 0, 0, 0)
				a_village.force (kingdom_card)
				counter:=counter+1
			end

			create a_woodcutter.make (10)
			from
				counter:=0
			until
				counter=10
			loop
				create kingdom_card.make ("Woodcutter", "Kingdom", 3, 0, 0, 1, 2, 0)
				a_woodcutter.force (kingdom_card)
				counter:=counter+1
			end

			--------------------------------------------Assign Lists to Deck Piles------------------------------------------------
			create copper.make_init (60, a_copper)
			create silver.make_init (40, a_silver)
			create gold.make_init (30, a_gold)
			create estate.make_init (24, a_estates)
			create duchy.make_init (12, a_duchies)
			create province.make_init (12, a_province)
			create curse.make_init (30, a_curse)
			create chapel.make_init (10, a_chapel)
			create festival.make_init (10, a_festival)
			create laboratory.make_init (10, a_laboratory)
			create market.make_init (10, a_market)
			create oasis.make_init (10, a_oasis)
			create salvager.make_init (10, a_salvager)
			create smithy.make_init (10, a_smithy)
			create stables.make_init (10, a_stables)
			create village.make_init (10, a_village)
			create woodcutter.make_init (10, a_woodcutter)

		end


feature --Setters

	Set_Player(s_player : DO_PLAYER)
		require
			arg_not_void : s_player /= void
		do
			PlayersList.at (CurrentPlayer):=s_player
		end

	Set_Game(s_game : STRING)
		require
			arg_not_void : s_game /= void
		do
			GameName:=s_game

			ensure
				GameName=s_game
		end



feature{ANY} --Getters

	Get_Player() : DO_PLAYER
		do
			Result :=PlayersList.at (CurrentPlayer)

			ensure
				get_player : Result /= void
		end

	Get_Winner() : STRING
		local
			vp1 : INTEGER
			vp2 : INTEGER
			msg : STRING
		do
--			max_points:=0

--			across playerslist
--				 as i
--			loop
--				if i.item.count_points >= max_points then
--					max_points:=i.item.count_points
--					Result :=i.item
--				end
--			end
			create msg.make_empty
			vp1:=playerslist.at (1).count_points
			vp2:=playerslist.at (2).count_points

			msg:=vp1.out+"_"+vp2.out
			Result := msg
--			ensure
--				Winner : Result /=void
		end

	Get_Current() : INTEGER
		do
			Result :=currentplayer
		end

feature{NONE}

	Reset_hand(player : DO_PLAYER)
		local
			hand : ARRAYED_LIST[DO_CARD]
			count : INTEGER
		do
				from
					count:=0
				until
					count=player.get_hand.count
				loop
					player.get_discard_pile.add_top_card (player.get_hand.at (count+1))
					count:=count+1
				end

		  		create hand.make (5)
				player.set_hand (hand)

--Each player draw 5 cards
				from
					count:=0
				until
					count=5
				loop
					if player.get_draw_pile.is_empty then
						player.get_draw_pile.refill_draw (player.get_discard_pile)
					end
					player.get_hand.force (player.get_draw_pile.remove_top_card)
					count:=count+1
				end

				player.set_num_actions (1)
				player.set_num_buys (1)
				player.set_num_gold (0)
				player.set_message (void)


		end

	random_sequence : RANDOM
	Shuffle(a_pile : ARRAYED_LIST[DO_CARD]) : ARRAYED_LIST[DO_CARD]
	local
      	l_time: TIME
      	l_seed: INTEGER
      	i,fswap,toswap:INTEGER

    do
	      create l_time.make_now
	      l_seed := l_time.hour
	      l_seed := l_seed * 60 + l_time.minute
	      l_seed := l_seed * 60 + l_time.second
	      l_seed := l_seed * 1000 + l_time.milli_second
	      create random_sequence.set_seed (l_seed)
			--io.put_integer (new_random \\ numberofcards+1)
			from i:=1
			until a_pile.count = i
			loop

				fswap:=new_random \\ (a_pile.count-1) +1
				toswap :=new_random \\ (a_pile.count-1) + 1

				a_pile.move(fswap)
				a_pile.swap (toswap)
				a_pile.start
				i :=i+1
			end
			Result :=a_pile

	ensure
	--	shuffled_pile_new : pile.count() = a_pile.count()
	end

	new_random: INTEGER
	  do
	    random_sequence.forth
	    Result := random_sequence.item
	  end




end
