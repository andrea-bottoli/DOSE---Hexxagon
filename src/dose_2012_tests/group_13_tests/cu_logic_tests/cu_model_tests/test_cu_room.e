note
	description: "[
		Eiffel tests that can be executed by testing tool.
		The test are for the CU_ROOM class of the Cluedo game.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_CU_ROOM

inherit
	EQA_TEST_SET

feature
	room: CU_ROOM
	doors: ARRAY [CU_COORDINATE]
	corridor: CU_COORDINATE

feature -- Test routines

		-- Tests methods player_enters and insert pawn
	test_players_enters_0
			-- In this test class, inserts an existing pawn (player) in a room
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			players_on: INTEGER
			player: CU_PLAYER
		do
			create corridor.make (3, 5)
			create player.make ("Player1", 0)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			players_on := room.player_on.count
			room.player_enters (player) -- In this method, inserts the pawn on the room
			assert ("Player enters:", (players_on + 1 = room.player_on.count) and (room.player_on.has (player)) and room.pawns.has (player.pawn))
		end

	test_players_enters_1
			-- In this test class, inserts an existing pawn (player) in a room
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			players_on: INTEGER
			player: CU_PLAYER
		do
			create corridor.make (3, 5)
			create player.make ("Player1", 5)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			players_on := room.player_on.count
			room.player_enters (player) -- In this method, inserts the pawn on the room
			assert ("Player enters:", (players_on + 1 = room.player_on.count) and room.pawns.has (player.pawn))
		end

	test_players_enters_2
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			player: CU_PLAYER
			rescued: BOOLEAN
		do
			if not rescued then
				create corridor.make (3, 5)
				create player.make ("Player1", 0)
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
--				room.player_enters (player)
					-- Inserts the player in the room
				room.player_on.put (player)
					-- Inserts the player in the room
				room.player_enters (player)
			end
			assert ("Player exists in the room:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_players_enters_3
			-- In this test class, tries to insert an unexisting pawn (player) in a room
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			player: CU_PLAYER
			rescued: BOOLEAN
		do
			if not rescued then
				create corridor.make (3, 5)
				create player.make ("Player1", 6)
					-- The pawn is not exist
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
				room.player_enters (player)
			end
			assert ("Pawn unexisting to insert in the room:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_players_enters_4
			-- In this test class, tries to insert an unexisting pawn (player) in a room
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			player: CU_PLAYER
			rescued: BOOLEAN
		do
			if not rescued then
				create corridor.make (3, 5)
				create player.make ("Player1", -1)
					-- The pawn is not exist
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
				room.player_enters (player)
			end
			assert ("Pawn unexisting to insert in the room:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Tests method weapon_in
	test_weapon_in_0
			-- In this test class, inserts an existing weapon in a room
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon: INTEGER
			c_weapons: INTEGER
		do
			weapon := 0
			create corridor.make (3, 5)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			c_weapons := room.weapons.count
			room.weapon_in (weapon)
			assert ("Weapon in the room", (room.weapons.has (weapon)) and (c_weapons + 1 = room.weapons.count))
		end

	test_weapon_in_1
			-- In this test class, inserts an existing weapon in a room
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon: INTEGER
			c_weapons: INTEGER
		do
			weapon := 5
			create corridor.make (3, 5)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			c_weapons := room.weapons.count
			room.weapon_in (weapon)
			assert ("Weapon in the room", (room.weapons.has (weapon)) and (c_weapons + 1 = room.weapons.count))
		end

	test_weapon_in_2
			-- In this test class, inserts two existing weapons in a room
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			a_weapon: INTEGER
			b_weapon: INTEGER
			c_weapons: INTEGER
		do
			a_weapon := 3
			b_weapon := 1
			create corridor.make (3, 5)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			c_weapons := room.weapons.count
			room.weapon_in (a_weapon)
			room.weapon_in (b_weapon)
			assert ("Different weapons in the room:", (a_weapon /= b_weapon) and (c_weapons + 2 = room.weapons.count))
		end

	test_weapon_in_3
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon: INTEGER
			rescued: BOOLEAN
		do
			weapon := 1
			if not rescued then
				create corridor.make (3, 5)
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
--				room.weapon_in (weapon)
					-- Inserts the weapon in the room
				room.weapons.put (weapon)
					-- Inserts the weapon in the room
				room.weapon_in (weapon)
			end
			assert ("Weapon exists in the room:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_weapon_in_4
			-- In this test class, tries to insert an unexisting weapon in a room
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon: INTEGER
			rescued: BOOLEAN
		do
			weapon := -1
			if not rescued then
				create corridor.make (3, 5)
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
				room.weapon_in (weapon)
			end
			assert ("Weapon unexisting to insert in the room:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end

	test_weapon_in_5
			-- In this test class, tries to insert an unexisting weapon in a room
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon: INTEGER
			rescued: BOOLEAN
		do
			weapon := 6
			if not rescued then
				create corridor.make (3, 5)
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
				room.weapon_in (weapon)
			end
			assert ("Weapon unexisting to insert in the room:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Tests methods player_exits and remove_pawns
	test_player_exits_0
			-- This test, simulates the exit of a player of a room.
		note
			testing: "covers/{CU_ROOM}.player_exits"
			testing: "user/CU"
		local
			players_on: INTEGER
			player: CU_PLAYER
		do
			create corridor.make (3, 5)
			create player.make ("Player1", 4)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			room.player_enters (player)
			players_on := room.player_on.count
			room.player_exits (player)
			assert ("Player exits", (players_on - 1 = room.player_on.count) and not (room.player_on.has (player)) and not (room.pawns.has (player.pawn)))
		end

	test_player_exits_1
			-- This routine, tries simulate the exit of unexisting pawn (player) in a room.
		note
			testing: "covers/{CU_ROOM}.player_exits"
			testing: "user/CU"
		local
			player: CU_PLAYER
			rescued: BOOLEAN
		do
			if not rescued then
				create corridor.make (3, 5)
				create player.make ("Player1", 2)
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
				room.player_exits (player)
			end
			assert ("Player not exits:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end


		-- Tests method weapon_out
	test_weapon_out_0
			-- This test, simulates the exit of a weapon of a room.
		note
			testing: "covers/{CU_ROOM}.weapon_out"
			testing: "user/CU"
		local
			weapon: INTEGER
			c_weapons: INTEGER
		do
			weapon := 3
			create corridor.make (3, 5)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			room.weapon_in (weapon)
			c_weapons := room.weapons.count
			room.weapon_out (weapon)
			assert ("Weapon out of the room:", (not room.weapons.has (weapon)) and (c_weapons - 1 = room.weapons.count))
		end

	test_weapon_out_1
			-- This routine, tries simulate the exit of unexisting weapon in a room.
		note
			testing: "covers/{CU_ROOM}.weapon_out"
			testing: "user/CU"
		local
			weapon: INTEGER
			rescued: BOOLEAN
		do
			weapon := 1
			if not rescued then
				create corridor.make (3, 5)
				create doors.make_filled (corridor, 0, 16)
				create room.make (0, doors, room)
				room.weapon_out (weapon)
			end
			assert ("Weapon is not out:", rescued)
			rescue
				if (not rescued) then
				rescued := True
				retry
			end
		end
end
