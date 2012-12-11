note
	description: "Summary description for {TEST_SET_G5_POP_UP_REVEAL}."
	author: "Team RioCuarto4- Vilma Ruth Tito"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_POP_UP_REVEAL

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

feature -- Test routines

	test_set_pop_up_reveal_0
	-- the length of the names of the players must be greater than 1
	local
		pop_up_reveal: G5_POP_UP_REVEAL
		list_cards: ARRAY[STRING]
		name_player: STRING
	do
		create list_cards.make_empty ()
		if not rescued then
			name_player:= ""
		end
		create pop_up_reveal.make (name_player, list_cards)
		rescued:= pop_up_reveal.player.count > 0
		assert("the player's name is correct",rescued)
	rescue
		if not rescued then
			rescued:= true
			name_player:= "my_name"
			retry
		end
	end


	test_set_pop_up_reveal_1
	-- checks that the list is not empty
	local
		pop_up_reveal: G5_POP_UP_REVEAL
		list_cards: ARRAY[STRING]
	do
		if rescued then
			create list_cards.make_empty ()
		end

		create pop_up_reveal.make ("my_name", list_cards)
		rescued:= list_cards.count > 0
		assert("card list is not empty",not rescued)
	rescue
		if not rescued then
			rescued:= true
			retry
		end
	end
end
