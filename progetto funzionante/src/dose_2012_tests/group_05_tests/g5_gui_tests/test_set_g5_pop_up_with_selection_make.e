note
	description: "Summary description for {TEST_SET_G5_POP_UP_WITH_SELECTION_MAKE}."
	author: "Team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_POP_UP_WITH_SELECTION_MAKE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} --elemants for test

	place: STRING

	list_of_cards: ARRAY [STRING]

	min: INTEGER

	max: INTEGER

	selection: G5_POP_UP_WITH_SELECTION

feature --initialization

	on_prepare
		do
			list_of_cards.make_empty
			min := 0
			max := 0
			place := VOID
		end

feature -- Test positive

	test_make_0
			--test whether make is successful for place "HAND"
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		do
			list_of_cards [1] := "T1"
			list_of_cards [2] := "T1"
			list_of_cards [3] := "T1"
			list_of_cards [4] := "T1"
			list_of_cards [5] := "K5"
			min := 1
			max := 2
			place := "HAND"
			selection.make (place, list_of_cards, min, max)
			assert ("make was made successful", selection.list_of_cards.is_equal (list_of_cards) and (selection.min_selection.is_equal (min)) and selection.max_selection.is_equal (max) and selection.place.is_equal (place))
		end

	test_make_1
			--test whether make is successful for place "PLAY"
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		do
			list_of_cards [1] := "T1"
			list_of_cards [2] := "T2"
			list_of_cards [3] := "T3"
			list_of_cards [4] := "K10"
			list_of_cards [5] := "K5"
			list_of_cards [6] := "V1"
			list_of_cards [7] := "V2"
			list_of_cards [8] := "K3"
			list_of_cards [9] := "K7"
			list_of_cards [10] := "K11"
			min := 1
			max := 4
			place := "PLAY"
			selection.make (place, list_of_cards, min, max)
			assert ("make was made successful", selection.list_of_cards.is_equal (list_of_cards) and (selection.min_selection.is_equal (min)) and selection.max_selection.is_equal (max) and selection.place.is_equal (place))
		end

feature -- test negative

	test_make_2
			--test for argument list_of_card invalid
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				min := 1
				max := 2
				place := "HAND"
				selection.make (place, list_of_cards, min, max)
			end
			assert ("array list of card is empty raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_3
			--test for arguments min and max invalid
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				list_of_cards [1] := "T1"
				list_of_cards [2] := "T2"
				list_of_cards [3] := "T3"
				list_of_cards [4] := "K10"
				list_of_cards [5] := "K5"
				list_of_cards [6] := "V1"
				list_of_cards [7] := "V2"
				list_of_cards [8] := "K3"
				list_of_cards [9] := "K7"
				list_of_cards [10] := "K11"
				min := -3
				max := -1
				place := "PLAY"
				selection.make (place, list_of_cards, min, max)
			end
			assert ("arguments min and max raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_4
			--test for arguments min equal max
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				list_of_cards [1] := "T1"
				list_of_cards [2] := "T2"
				list_of_cards [3] := "T3"
				list_of_cards [4] := "K10"
				list_of_cards [5] := "K5"
				list_of_cards [6] := "V1"
				list_of_cards [7] := "V2"
				list_of_cards [8] := "K3"
				list_of_cards [9] := "K7"
				list_of_cards [10] := "K11"
				min := 1
				max := 1
				place := "PLAY"
				selection.make (place, list_of_cards, min, max)
			end
			assert ("arguments min and max are equal raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_5
			--test for arguments place invalid
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				list_of_cards [1] := "T1"
				list_of_cards [2] := "T2"
				list_of_cards [3] := "T3"
				list_of_cards [4] := "K10"
				list_of_cards [5] := "K5"
				list_of_cards [6] := "V1"
				list_of_cards [7] := "V2"
				list_of_cards [8] := "K3"
				list_of_cards [9] := "K7"
				list_of_cards [10] := "K11"
				min := 1
				max := 5
				place := "hand"
				selection.make (place, list_of_cards, min, max)
			end
			assert ("arguments place raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_6
			--test for amount cards > 17 in the place "PLAY"invalid
		note
			testing: "G5_POP_UP_WITH_SELECTION/ make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				list_of_cards [1] := "T1"
				list_of_cards [2] := "T2"
				list_of_cards [3] := "T3"
				list_of_cards [4] := "K10"
				list_of_cards [5] := "K5"
				list_of_cards [6] := "V1"
				list_of_cards [7] := "V2"
				list_of_cards [8] := "K3"
				list_of_cards [9] := "K7"
				list_of_cards [10] := "K11"
				list_of_cards [11] := "K14"
				list_of_cards [12] := "K15"
				list_of_cards [13] := "K17"
				list_of_cards [14] := "K19"
				list_of_cards [15] := "K20"
				list_of_cards [16] := "K21"
				list_of_cards [17] := "K22"
				list_of_cards [18] := "K23"
				list_of_cards [19] := "K3"
				list_of_cards [20] := "K11"
				min := 2
				max := 3
				place := "PLAY"
				selection.make (place, list_of_cards, min, max)
			end
			assert ("amount cards in the list raised problem", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
