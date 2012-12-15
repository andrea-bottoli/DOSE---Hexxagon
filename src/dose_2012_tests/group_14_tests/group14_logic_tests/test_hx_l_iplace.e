note
	description: "Summary description for {TEXT_HX_L_IPLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEXT_HX_L_IPLACE
inherit
	EQA_TEST_SET
	redefine
		on_prepare,
		on_clean
	end


feature {NONE} -- Preparationa and clean

	gui: HX_G_DUMMYMANAGER
	game: HX_L_LOGIC
	place : HX_L_IPLACE

	on_prepare
		do
			create gui.default_create
			create game.initialize(gui)
			game.start_single_player ("Test", 1, "notemplate")
		end

	on_clean
		do

		end

feature -- Test routines

	test_hx_l_iplace_exists
			-- New test routine
		note
			testing: "covers/{HX_L_IPLACE}"
			testing: "user/HX"

		do
			place := game.board.place (1,1)
			assert ("Place 1,1 exists",place.exists)
		end

	test_hx_l_iplace_is_empty
			-- New test routine
		note
			testing: "covers/{HX_L_IPLACE}"
			testing: "user/HX"

		do
			place := game.board.place (3,3)
			assert ("Place 3,3 is empty", place.is_empty)
		end

	test_hx_l_iplace_player
			-- New test routine
		note
			testing: "covers/{HX_L_IPLACE}"
			testing: "user/HX"

		do
			place := game.board.place (1,1)
			assert ("Player at place 1,1 is not void",place.player_id /= 0)
		end
end
