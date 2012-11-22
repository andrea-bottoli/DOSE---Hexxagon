note
	description: "Summary description for {TEST_HX_L_LOGIC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_LOGIC
inherit
	EQA_TEST_SET

feature -- Test routines
	game: HX_L_LOGIC
	gui: HX_G_DUMMYMANAGER

	test_hx_l_logic_initialize1
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			create gui.make
			create game.initialize (gui)
			assert ("Game is not running",NOT game.is_running)
		end

	test_hx_l_logic_initialize2
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			create gui.make
			create game.initialize (gui)
			assert ("Game is not activated",NOT game.active_mode)
		end

	test_hx_l_logic_is_valid_player_name
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		local
			name : STRING
		do
			create gui.make
			create game.initialize (gui)
			name := "Mero"
			assert ("Mero is a valid name",game.is_valid_player_name(name))
		end

	test_hx_l_logic_start_single_player
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			create gui.make
			create game.initialize (gui)
			game.start_single_player("mero",5,"game")
			assert ("Game is runing",game.is_running)
		end

	test_hx_l_logic_start_multiplayer_one
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			create gui.make
			create game.initialize (gui)
			game.start_multiplayer_one("mero","roli","game")
			assert ("Game is runing",game.is_running)
		end
end
