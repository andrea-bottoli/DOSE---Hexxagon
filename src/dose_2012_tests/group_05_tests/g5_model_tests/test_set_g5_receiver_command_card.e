note
	description: "Summary description for {TEST_SET_G5_RECEIVER_COMMAND_CARD}"
	author: "Luca Falsina"
	date: "21.11.2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_SET_G5_RECEIVER_COMMAND_CARD

inherit
	EQA_TEST_SET
		redefine
			on_prepare
--			on_clean
		end

feature {NONE} -- Events

	on_prepare
		do
			rescue_activated := false
		end

--	On clean feature may be used in the further developped tests.
--	Until now it is not necessary..

--	on_clean
			-- <Precursor>
--		do
--			assert ("not_implemented", False)
--		end

feature

	test_table: G5_TABLE
			-- This empty table is a parameter for G5_RECEIVER_COMMAND_CARD object instantation

	rescue_activated: BOOLEAN
			-- This boolean checks if a rescue routine was launched after performing a certain task.


feature -- Test routines

	make_receiver_void_table
			-- This test routine checks that a rescue procedure is activated if a not
			-- valid table is used as a parameter of the "make" feature
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
		do
			if not rescue_activated then
				-- Here test_table is still not initialized so it's like receving a void parameter
				create test_receiver_command.make (test_table)
			end
			assert ("A G5_RECEIVER_COMMAND_CARD object with a void parameter generates a rescue process.", rescue_activated)
		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end
		end

	make_receiver_works_fine
			-- This routine simply check that if the "make" feature works properly, finally the
			-- created objet will have the same G5_TABLE obtaind as a parameter and the attribute current_card
			-- will be set on void (since it get be modified only through the appropriate setter feature).
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
		do
			-- We create a valid empty table..
	--		create test_table.make_game_default(3)

			create test_receiver_command.make (test_table)

			assert ("A G5_RECEIVER_COMMAND_CARD object was not correctly initialized even if the parameter was valid.",
						test_receiver_command.game_current.is_equal (test_table))
			assert ("A correctly initialized G5_RECEIVER_COMMAND_CARD object must have the attribute current_card set on VOID.",
						test_receiver_command.card_current.is_equal(void))
		end

	set_card_verifier
			-- This routine will check that the setter of the current_card attributes works properly.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.set_card_current"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
			test_card: G5_CARD
		do
			-- We create a valid empty table..
	--		create test_table.make_game_default (2)

			create test_receiver_command.make (test_table)

			create test_card.make ({G5_MACRO_CARDS}.market, 5, {G5_MACRO_CARDS}.action)

			test_receiver_command.set_card_current (test_card)

			assert("A set card was not correctly stored in the actual G5_RECEIVER_COMMAND_CARD",
					test_receiver_command.card_current.is_equal (test_card))
		end

	set_card_verifier_VOID
			-- This routine will check that the setter of the current_card raises a recuse call
			-- whena void parameter is provided.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.set_card_current"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
			test_card: G5_CARD
		do
			if not rescue_activated then
				-- We create a valid empty table..
		--		create test_table.make_game_default (4)

				create test_receiver_command.make (test_table)

				-- Here test_card is still not initialized so it's like receving a void parameter
				test_receiver_command.set_card_current (test_card)
			end
			assert ("A valid G5_RECEIVER_COMMAND_CARD object which calls the set_card_current feature with a void parameter generates a rescue process.", rescue_activated)

		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end
		end

	-- These test routines are going to evaluate if some of the action/reaction features defined in the
	-- G5_RECEIVER_COMMAND_CARD class will behave like they are expected to do. Since all the features behave
	-- in the same way but with different parameters, only a few of them will be tested.

	verify_action_adventurer_fails_0
			-- This test routine is going to evaluate the behaviour of the action_adventurer feature.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.action_adventurer"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
			test_card: G5_CARD
			phase_string: STRING
		do
			if not rescue_activated then
				-- We create a valid empty table..
		--		create test_table.make_game_default (2)

				create test_receiver_command.make (test_table)

				-- Here it is initialized the card "Market" so when the feaure will be called an exception must be raised
				create test_card.make ({G5_MACRO_CARDS}.market, 5 , {G5_MACRO_CARDS}.action)

				-- Here it is set the correct phase where the tested feature should be called
			--	phase_string := test_table.next_phase ({G5_MACRO_CARDS}.phase_action)

				test_receiver_command.set_card_current (test_card)

				test_receiver_command.action_adventurer
			end
			assert ("The set_card_current feature sets Market as the current card so a rescue process must be executed.", rescue_activated)

		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end

		end

	verify_action_adventurer_fails_1
			-- This test routine is going to evaluate the behaviour of the action_adventurer feature.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.action_adventurer"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
			test_card: G5_CARD
			phase_string: STRING
		do
			if not rescue_activated then
				-- We create a valid empty table..
			--	create test_table.make_game_default (2)

				create test_receiver_command.make (test_table)

				-- Here it is initialized the card "Market"
				create test_card.make ({G5_MACRO_CARDS}.market, 5 , {G5_MACRO_CARDS}.action)

				-- Here it is set the correct phase where the tested feature should be called
			--	phase_string := test_table.next_phase ({G5_MACRO_CARDS}.phase_action)

				-- When the feature is called, no card has been set as the current one yet so the procedure shall fail.
				test_receiver_command.action_adventurer
			end
			assert ("The set_card_current feature was never called so a rescue process must be executed since current_card is VOID.", rescue_activated)

		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end

		end

	verify_action_adventurer_fails_2
			-- This test routine is going to evaluate the behaviour of the action_adventurer feature.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.action_adventurer"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
			test_card: G5_CARD
			phase_string: STRING
		do
			if not rescue_activated then
				-- We create a valid empty table..
		--		create test_table.make_game_default (4)

				create test_receiver_command.make (test_table)

				-- Here it is initialized the card "Adventurer"
				create test_card.make ({G5_MACRO_CARDS}.adventurer, 6 , {G5_MACRO_CARDS}.action)

				-- Here it is set a wrong match phase.
			--	phase_string := test_table.next_phase ({G5_MACRO_CARDS}.phase_buy)

				-- When the feature is called, we are in the wrong phase of the match so a rescue procedure must be raised.
				test_receiver_command.action_adventurer
			end
			assert ("The action_adventurer was called in the wrong game_phase so a rescue proceure must be activated.", rescue_activated)

		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end

		end

	verify_action_adventurer_ok
			-- This test routine is going to evaluate the behaviour of the action_adventurer feature.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}.action_adventurer"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			test_receiver_command: G5_RECEIVER_COMMAND_CARD
			test_card: G5_CARD
			phase_string: STRING
			first_execution: BOOLEAN
		do
			if first_execution then
				first_execution := TRUE

				-- We create a valid empty table..
			--	create test_table.make_game (3)

				create test_receiver_command.make (test_table)

				-- Here it is initialized the card "Adventurer"
				create test_card.make ({G5_MACRO_CARDS}.adventurer, 6 , {G5_MACRO_CARDS}.action)

				-- Here it is set the correct phase where the tested feature should be called
			--	phase_string := test_table.next_phase ({G5_MACRO_CARDS}.phase_action)

				-- When the feature is called, it should not launch any rescue procedure.
				test_receiver_command.action_adventurer

				elseif rescue_activated	 then
					assert("Here the action_adventurer should not raise a recue call", false)

			end

		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end

		end

end
