note
	description: "Summary description for {TEXT_HX_L_IPLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEXT_HX_L_IPLACE
inherit
	EQA_TEST_SET

feature -- Test routines

	game: HX_L_LOGIC
	gui: HX_G_DUMMYMANAGER
	place : HX_L_IPLACE

	test_hx_l_iplace_exists
			-- New test routine
		note
			testing: "covers/{HX_L_IPLACE}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize (gui)
			place := game.board.place (1,1)
			assert ("Place 1,1 exists",place.exists)
		end

	test_hx_l_iplace_is_empty
			-- New test routine
		note
			testing: "covers/{HX_L_IPLACE}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize (gui)
			place := game.board.place (1,1)
			assert ("Place 1,1 is empty",place.is_empty)
		end

	test_hx_l_iplace_player
			-- New test routine
		note
			testing: "covers/{HX_L_IPLACE}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize (gui)
			place := game.board.place (1,1)
			assert ("Player at place 1,1 is not void",place.player /= Void)
		end
end
