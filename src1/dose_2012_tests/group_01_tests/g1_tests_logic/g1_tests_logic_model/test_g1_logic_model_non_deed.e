note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_NON_DEED

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	test_make_non_deed
		note
			testing: "covers/{G1_NON_DEED}.make_non_deed"
			testing: "user/G1"
		local
			non_deed_t : G1_NON_DEED
		do
			create non_deed_t.make_non_deed("This is a description", 1, "cell 1")
			assert ("The description is 'This is a description' ", non_deed_t.get_description().is_equal("This is a description"))
		end

	test_set_description
		note
			testing: "covers/{G1_NON_DEED}.make_set_description"
			testing: "user/G1"
		local
			non_deed_t : G1_NON_DEED
		do
			create non_deed_t.make_non_deed("This is a description", 2, "cell 2")
			non_deed_t.set_description ("This is a new description")
			assert ("The description is 'This is a new description' ", non_deed_t.get_description().is_equal("This is a new description"))
		end



end


