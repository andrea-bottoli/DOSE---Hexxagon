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
				create gui_ini.make_test ()
			end
			assert (" make raised problem whit entry empty", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	test_pop_up_feature_1
		note
			testing: "G5_GUI/pop-up"
			-- test text pop_up
		do
			create gui_ini.make_test ()
			assert ("pop-up is void", gui_ini.a_pop_up_message = void)
			gui_ini.pop_up_text_message ("prova")
			assert ("pop-up is not void", gui_ini.a_pop_up_message /= void)
			assert ("message is correct", gui_ini.a_pop_up_message.message.is_equal ("prova"))
		end

end
