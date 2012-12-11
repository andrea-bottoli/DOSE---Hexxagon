note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$20/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_POP_UP_THIEF_MAKE

inherit

	EQA_TEST_SET

feature -- Elements needed to the test

	class_test: G5_POP_UP_THIEF
		-- Instance to the class that contains the command to test

	owner_player: STRING
		-- First parameter of the command to test

	the_revealed_cards: HASH_TABLE[STRING,STRING]
		-- Second parameter of the command to test

feature -- Test positive

	make0
		-- make("JESUS",[["T3","C1"],["V2","K4"],["T1","T2"]])
		note
			testing: "G5_POP_UP_THIEF/.make"
		do
			owner_player := "JESUS"
			the_revealed_cards.make (3)
			the_revealed_cards.put ("T3","C1")
			the_revealed_cards.put ("V2","K4")
			the_revealed_cards.put ("T1","T2")
			class_test.make (owner_player,the_revealed_cards)
			assert ("make was successful", TRUE)
		end

feature -- Test negative

	make1
		-- make("JESUS",[])
		note
			testing: "G5_POP_UP_THIEF/.make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				owner_player := "JESUS"
				the_revealed_cards.make (3)
				class_test.make (owner_player,the_revealed_cards)
			end
			assert ("make raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
