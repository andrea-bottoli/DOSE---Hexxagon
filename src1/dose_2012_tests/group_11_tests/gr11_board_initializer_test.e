note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	GR11_BOARD_INITIALIZER_TEST

inherit
	EQA_TEST_SET

feature -- Test routines

	make_test
			-- testing initialilization from file of the class
		note
			testing:  "covers/{GR11_BOARD_INITIALIZER}"
			testing: "user/GR11"
		local
			board_initializer : GR11_BOARD_INITIALIZER
		do
			create board_initializer.make(4)
		end

end


