note
    description: "[
        Eiffel tests for the B8_BOARD class.
    ]"
    author: "Dimitris Deyannis"
    date: "20/11/2012"
    revision: "0.1"
    testing: "type/manual"

class
    B8_TEST_BOARD

inherit
    EQA_TEST_SET

inherit{NONE}
	B8_LOGIC
		rename
			default_create as B8_default_create
		end

feature -- Test routines

	test_get_placed_number
			-- tests the number of the placed tiles
		note
			testing:	"covers/{B8_BOARD}.get_placed_number"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.start_game
			assert("Tiles are more than xero",l_new_game.get_board.get_placed_number > 0)
			assert("Tiles are less than 21", l_new_game.get_board.get_placed_number <= 21)
		end

	test_get_width
			-- tests the returned value of the board width
		note
			testing:	"covers/{B8_BOARD}.get_width"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.start_game
			assert("Width is 20", l_new_game.get_board.get_width = 0)
		end

	test_set_width
			-- tests the initialisation of the board width
		note
			testing:	"covers/{B8_BOARD}.set_width"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.start_game
			l_new_game.board.set_width (20)
			assert("width is correctly initialised", l_new_game.get_board.get_width = 20)
		end

	test_get_height
			-- tests the returned value of the board height
		note
			testing:	"covers/{B8_BOARD}.get_height"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.start_game
			assert("Height is 20", l_new_game.get_board.get_height = 20)
		end

	test_set_height
			-- tests theinitialisation of the board height
		note
			testing:	"covers/{B8_BOARD}.set_height"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.start_game
			l_new_game.board.set_height(20)
			assert("Height is correctly initialised", l_new_game.get_board.get_height = 20)
		end

end
