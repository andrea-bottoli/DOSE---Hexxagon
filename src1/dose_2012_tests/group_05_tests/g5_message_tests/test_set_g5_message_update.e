note
	description: "Summary description for {TEST_SET_G5_MESSAGE_UPDATE}."
	author: "Team Rio Cuarto 4"
	date: "$18/11/2012$"
	revision: "$Revision: 1 $"

class
	TEST_SET_G5_MESSAGE_UPDATE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	rescued: BOOLEAN

	a_source: STRING = "SERVER"

	some_targets: ARRAY [STRING]

	an_action: STRING = "update_state"

	a_game_state: HASH_TABLE [INTEGER, STRING]

	a_supply_state: HASH_TABLE [INTEGER, STRING]

	message_update: G5_MESSAGE_UPDATE

	on_prepare
		local
			i: INTEGER
		do
			some_targets := <<"Luca", "Gabriele", "Bino">>
			create a_game_state.make (10)
			create a_supply_state.make (10)
			from
				i := 0
			until
				i > 4
			loop
				a_game_state.put (10, "actions")
				i := i + 1
			end
			from
				i := 0
			until
				i > 4
			loop
				a_supply_state.put (10, "K4")
				i := i + 1
			end
		end

feature -- Test negative routines

	test_make_0
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make source entry empty
		do
			if not rescued then
				create message_update.make ("", some_targets, an_action, a_game_state, a_supply_state)
			end
			assert (" make raised problem whit source entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_1
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make some_targets entry empty
		local
			some_targets_empty: ARRAY [STRING]
		do
			if not rescued then
				create message_update.make (a_source, some_targets_empty, an_action, a_game_state, a_supply_state)
			end
			assert (" make raised problem whit some_targets entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_2
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make an_action entry empty
		do
			if not rescued then
				create message_update.make (a_source, some_targets, "", a_game_state, a_supply_state)
			end
			assert (" make raised problem whit an_action entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_3
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make an_action/="update_state" and an_action=/"update_supply"
		do
			if not rescued then
				create message_update.make ("string_error", some_targets, an_action, a_game_state, a_supply_state)
			end
			assert (" make raised problem whit accepted_action_for_update_message", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_4
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make a_game_state entry empty
		local
			game_state: HASH_TABLE [INTEGER, STRING]
		do
			if not rescued then
				create message_update.make (a_source, some_targets, an_action, game_state, a_supply_state)
			end
			assert (" make raised problem whit game_state entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_5
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make   entry empty
		local
			supply_state: HASH_TABLE [INTEGER, STRING]
		do
			if not rescued then
				create message_update.make (a_source, some_targets, an_action, a_game_state, supply_state)
			end
			assert (" make raised problem whit supply_state entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_6
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make mutual_exclusion_game_and_supply_1
		local
			supply_state: HASH_TABLE [INTEGER, STRING]
		do
			if not rescued then
				create message_update.make (a_source, some_targets, an_action, a_game_state, supply_state)
			end
			assert (" make raised problem whit mutual_exclusion_game_and_supply_1", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_7
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test negative for make mutual_exclusion_game_and_supply_2
		local
			supply_state: HASH_TABLE [INTEGER, STRING]
		do
			if not rescued then
				create message_update.make (a_source, some_targets, "update_supply", a_game_state, supply_state)
			end
			assert (" make raised problem whit mutual_exclusion_game_and_supply_2", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

feature -- Test routines

	test_make_8
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test make attributes_equal_to_arguments
		do
			create message_update.make (a_source, some_targets, an_action, a_game_state, void)
			rescued := message_update.game_state = a_game_state
			assert ("correct make ", rescued)
		end

	test_make_9
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test make attributes_equal_to_arguments
		do
			-- Since the string an_action contains "update_state", I can'use it with game_state set "VOID"
			-- because with this choice I break the precondition about mutual exclusion
			create message_update.make (a_source, some_targets, "update_supply", void, a_supply_state)
			rescued := message_update.supply_state = a_supply_state
			assert ("correct make ", rescued)
		end

	test_make_10
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test make attributes_equal_to_arguments
		do
			-- Since the string an_action contains "update_state", I can'use it with game_state set "VOID"
			-- because with this choice I break the precondition about mutual exclusion
			create message_update.make (a_source, some_targets, "update_supply", void, a_supply_state)
			rescued := message_update.source = a_source
			assert ("correct make ", rescued)
		end

	test_make_11
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test make attributes_equal_to_arguments
		do
			create message_update.make (a_source, some_targets, an_action, a_game_state, void)
			rescued := message_update.targets = some_targets
			assert ("correct make ", rescued)
		end

	test_make_12
		note
			testing: "G5_POP_UP_MESSAGE/make"
			-- test make attributes_equal_to_arguments
		do
			create message_update.make (a_source, some_targets, an_action, a_game_state, void)
			rescued := message_update.action = an_action
			assert ("correct make ", rescued)
		end

end
