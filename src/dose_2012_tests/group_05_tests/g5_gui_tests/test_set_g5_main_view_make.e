note
	description: "Summary description for {TEST_SET_G5_MAIN_VIEW_MAKE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MAIN_VIEW_MAKE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE}

	main_view: G5_MAIN_VIEW
	main_ui: MAIN_WINDOW
	players_name: ARRAY [STRING]
	my_name_in_the_match: STRING
	gui: G5_GUI

	on_prepare
		do
			create players_name.make_empty
			my_name_in_the_match:= "sergio"
		end

feature -- test routines

--	test_make_0
--		--test wheter make valid
--	note
--		testing: "G5_MAIN_VIEW/make"
--	do
--		players_name:= <<"one","sergio","two">>
--
--		create gui.make_test
--		create main_ui.make_and_launch
--		create main_view.make (players_name, my_name_in_the_match, gui, main_ui)
--		assert ("make was successful", main_view.players_name_list.has ("sergio"))
--	end
--
--	test_make_1
--		-- test positive,
--	note
--		testing: "G5_MAIN_VIEW/make"
--	do
--		create gui.make_test
--		players_name := <<"ruth","jaime","jesus">>
--		create main_ui.make_and_launch
--		main_view.make (players_name, my_name_in_the_match, gui, main_ui)
--		assert ("make was successful", players_name [4] = "sergio")
--	end

	test_make_2
		--tast negative, test whether have more than the number of players allowed
	note
		testing: "G5_MAIN_VIEW/make"
	local
		rescued: BOOLEAN
	do
		if not rescued then
			create gui.make_test
			players_name := <<"sergio","jaime","jesus", "ruth">>
			create main_ui.make_and_launch
			main_view.make (players_name,"luca", gui, main_ui)
		end
		assert ("invalid amount of players", rescued )
		rescue
			if not rescued then
				rescued:= True
				retry
			end
	end
end
