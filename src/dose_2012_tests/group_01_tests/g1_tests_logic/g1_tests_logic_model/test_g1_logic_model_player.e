note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_PLAYER

inherit

	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	test_make
		note
			testing: "covers/{G1_PLAYER}.make"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
		do
			create player_t.make (4, "Player")
			assert ("Money available is 1500, Jail cards are 0, Properties are 0", player_t.money.is_equal (1500) and player_t.jail_cards.is_equal (0) and player_t.properties.count.is_equal (0))
		end

	test_get_id_player
		note
			testing: "covers/{G1_PLAYER}.get_id_player"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
			id: INTEGER
		do
			create player_t.make (4, "Player")
			id := player_t.get_id_player ()
			assert ("Id is 4", id.is_equal (4))
		end

	test_set_id_player
		note
			testing: "covers/{G1_PLAYER}.set_id_player"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
		do
			create player_t.make (4, "Player")
			player_t.set_id_player (1)
			assert ("Id is 1", player_t.get_id_player.is_equal (1))
		end

	test_increment_jail_cards
		note
			testing: "covers/{G1_PLAYER}.increment_jail_cards"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
		do
			create player_t.make (4, "Player")
			player_t.increment_jail_cards
			assert ("Jail cards are 1", player_t.jail_cards.is_equal (1))
			player_t.increment_jail_cards
			assert ("Jail cards are 2", player_t.jail_cards.is_equal (2))
		end

	test_decrement_jail_cards
		note
			testing: "covers/{G1_PLAYER}.decrement_jail_cards"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
		do
			create player_t.make (4, "Player")
			player_t.increment_jail_cards
			player_t.decrement_jail_cards
			assert ("Jail cards are 0", player_t.jail_cards.is_equal (0))
		end

	test_increment_money
		note
			testing: "covers/{G1_PLAYER}.increment_money"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
		do
			create player_t.make (4, "Player")
			player_t.increment_money (100)
			assert ("Money is 1600", player_t.money.is_equal (1600))
		end

	test_decrement_money
		note
			testing: "covers/{G1_PLAYER}.decrement_money"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
		do
			create player_t.make (4, "Player")
			player_t.decrement_money (100)
			assert ("Money is 1400", player_t.money.is_equal (1400))
		end

	test_add_property
		note
			testing: "covers/{G1_PLAYER}.add_property"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
			deed_t: G1_DEED
		do
			create player_t.make (4, "Player")
			create deed_t.make_deed (100, 2, "Deed1")
			player_t.add_property (deed_t)
			assert ("Properties are 2", player_t.properties.count.is_equal (1))
		end

	test_delete_property
		note
			testing: "covers/{G1_PLAYER}.delete_property"
			testing: "user/G1"
		local
			player_t: G1_PLAYER
			deed_t: G1_DEED
		do
			create player_t.make (4, "Player")
			create deed_t.make_deed (100, 2, "Deed2")
			player_t.add_property (deed_t)
			player_t.delete_property (deed_t)
			assert ("Properties are 1", player_t.properties.count.is_equal (0))
		end

end
