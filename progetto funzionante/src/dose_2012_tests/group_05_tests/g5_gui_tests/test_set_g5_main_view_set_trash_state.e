note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_SET_TRASH_STATE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_SET_TRASH_STATE
inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	main_view: G5_MAIN_VIEW

	players_name: ARRAY [STRING]

	my_name_in_the_match: STRING

	state: ARRAY[STRING]

	on_prepare
		do
			players_name := <<"ruth", "jaime", "jesus">>
			my_name_in_the_match := "sergio"
			main_view.make (players_name, my_name_in_the_match)
			main_view.trash_state.make_empty
		end

feature -- test routines

	test_set_trash_state_0
		--test whether array trash_state update
	note
		testing: "G5_MAIN_VIEW/set_trash_state"
	do
		state:= << "T1","T2","K3","K7">>
		main_view.set_trash_state (state)
		assert (" the trash state was set correctly", main_view.trash_state.is_equal (state) and main_view.trash_state.count = 4)
	end

	test_set_trash_state_1
		--test whether array trash_state update
	note
		testing: "G5_MAIN_VIEW/set_trash_state"
	do
		state:= << "T1","T2","K3">>
		main_view.trash_state [1] := "T1"
		main_view.trash_state [2] := "T2"
		main_view.set_trash_state (state)
		assert (" the trash state was set correctly", main_view.trash_state.is_equal (state) and main_view.trash_state.count = 3)
	end

	test_set_trash_state_2
		--test negative, trash state void
	note
		testing: "G5_MAIN_VIEW/set_trash_state"
	local
		rescued: BOOLEAN
	do
		if not rescued then
		state.make_empty
		main_view.set_trash_state (state)
		end
		assert ("the argument is invalid", rescued)
	rescue
			if not rescued then
				rescued := True
				retry
			end
	end

	test_set_trash_state_3
		--test negative, amount elements array is invalid
	note
		testing: "G5_MAIN_VIEW/set_trash_state"
	local
		rescued: BOOLEAN
	do
		if not rescued then
		state:= <<"T3","T3">>
		main_view.trash_state [1] := "T3"
		main_view.trash_state [2] := "T3"
		main_view.trash_state [3] := "T2"
		main_view.set_trash_state (state)
		end
		assert ("the argument is invalid", not (state.count >= main_view.trash_state.count))
	rescue
			if not rescued then
				rescued := True
				retry
			end
	end
end
