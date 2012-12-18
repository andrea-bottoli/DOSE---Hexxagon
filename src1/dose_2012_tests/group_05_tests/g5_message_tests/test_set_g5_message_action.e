note
	description: "Summary description for {TEST_SET_G5_MESSAGE_ACTION}."
	author: "Team RioCuarto4 - Vilma Ruth Tito"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MESSAGE_ACTION

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

feature -- Test routines

	test_set_message_action_0
	--verifies that the empty string is not a valid action
	local
		msg_action: G5_MESSAGE_ACTION
		a_target:ARRAY[STRING]
		a_cards:ARRAY[STRING]
		moat_qst:BOOLEAN
		an_act:STRING
	do
		if not rescued then
			an_act:=""
		end
		create a_cards.make_filled ("K7",1,10)
		create a_target.make_filled ("PlayerTest",1,4)
		create msg_action.make("SERVER",a_target, an_act, a_cards,2, 10, moat_qst)
		assert("action valid",rescued)
	rescue
		if not rescued then
			an_act:="reveal"
			rescued:=true
			retry
		end
	end

	test_set_message_action_1
	-- check that arrangements are passed as non-null parameter
	local
		msg_action: G5_MESSAGE_ACTION
		a_target:ARRAY[STRING]
		a_cards:ARRAY[STRING]
		moat_qst:BOOLEAN
		long:INTEGER

	do
		long := 4
		create msg_action.make("SERVER",a_target, "reveal", a_cards,2, long, moat_qst)
		assert("list of array validated",rescued)
	rescue
		if not rescued then
			create a_cards.make_filled("K12",1, long)
			create a_target.make_filled("Luca",1, long)
			rescued:=true
			retry
		end
	end


	test_set_message_action_2
	-- verifies that instances in an_cards id is valid.
	local
		msg_action: G5_MESSAGE_ACTION
		a_target:ARRAY[STRING]
		a_cards:ARRAY[STRING]
		moat_qst:BOOLEAN
		long:INTEGER

	do
		long := 4
		create a_target.make_filled("Luca",1, long)
		if not rescued then
			create a_cards.make_empty
			-- The Identifier below is not valid..
			a_cards.force ("h",1)
			a_cards.force ("T1",2)
			a_cards.force ("K9",3)
			a_cards.force ("M", 4)
		end
		create msg_action.make("SERVER",a_target, "reveal", a_cards,2, long, moat_qst)
		assert("an_cards instances are valid",rescued)
	rescue
		if not rescued then
			a_cards.put ("C1",1)
			rescued:=true
			retry
		end
	end
end
