note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	RI_TERRITORIES_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	test_create
		note
			testing: "Testing initialization"
		local
			test_terr : RI_TERRITORY

		do
--			test_terr.make
			assert("Non void territory",test_terr /= void)
			assert("Valid ID",test_terr.id > 0)
			assert("Valid Owner",test_terr.owner /= void)
			assert("Valid army_count",test_terr.army_count >0)
		end

end


