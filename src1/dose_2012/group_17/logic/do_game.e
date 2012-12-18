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
	estates : DO_DRAW_PILE --x24
	duchies : DO_DRAW_PILE --x12
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

	Is_Winner() : BOOLEAN
		do
			ensure
				Winner : Result = True or Result = False
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
--			make()
--			io.putstring ("Give Game Name:")
--			io.readline
--			GameName:=io.laststring
--			io.putstring ("Give Number of Players (must be 2-4):")
--			io.read_integer
--			NumberOfPlayers:=io.last_integer
--			io.putstring ("Game name is: "+GameName)
--			io.new_line
--			io.putstring ("Number Of Players is: ")
--			io.put_integer (NumberOfPlayers)
--			io.new_line

			init_card_list()
			Init_Deck_Piles()
			Init_Players()



		end

	Is_End_Game() : BOOLEAN
		do
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
		do

			Action_ind := a_message.index_of ('_', 1)
			create Action.make_filled (' ', Action_ind-1)
			create Card.make_filled (' ', a_message.count - Action_ind)
			create message.make_empty


			Action.subcopy(a_message, 1, Action_ind-1, 1)
			Card.subcopy (a_message, Action_ind+1, a_message.count, 1)


			if Action.is_equal ("play") then
				playerslist.at(currentplayer).play_card(cardmap.at(Card))
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
				message := message + "play OK"
			elseif Action.is_equal ("buy") then
				playerslist.at(currentplayer).buy_card(cardmap.at(Card))
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
				message := "buy OK"
			elseif Action.is_equal ("clean") then
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
				message := "clean NOT READY"
			end

			Result := message
		--	reset_hand (playerslist.at (currentplayer))
		--	playerslist.at (currentplayer).set_num_actions (1)
		--	playerslist.at (currentplayer).set_num_buys (1)
		--	playerslist.at (currentplayer).set_num_gold (0)
			print ( message)

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
			malakas : DO_CARD
			count : INTEGER
		do
			--Create pile
			create discard.make
			create draw.make (10)

			--Draw 7 copper   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!prepei na allaksei to remove o marios!!!!!!!!!!!!!!!
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card
--			draw.force (laboratory.get_top_card)
--			malakas := laboratory.remove_top_card
--			draw.force (laboratory.get_top_card)
--			malakas := laboratory.remove_top_card
--			draw.force (laboratory.get_top_card)
--			malakas := laboratory.remove_top_card
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card
			draw.force (copper.get_top_card)
			malakas:=copper.remove_top_card

			--Draw 3 Estate
			draw.force (estates.get_top_card)
			malakas:=estates.remove_top_card
			draw.force (estates.get_top_card)
			malakas:=estates.remove_top_card
			draw.force (estates.get_top_card)
			malakas:=estates.remove_top_card

			--Add piles to player
			create d_pile.make_init (10, draw)
			player.set_discard_pile (discard)
			player.set_draw_pile (d_pile)

			from
					count:=0
				until
					count=5
				loop
					player.get_hand.force (player.get_draw_pile.get_top_card)
					malakas:=player.get_draw_pile.remove_top_card
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
		create victory_card.make ("Estates", "Victory", 2, 1)
		cardmap.put (victory_card,"Estates")
		create victory_card.make ("Duchies", "Victory", 5, 3)
		cardmap.put (victory_card,"Duchies")
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
				create victory_card.make ("Estates", "Victory", 2, 1)
				a_estates.force (victory_card)
				counter:=counter+1
			end

			create a_duchies.make (12)
			from
				counter:=0
			until
				counter=12
			loop
				create victory_card.make ("Duchies", "Victory", 5, 3)
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
			create estates.make_init (24, a_estates)
			create duchies.make_init (12, a_duchies)
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



feature{} --Getters

	Get_Player() : DO_PLAYER
		do
			Result :=PlayersList.at (CurrentPlayer)

			ensure
				get_player : Result /= void
		end

	Get_Winner() : DO_PLAYER
		do
			ensure
				get_player : Result /= void
		end

feature{NONE}

	Empty_Players_Hand(player : DO_PLAYER)
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
		end

	Reset_hand(player : DO_PLAYER)
		local
			count : INTEGER
		--	player : DO_PLAYER
			paparas : DO_CARD
		do
--			from
--				CurrentPlayer:=1
--			until
--				
--				--Is_End_Game()=TRUE
--			loop
--				player:=PlayersList.at (CurrentPlayer)
				Empty_Players_Hand(player)
--Each player draw 5 cards
				from
					count:=0
				until
					count=5
				loop
					player.get_hand.force (player.get_draw_pile.get_top_card)
					paparas:=player.get_draw_pile.remove_top_card
					count:=count+1
				end

--				print(player.get_name+" plays:")
--				io.new_line
----Print the hand
--				from
--					count:=0
--				until
--					count=5
--				loop
--					print("["+player.get_hand.at (count+1).getname+"] ")
--					count:=count+1
--				end
--				io.new_line
--				io.readchar
--				CurrentPlayer:=(CurrentPlayer\\NumberOfPlayers)+1
-- Empty players hand in the end of the round


		end


end
