note
	description: "[
		Group 12 client class CP_TEST_PLAYER_BAG.
	]"
	author: "Silvio"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"
class
	CP_TEST_PLAYER_BAG

	inherit

	EQA_TEST_SET

feature

	test_add_insect_in_bag
	note
		testing: "covers/{CP_TEST_PLAYER_BAG}.add_insect_in_bag"
	local
		l_insect:CP_INSECT
		l_cp_player_bag :CP_PLAYER_BAG

	do
		l_cp_player_bag.add_insect_in_bag(l_insect)
		print ("tested client disconnect")
	end


	test_remove_insect_from_bag
	note
		testing: "covers/{CP_TEST_PLAYER_BAG}.remove_insect_from_bag"
	local
		l_cp_player_bag :CP_PLAYER_BAG
		l_insect:CP_INSECT
	do
		l_cp_player_bag.remove_insect_from_bag (l_insect)
		print ("tested client ")
	end

end
