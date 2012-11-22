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
	doors: ARRAY [CU_CORRIDOR]
	corridor: CU_CORRIDOR

feature -- Test routines

	test_players_enters_0
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			players_on: INTEGER
			player: CU_PLAYER
		do
			create corridor
			create player.make ("Player1", 0)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			players_on := room.player_on.count
			room.player_enters (player)
			assert ("Player enters", players_on + 1 = room.player_on.count)
		end

	test_players_enters_1
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.players_enters"
			testing: "user/CU"
		local
			player: CU_PLAYER
		do
			create corridor
			create player.make ("Player1", 0)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			room.player_on.put (player)
			room.player_enters (player)
			assert ("Player on", room.player_on.has (player))
		end

	test_weapon_in_0
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon: INTEGER
		do
			create corridor
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			weapon := 0
			room.weapon_in (weapon)
			assert ("Weapon in the room", room.weapons.has (weapon))
		end

	test_weapon_in_1
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.weapon_in"
			testing: "user/CU"
		local
			weapon, weapon_count: INTEGER
		do
			create corridor
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			weapon_count := room.weapons.count
			weapon := 1
			room.weapon_in (weapon)
			assert ("One more weapon", weapon_count + 1 = room.weapons.count)
		end

	test_player_exits_0
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.player_exits"
			testing: "user/CU"
		local
			players_on: INTEGER
			player: CU_PLAYER
		do
			create corridor
			create player.make ("Player1", 0)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			players_on := room.player_on.count
			room.player_exits (player)
			assert ("Player exits", players_on - 1 = room.player_on.count)
		end

	test_player_exits_1
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.player_exits"
			testing: "user/CU"
		local
			player: CU_PLAYER
		do
			create corridor
			create player.make ("Player1", 0)
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			room.player_exits (player)
			assert ("Player out", not room.player_on.has (player))
		end

	test_weapon_out_0
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.weapon_out"
			testing: "user/CU"
		local
			weapon: INTEGER
		do
			create corridor
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			weapon := 0
			room.weapon_out (weapon)
			assert ("Weapon out of the room", not room.weapons.has (weapon))
		end

	test_weapon_out_1
			-- New test routine
		note
			testing: "covers/{CU_ROOM}.weapon_out"
			testing: "user/CU"
		local
			weapon, weapon_count: INTEGER
		do
			create corridor
			create doors.make_filled (corridor, 0, 16)
			create room.make (0, doors, room)
			weapon_count := room.weapons.count
			weapon := 1
			room.weapon_out (weapon)
			assert ("Weapon is out", weapon_count - 1 = room.weapons.count)
		end

end


