note
	description: "Summary description for {TEST_SET_G5_GUI}."
	author: "Team RioCuarto4"
	date: "$18/112012$"
	revision: "$Revision : 2 $"

class
	TEST_SET_G5_GUI

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

	gui_ini: G5_GUI

feature -- Test routines

	test_make_0
		note
			testing: "G5_GUI/make"
			-- test negative for make
		do
			if not rescued then
				create gui_ini.make ()
			end
			assert (" make raised problem whit entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_make_1
		note
			testing: "G5_GUI/make"
			-- test make
		do
			create gui_ini.make ()
				--rescued := string_entry.is_equal (pop_up_mesage.message)
			assert ("correct make", rescued)
		end

end
