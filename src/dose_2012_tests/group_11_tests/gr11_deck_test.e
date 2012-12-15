note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "30/11/2012"
	revision: "1.0"
	testing: "type/manual"

class
	GR11_DECK_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	deck_test
			--test to check if the class deck is ok
		note
			testing:  "covers/{GR11_DECK}"
			testing:  "user/GR11"
		local
			test_deck : GR11_DECK
			--file:STRING
			--input_file: PLAIN_TEXT_FILE
		do
			--file:="valkyrie.txt"
			--create input_file.make_open_read (file)
			--assert("file is open", input_file.is_open_read)
			--input_file.close
			--assert("file is closed",input_file.is_closed)

			create test_deck.make_deck_player ("VALKYRIE")
			assert("deck is ok",test_deck.get_card.get_movement_fighter=3)


		end

end
