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
	players_name: ARRAY [STRING]
	my_name_in_the_match: STRING

	on_prepare
		do
			players_name.make_empty
			my_name_in_the_match:= "sergio"
		end

feature -- test routines

	test_make_0
		--test wheter make valid
	note
		testing: "G5_MAIN_VIEW/make"
	do
		main_view.make (players_name, my_name_in_the_match )
		assert ("make was successful", players_name [1] = "sergio")
	end

	test_make_1
		-- test positive,
	note
		testing: "G5_MAIN_VIEW/make"
	do
		players_name := <<"ruth","jaime","jesus">>
		main_view.make (players_name, my_name_in_the_match)
		assert ("make was successful", players_name [4] = "sergio")
	end

	test_make_2
		--tast negative, test whether have more than the number of players allowed
	note
		testing: "G5_MAIN_VIEW/make"
	local
		rescued: BOOLEAN
	do
		if not rescued then
			players_name := <<"sergio","jaime","jesus", "ruth">>
			main_view.make (players_name,"luca")
		end
		assert ("invalid amount of players", rescued )
		rescue
			if not rescued then
				rescued:= True
				retry
			end
	end
end
