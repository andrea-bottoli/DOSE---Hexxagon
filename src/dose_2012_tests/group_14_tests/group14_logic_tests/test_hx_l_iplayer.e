note
	description: "Summary description for {TEST_HX_L_IPLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_IPLAYER
inherit
	EQA_TEST_SET

feature -- Test routines

	game: HX_L_LOGIC
	gui: HX_G_DUMMYMANAGER

	test_hx_l_iplayer_id
			-- New test routine
		note
			testing: "covers/{HX_L_IPLAYER}"
			testing: "user/HX"

		do
			create gui.make
			create game.initialize (gui)
			game.start_single_player ("Test", 1, "notemplate")
			assert ("Player 1 id equals 1", game.player(1).id = 1)
		end
end
