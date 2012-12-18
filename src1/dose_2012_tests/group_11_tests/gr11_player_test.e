note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "10/12/2012"
	revision: "1.0"
	testing: "type/manual"

class
	GR11_PLAYER_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	player_special_card_test
			--test to check if the class deck is ok
		note
			testing:  "covers/{GR11_PLAYER}"
			testing:  "user/GR11"
		local
			test_player : GR11_PLAYER
			special_card_name:STRING

		do
			create test_player.make (create {GR11_USER_ID}, "VALKYRIE")
			special_card_name:=test_player.get_special_card.get_name_id
			assert("special card is correct", attached {GR11_SPECIAL_CARD} test_player.get_special_card)
		end

	test_draw_card
		note
			testing:  "covers/{GR11_PLAYER}"
			testing:  "user/GR11"
		local
			test_player : GR11_PLAYER
		do
			create test_player.make (create {GR11_USER_ID}, "VALKYRIE")
			test_player.draw_card_movement

			assert("contains 2 elements",test_player.get_hand_player.count=2)
		end
end

