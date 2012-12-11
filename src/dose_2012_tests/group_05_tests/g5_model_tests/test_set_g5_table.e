note
	description: "Summary description for {TEST_SET_G5_TABLE}."
	author: "Gabriele Fanchini"
	date: "19.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_SET_G5_TABLE

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end


feature -- Elements needed to the test

	inet_server: G5_INET_TO_LOGIC
	table: G5_TABLE

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create table.make_game_default (3, inet_server)
		end
feature -- Test routines

	test_decode
			-- This test checks the translation from card_ID to G5_card
		note
			testing: "covers/{G5_TABLE}.decode"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			g5_card_kingdom: G5_CARD
			g5_card_treasure: G5_CARD
			g5_card_victory: G5_CARD
			g5_card_curse: G5_CARD
		do
			g5_card_kingdom:= table.decode("K1")
			g5_card_treasure:= table.decode("T1")
			g5_card_victory:= table.decode("V3")
			g5_card_curse:= table.decode("C1")

			assert ("The first decoded card is adventurer:", g5_card_kingdom.id.is_equal("adventurer"))
			assert ("The second decoded card is a copper treasure:", g5_card_treasure.id.is_equal("copper"))
			assert ("The third decoded card is a province:", g5_card_victory.id.is_equal("province"))
			assert ("The fourth decoded card is a curse:", g5_card_curse.id.is_equal("curse"))

		end

	test_next_player
			-- Test if we determine correctly who is the next player of the game
		note
			testing: "covers/{G5_TABLE}.next_player"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			old_current_player_name: STRING
			old_current_player_position: INTEGER
			position_next_player: INTEGER

		do
		--	create table.make_game_table(i)
			old_current_player_name:= table.player_current.name
			position_next_player:=table.next_player
			old_current_player_position:= position_next_player-1

			assert("Old current player correspond:",table.players[old_current_player_position].name.is_equal (old_current_player_name))
			assert("New position exist:",position_next_player<=table.players.count)

		end

	test_get_player_current
			-- Test if this feature returns the current player
		note
			testing: "covers/{G5_TABLE}.get_player_current"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			index_current: INTEGER
			current_player_name: STRING
		do
			index_current:= table.index_current
			current_player_name:= table.get_player_current (index_current).name
			assert("current player returned is correct:",current_player_name.is_equal (table.player_current.name))
		end


	test_next_phase
			-- Test if this return the correct next phase name
		note
			testing: "covers/{G5_TABLE}.next_phase"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			returned_phase: STRING
		do
			returned_phase:=table.next_phase ("action")
			assert("phase after action phase is buy:",returned_phase.is_equal ("buy"))

			returned_phase:=table.next_phase ("buy")
			assert("phase after buy phase is clean-up:",returned_phase.is_equal ("clean-up"))
		end


	test_init_game_default
			-- Test if the game is inizialized in the proper way when "default" choice was performed
		note
			testing: "covers/{G5_TABLE}.init_game_default"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			itable: G5_ITABLE
			players_number: INTEGER
			inet: G5_INET_TO_LOGIC
		do
			--itable.make_game_default (3, inet)

			-- we assumed that the initi feature set the dimension of the array, all the elements are void
			players_number:= table.players.count

			-- we would like also to check that supply is setted in the correct way. But pile_card_supply constructor is missed
			-- and without an idea of the implementation code is impossible. This check will be implemented later
			assert("correct initialization:",players_number.is_equal (3))
		end


	test_init_game_randomize
			-- Test if the game is inizialized in the proper way when "random" choice was performed
		note
			testing: "covers/{G5_TABLE}.init_game_randomize"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			table_randomize: G5_TABLE
			itable: G5_ITABLE
			players_number: INTEGER
		do
			create table.make_game_randomize (4, inet_server)
			--itable.init_game_randomize (4)

			-- we assumed that the initi feature set the dimension of the array, all the elements are void
			players_number:= table.players.count

			-- we would like also to check that supply is setted in the correct way. But pile_card_supply constructor is missed
			-- and without an idea of the implementation code is impossible. This check will be implemented later
			assert("correct initialization:",players_number.is_equal (4))
		end

	test_init_game_personalized
			-- Test if the game is inizialized in the proper way when a "personalized" game is selected
		note
			testing: "covers/{G5_TABLE}.init_game_personalized"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			table_personalized: G5_TABLE
			itable: G5_ITABLE
			players_number: INTEGER
			cards: ARRAY[STRING]
		do

			-- here it sets the array of cards set
			cards.put ("K1",1)
			cards.put ("K2",2)
			cards.put ("K3",3)
			cards.put ("K4",4)
			cards.put ("K5",5)
			cards.put ("K6",6)
			cards.put ("K7",7)
			cards.put ("K8",8)
			cards.put ("K9",9)
			cards.put ("K10",10)


		create table_personalized.make_game_personalized (2, cards, inet_server)

			players_number:= table.players.count

			-- we would like also to check that supply is setted in the correct way. But pile_card_supply constructor is missed
			-- and without an idea of the implementation code is impossible. This check will be implemented later
			assert("correct initialization",players_number.is_equal (2))
		end


	test_connection
			-- Test if the connection feature has been resolved in the proper way
			-- PROBLEM IN VISIBILITY
		note
			testing: "covers/{G5_TABLE}.connection"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			itable: G5_ITABLE
			a_name: STRING
			returned_value: BOOLEAN
			old_number_players: INTEGER
		do
			a_name:= "player_name"
			old_number_players:= table.players.count
			returned_value:= itable.connection (a_name)

			if
				returned_value = true
				-- later (during the implementation) it will be be also performed a check that ensure that doesn't axist alredy a player with the same name
			then
				assert("number of player has been updated",table.players.count = (old_number_players+1))
			else
				assert("number of player didn't change",table.players.count = old_number_players)
			end
		end


	test_disconnect
			-- Test if the disconnect feature has been resolved in the proper way
		note
			testing: "covers/{G5_TABLE}.disconnect"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			itable: G5_ITABLE
			a_name: STRING
			old_number_players: INTEGER
		do
			a_name:= "player_name"
			old_number_players:= table.players.count
			itable.disconnect (a_name)
			assert("number of player has been updated",table.players.count = (old_number_players-1))
		end

	test_restart_game
			-- Test if the restart_game feature has been resolved in the proper way
		note
			testing: "covers/{G5_TABLE}.restart_game"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		do
			-- it can be tested yet (only with other feature can be tested the correctness of this feature)
		end

end
