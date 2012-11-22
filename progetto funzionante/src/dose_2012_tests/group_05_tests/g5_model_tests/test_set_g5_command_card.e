note
	description: "Summary description for {TEST_SET_G5_COMMAND_CARD}."
	author: "Luca Falsina"
	date: "20.11.2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_SET_G5_COMMAND_CARD

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Events

	on_prepare
		do
			rescue_activated := false
		end

feature

	empty_table: G5_TABLE
			-- This empty table is a parameter for G5_RECEIVER_COMMAND_CARD object

	receiver_command: G5_RECEIVER_COMMAND_CARD
			-- This instance is used to test the "make" feature of different objects inheriting
			-- from G5_ABSTRACT_COMMAND_CARD

	rescue_activated: BOOLEAN
			-- This boolean checks if a rescue routine was launched after performing a certain task.

feature -- Test routines

	test_make_void_curse_card
			-- This routine checks that a rescue process is started by creating a new G5_CURSE
			-- object with a void G5_RECEIVER_COMMAND_CARD parameter
		note
			testing:  "covers/{G5_ABSTRACT_COMMAND_CARD}.make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_G5_curse: G5_CURSE
		do
			if not rescue_activated then
				-- Here receiver_command is still not initialized so it's like receving a void parameter
				create a_G5_curse.make (receiver_command)
			end
			assert ("A G5_CURSE object with a void parameter generates a rescue process.", rescue_activated)
		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end
		end


	test_make_void_kingdom_card
			-- This routine checks that a rescue process is started by creating a new G5_LABORATORY
			-- object with a still not initialized G5_RECEIVER_COMMAND_CARD parameter
		note
			testing:  "covers/{G5_ABSTRACT_COMMAND_CARD}.make"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_G5_laboratory: G5_LABORATORY
		do
			if not rescue_activated then
				-- Here receiver_command is still not initialized so it's like receving a void parameter
				create a_G5_laboratory.make (receiver_command)
			end
			assert ("A G5_LABORATORY object with a void parameter generates a rescue process.", rescue_activated)
		rescue
			if not rescue_activated then
				rescue_activated := true
				retry
			end
		end


	test_make_works_fine
			-- This routine checks that a coorect instance of G5_LABORATOORY is created if a valid
			-- G5_RECEIVER_COMMAND_CARD parameter is provided
		note
			testing:  "covers/{G5_ABSTRACT_COMMAND_CARD}"
			testing: "user/G5" -- this is the tag based on the group-prefix for our tests
		local
			a_G5_laboratory: G5_LABORATORY
		do
			-- We create a valid empty table..
			create empty_table.make_game_table
			-- and also a correct receiver_command object.
			create receiver_command.make (empty_table)

			create a_G5_laboratory.make (receiver_command)

			assert ("A G5_LABRATORY object was not correctly initialized even if the parameter was valid.",
						a_G5_laboratory.receiver_cards.is_equal (receiver_command))
		end
end


