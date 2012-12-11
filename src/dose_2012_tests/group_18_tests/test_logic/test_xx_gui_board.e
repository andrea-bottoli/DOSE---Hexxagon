note
	description: "Test on XX_GUI_BOARD"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.2"
	testing: "manual"

class
	TEST_XX_GUI_BOARD

inherit
	EQA_TEST_SET

feature --Test Routines

	--Test the method make
	test_make
		note
			testing:  "covers/{XX_GUI_BOARD}.make"
			testing:  "user/XX"
		local
			l_gui_board: XX_GUI_BOARD
		do
			create l_gui_board.make
			assert ("Gui Board is not void", l_gui_board/=Void)
		end

	-- It tests the get_array method
	test_get_array
		note
			testing:  "covers/{XX_GUI_BOARD}.get_array"
			testing:  "user/XX"
		local
			l_gui_board: XX_GUI_BOARD
		do
			create l_gui_board.make
			assert ("Gui Board is not void", l_gui_board.get_array/=Void)
		end
end
