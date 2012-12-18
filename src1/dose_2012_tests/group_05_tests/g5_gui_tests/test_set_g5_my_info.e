note
	description: "Summary description for {TEST_SET_G5_MY_INFO}."
	author: "Team Rio Cuarto 4"
	date: "$18/11/2012$"
	revision: "$Revision: 1 $"

class
	TEST_SET_G5_MY_INFO

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	rescued: BOOLEAN

	player_info: G5_PLAYER_INFO

	zoomed_box: G5_ZOOMED_CARD_BOX

	set_entry: ARRAY [STRING]

	on_prepare
		do
			create zoomed_box.make
			create player_info.make ("player1","1",zoomed_box)
		end

feature -- Test routines

-- ** NOTA ** SISTEMARE IL TEST CON I NUOVI CAMBIAMENTI
--	test_set_cards_in_the_hand_0
--		note
--			testing: "G5_MY_INFO/set_cards_in_the_hand"
--			-- test negative for set_cards_in_the_hand
--		do
--			set_entry := <<>>;
--			if not rescued then
--				player_info.set_cards_in_the_hand (set_entry)
--			end
--			assert (" set_cards_in_the_hand raised problem whit entry empty", rescued)
--		rescue
--			if not rescued then
--				rescued := True
--				retry
--			end
--		end

-- ** NOTA ** SISTEMARE IL TEST CON I NUOVI CAMBIAMENTI
--	test_set_cards_in_the_hand_1
--		note
--			testing: "G5_MY_INFO/set_cards_in_the_hand"
			-- test set_cards_in_the_hand
--		local
--			i: INTEGER
--		do
--			rescued := True
--			set_entry := <<"K1", "K4", "K11", "T3", "V3">>
		--	player_info.set_cards_in_the_hand (set_entry)
--			from
--				i := 1
--			until
--				i > set_entry.count
--			loop
--				if (set_entry [i] /= player_info.cards_in_the_hand [i]) then
--					rescued := False
--				end
--				i := i + 1
--			end
--			assert ("correct set_cards_in_the_hand", rescued)
--		end

end
