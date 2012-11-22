note
    description: "[
        Eiffel tests for the B8_BOARD class.
    ]"
    author: "Dimitris Deyannis"
    date: "20/11/2012"
    revision: "0.1"
    testing: "type/manual"

class
    B8_TEST_MONOMINO

inherit
    EQA_TEST_SET

inherit{NONE}
	B8_LOGIC
		rename
			default_create as B8_default_create
		end

feature -- Test routines

	test_get_x
			-- Testing if the returned value is valid.
		note
			testing:	"covers/{B8_MONOMINO}.get_x"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			assert("The returned value of x is non negative", l_new_game.get_players[0].get_tiles[0].get_monmini[0].get_x >= 0)
		end

	tst_get_y
			-- Testing if the returned value is valid.
		note
			testing:	"covers/{B8_MONOMINO}.get_y"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			assert("The returned value of y is non negative", l_new_game.get_players[0].get_tiles[0].get_monmini[0].get_y >= 0)
		end

	test_set_x
			-- Testing the initialisation of monomino's x
		note
			testing:	"covers/{B8_MONOMINO}.set_x"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.get_players[0].get_tiles[0].get_monmini[0].set_x (10)
			assert("X is initialised to 10", l_new_game.get_players[0].get_tiles[0].get_monmini[0].get_x = 10)
		end

	test_set_y
			-- Testing the initialisation of monomino's y
		note
			testing:	"covers/{B8_MONOMINO}.set_y"
			testing:	"user/B8"
		local
			l_new_game:  B8_LOGIC
		do
			create l_new_game.make
			l_new_game.get_players[0].get_tiles[0].get_monmini[0].set_y (10)
			assert("Y is initialised to 10", l_new_game.get_players[0].get_tiles[0].get_monmini[0].get_y = 10)
		end

end
