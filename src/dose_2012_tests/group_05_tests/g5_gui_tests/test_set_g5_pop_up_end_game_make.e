note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$20/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_POP_UP_END_GAME_MAKE

inherit

	EQA_TEST_SET

feature -- Elements needed to the test

	class_test: G5_POP_UP_END_GAME
		-- Instance to the class that contains the command to test

	the_scores: HASH_TABLE[INTEGER, STRING]
		-- Parameter of the command to test

feature -- Test positive

--	make0
--		-- make([[35,"JESUS"],[38,"JAIME"],[26,"SERGIO"]])
--		note
--			testing: "G5_POP_UP_END_GAME/.make"
--		do
--			create the_scores.make (3)
--			the_scores.put (35,"JESUS")
--			the_scores.put (38,"JAIME")
--			the_scores.put (26,"SERGIO")
--			create class_test.make (the_scores)
--			assert ("make was successful", TRUE)
--		end

feature -- Test negative

	put_card1
		-- make([1,VOID])
		note
			testing: "G5_POP_UP_END_GAME/.make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				the_scores.make (1)
				the_scores.put (1,VOID)
				class_test.make (the_scores, void)
			end
			assert ("make raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end
end
