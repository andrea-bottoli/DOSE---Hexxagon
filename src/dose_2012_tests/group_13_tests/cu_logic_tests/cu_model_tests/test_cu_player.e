note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_PLAYER class of the Cluedo game.
	]"
	author: "German Lopez"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_PLAYER

inherit
	EQA_TEST_SET

feature
	player: CU_PLAYER

feature -- Test routines

		-- Tests make
	test_make_0
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.make"
			testing: "user/CU"
		local
			a_name: STRING
			a_pawn: INTEGER
		do
			a_name := "Player1"
			a_pawn := 2
			create player.make (a_name, a_pawn)
			assert ("Player create with name and pawn:", (player.name = a_name) and (player.pawn = a_pawn))
		end

	test_make_1
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.make"
			testing: "user/CU"
		local
			a_name: STRING
			a_pawn: INTEGER
			rescued: BOOLEAN
		do
			a_name := ""
			a_pawn := 4
			if not rescued then
				create player.make (a_name, a_pawn)
			end
			assert ("Name incorrect:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_make_2
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.make"
			testing: "user/CU"
		local
			a_name: STRING
			a_pawn: INTEGER
			rescued: BOOLEAN
		do
			a_name := "Player1"
			a_pawn := -1
			if not rescued then
				create player.make (a_name, a_pawn)
			end
			assert ("The pawn selected is not exist:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_make_3
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.make"
			testing: "user/CU"
		local
			a_name: STRING
			a_pawn: INTEGER
			rescued: BOOLEAN
		do
			a_name := "Player1"
			a_pawn := 6
			if not rescued then
				create player.make (a_name, a_pawn)
			end
			assert ("The pawn selected is not exist:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Test method is_in_hand
	test_is_in_hand_0
			-- This routine, indicates if a card is in hand.
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
		do
			t_card := 1
			n_card := 7
			create player.make ("Player1", 2)
			player.hand.extend (create {CU_WEAPON_CARD}.make (3))
	    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
	    	player.hand.extend (create {CU_ROOM_CARD}.make (7))
	    	player.hand.extend (create {CU_WEAPON_CARD}.make (4))
	    	e_card := player.is_in_hand (n_card, t_card)
	    	assert ("The card is in hand:", e_card)
		end

	test_is_in_hand_1
			-- This routine, indicates if a card is not in hand.
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
		do
			t_card := 3
			n_card := 2
			create player.make ("Player1", 2)
			player.hand.extend (create {CU_WEAPON_CARD}.make (5))
	    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
	    	player.hand.extend (create {CU_ROOM_CARD}.make (2))
	    	player.hand.extend (create {CU_WEAPON_CARD}.make (0))
	    	e_card := player.is_in_hand (n_card, t_card)
	    	assert ("The card is not in hand:", not e_card)
		end

	test_is_in_hand_2
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
			rescued: BOOLEAN
		do
			t_card := 4
			n_card := 3
			if not rescued then
				create player.make ("Player1", 4)
				player.hand.extend (create {CU_WEAPON_CARD}.make (3))
		    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
		    	player.hand.extend (create {CU_ROOM_CARD}.make (7))
		    	player.hand.extend (create {CU_WEAPON_CARD}.make (4))
		    	e_card := player.is_in_hand (n_card, t_card)
			end
	    	assert ("Wrong type of a card:", rescued)
	    	rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_is_in_hand_3
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
			rescued: BOOLEAN
		do
			t_card := 0
			n_card := 4
			if not rescued then
				create player.make ("Player1", 4)
				player.hand.extend (create {CU_WEAPON_CARD}.make (4))
		    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
		    	player.hand.extend (create {CU_ROOM_CARD}.make (6))
		    	player.hand.extend (create {CU_WEAPON_CARD}.make (2))
		    	e_card := player.is_in_hand (n_card, t_card)
			end
	    	assert ("Wrong type of a card:", rescued)
	    	rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_is_in_hand_4
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
			rescued: BOOLEAN
		do
			t_card := 1
			n_card := -1
			if not rescued then
				create player.make ("Player1", 5)
				player.hand.extend (create {CU_WEAPON_CARD}.make (3))
		    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
		    	player.hand.extend (create {CU_ROOM_CARD}.make (2))
		    	player.hand.extend (create {CU_WEAPON_CARD}.make (1))
		    	e_card := player.is_in_hand (n_card, t_card)
			end
	    	assert ("Wrong number of card:", rescued)
	    	rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_is_in_hand_5
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
			rescued: BOOLEAN
		do
			t_card := 1
			n_card := 9
			if not rescued then
				create player.make ("Player1", 3)
				player.hand.extend (create {CU_WEAPON_CARD}.make (3))
		    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
		    	player.hand.extend (create {CU_ROOM_CARD}.make (7))
		    	player.hand.extend (create {CU_WEAPON_CARD}.make (4))
		    	e_card := player.is_in_hand (n_card, t_card)
			end
	    	assert ("Wrong number of card:", rescued)
	    	rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_is_in_hand_6
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.is_in_hand"
			testing: "user/CU"
		local
			e_card: BOOLEAN
			t_card: INTEGER
			n_card: INTEGER
			rescued: BOOLEAN
		do
			t_card := 2
			n_card := 6
			if not rescued then
				create player.make ("Player1", 1)
				player.hand.extend (create {CU_WEAPON_CARD}.make (5))
		    	player.hand.extend (create {CU_SUSPECT_CARD}.make (1))
		    	player.hand.extend (create {CU_ROOM_CARD}.make (5))
		    	player.hand.extend (create {CU_WEAPON_CARD}.make (2))
		    	e_card := player.is_in_hand (n_card, t_card)
			end
	    	assert ("Wrong number of card:", rescued)
	    	rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Test add_card_to_hand
	test_add_card_to_hand
			-- Test which add a card to the hand of the player
		note
			testing: "covers/{CU_PLAYER}.add_card_to_hand"
			testing: "user/CU"
		local
			card: CU_CARD
			count_cards: INTEGER
		do
			create player.make ("Player", 2)
			count_cards := player.hand.count
			player.add_card_to_hand (card)
			assert ("Added a card to the hand of player:", player.hand.count = count_cards + 1)
		end


		-- Test move_to_position
	test_move_to_position_0
			-- Test which moves the player to the given square
		note
			testing: "covers/{CU_PLAYER}.move_to_position"
			testing: "user/CU"
		local
			current_position: CU_COORDINATE
		do
			create player.make ("Player1", 1)
			current_position := player.position
			player.move_to_position (12, 15)
			assert ("The position of player was changed:", player.position /= current_position)
		end

	test_move_to_position_1
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.move_to_position"
			testing: "user/CU"
		local
			current_position: CU_COORDINATE
			rescued: BOOLEAN
		do
			if not rescued then
				create player.make ("Player1", 3)
				current_position := player.position
				player.move_to_position (0, 12)
			end
			assert ("The position of player is incorrect:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_move_to_position_2
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.move_to_position"
			testing: "user/CU"
		local
			current_position: CU_COORDINATE
			rescued: BOOLEAN
		do
			if not rescued then
				create player.make ("Player1", 4)
				current_position := player.position
				player.move_to_position (8, 0)
			end
			assert ("The position of player is incorrect:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Test move_to_coordinate
	test_move_to_coordinate_0
			-- This test, simulates the movement of a player to a determinate position
		note
			testing: "covers/{CU_PLAYER}.move_to_coordinate"
			testing: "user/CU"
		local
			a_coord: CU_COORDINATE
		do
			create a_coord.make (3, 16)
			create player.make ("Player1", 4)
			player.move_to_coordinate (a_coord)
			assert ("The position is not void:", player.position /= Void)
		end

	test_move_to_coordinate_1
			-- This test, tries simulate the movement of a player to a determinate position not valid
		note
			testing: "covers/{CU_PLAYER}.move_to_coordinate"
			testing: "user/CU"
		local
			a_coord: CU_COORDINATE
			rescued: BOOLEAN
		do
			if not rescued then
				create a_coord.make (0, 11)
				create player.make ("Player1", 1)
				player.move_to_coordinate (a_coord)
			end
			assert ("The position is not valid:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_move_to_coordinate_2
			-- This test, tries simulate the movement of a player to a determinate position not valid
		note
			testing: "covers/{CU_PLAYER}.move_to_coordinate"
			testing: "user/CU"
		local
			a_coord: CU_COORDINATE
			rescued: BOOLEAN
		do
			if not rescued then
				create a_coord.make (25, 7)
				create player.make ("Player1", 2)
				player.move_to_coordinate (a_coord)
			end
			assert ("The position is not valid:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_move_to_coordinate_3
			-- This test, tries simulate the movement of a player to a determinate position not valid
		note
			testing: "covers/{CU_PLAYER}.move_to_coordinate"
			testing: "user/CU"
		local
			a_coord: CU_COORDINATE
			rescued: BOOLEAN
		do
			if not rescued then
				create a_coord.make (21, 0)
				create player.make ("Player1", 5)
				player.move_to_coordinate (a_coord)
			end
			assert ("The position is not valid:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_move_to_coordinate_4
			-- This test, tries simulate the movement of a player to a determinate position not valid
		note
			testing: "covers/{CU_PLAYER}.move_to_coordinate"
			testing: "user/CU"
		local
			a_coord: CU_COORDINATE
			rescued: BOOLEAN
		do
			if not rescued then
				create a_coord.make (6, 24)
				create player.make ("Player1", 3)
				player.move_to_coordinate (a_coord)
			end
			assert ("The position is not valid:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Test set_available_moves
	test_set_available_moves_0
			-- Test which sets the available moves of player
		note
			testing: "covers/{CU_PLAYER}.set_available_moves"
			testing: "user/CU"
		local
			moves: INTEGER
		do
			create player.make ("Player", 0)
			moves := 10
			player.set_available_moves (moves)
			assert ("The available moves of player was seted:", player.available_moves = moves)
		end

	test_set_available_moves_1
			-- Test which not sets the available moves of player
		note
			testing: "covers/{CU_PLAYER}.set_available_moves"
			testing: "user/CU"
		local
			moves: INTEGER
			rescued: BOOLEAN
		do
			moves := 0
			if not rescued then
				create player.make ("Player", 0)
				player.set_available_moves (moves)
			end
			assert ("The available moves of player was seted:", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Tests method decrease_moves
	test_decrease_moves_0
			-- Test which decrease the available moves of player
		note
			testing: "covers/{CU_PLAYER}.decrease_moves"
			testing: "user/CU"
		local
			current_available_moves: INTEGER
		do
			create player.make ("Player1", 0)
			player.set_available_moves (8)
			current_available_moves := player.available_moves
			player.decrease_moves
			assert ("The available moves of player was decreased:", player.available_moves = current_available_moves - 1)
		end

	test_decrease_moves_1
			-- Test which decrease the available moves of player
		note
			testing: "covers/{CU_PLAYER}.decrease_moves"
			testing: "user/CU"
		local
			moves: INTEGER
			rescued: BOOLEAN
		do
			moves := 2
			if not rescued then
				create player.make ("Player1", 0)
				from
					player.set_available_moves (moves)
				until
					player.available_moves = 0
				loop
					player.decrease_moves
				end
				player.decrease_moves
			end
			assert ("The available moves of player can not decreased:", rescued)
			rescue
			if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Tests method wipe_moves
	test_wipe_moves
			-- Test which sets the available moves of player to 0
		note
			testing: "covers/{CU_PLAYER}.wipe_moves"
			testing: "user/CU"
		do
			create player.make ("Player1", 0)
			player.set_available_moves (12)
			player.wipe_moves
			assert ("The available moves of player was seted to 0:", player.available_moves = 0)
		end


		-- Tests method set_suggestion_room
	test_set_suggestion_room
			-- New test routine
		note
			testing: "covers/{CU_PLAYER}.set_suggestion_room"
			testing: "user/CU"
		local
			a_room: CU_ROOM
			doors: ARRAY [CU_COORDINATE]
			corridor: CU_COORDINATE
		do
			create corridor.make (3, 5)
			create doors.make_filled (corridor, 0, 16)
			create a_room.make (0, doors, a_room)
			create player.make ("Player1", 2)
			player.set_suggestion_room (a_room)
			assert ("Player last suggest updated", player.last_sugg_room = a_room)
		end
end
