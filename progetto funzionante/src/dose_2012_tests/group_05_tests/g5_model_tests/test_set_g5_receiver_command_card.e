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
			create test_table.make_game_table

			create test_receiver_command.make (test_table)

			assert ("A G5_RECEIVER_COMMAND_CARD object was not correctly initialized even if the parameter was valid.",
						test_receiver_command.game_current.is_equal (test_table))
			assert ("A correctly initialized G5_RECEIVER_COMMAND_CARD object must have the attribute current_card set on VOID.",
						test_receiver_command.card_current.is_equal(void))
		end

	set_card_verifier
			-- This routine will check that the setter of the current_card attribtes works properly.
			-- This test can't be written so far since the method is still not completely defined in the APIs.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		do

		end

	verify_action_reation_X
			-- This test routine is going to evaluate if some of the action/reaction features defined in the
			-- G5_RECEIVER_COMMAND_CARD class will behave like they are expected to do.
		note
			testing:  "covers/{G5_RECEIVER_COMMAND_CARD}"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		do

		end

end
