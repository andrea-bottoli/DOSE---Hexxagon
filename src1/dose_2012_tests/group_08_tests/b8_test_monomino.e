note
    description: "[
        Eiffel tests for the B8_BOARD class.
    ]"
    author: "Dimitris Deyannis,Andrea Braschi"
    date: "04/12/2012"
    revision: "1.0"
    testing: "type/manual"

class
    B8_TEST_MONOMINO

inherit
    EQA_TEST_SET

feature -- Test routines

	test_get_x
			-- Testing if the returned value is valid.
		note
			testing:	"covers/{B8_MONOMINO}.get_x"
			testing:	"user/B8"
		local
			l_new_monomino: B8_MONOMINO
		do
			create l_new_monomino.make(0,0)
			assert("The returned value of x zero", l_new_monomino.get_x = 0)
		end

	tst_get_y
			-- Testing if the returned value is valid.
		note
			testing:	"covers/{B8_MONOMINO}.get_y"
			testing:	"user/B8"
		local
			l_new_monomino: B8_MONOMINO
		do
			create l_new_monomino.make(0,0)
			assert("The returned value of y is zero", l_new_monomino.get_y = 0)
		end

	test_set_x
			-- Testing the initialisation of monomino's x
		note
			testing:	"covers/{B8_MONOMINO}.set_x"
			testing:	"user/B8"
		local
			l_new_monomino: B8_MONOMINO
		do
			create l_new_monomino.make(0,0)
			l_new_monomino.set_x (10)
			assert("X is initialised to 10", l_new_monomino.get_x = 10)
		end

	test_set_y
			-- Testing the initialisation of monomino's y
		note
			testing:	"covers/{B8_MONOMINO}.set_y"
			testing:	"user/B8"
		local
			l_new_monomino: B8_MONOMINO
		do
			create l_new_monomino.make(0,0)
			l_new_monomino.set_y (10)
			assert("Y is initialised to 10", l_new_monomino.get_y = 10)
		end

end
