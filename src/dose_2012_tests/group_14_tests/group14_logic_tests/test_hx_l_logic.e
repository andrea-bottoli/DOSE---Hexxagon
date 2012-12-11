note
	description: "Summary description for {TEST_HX_L_LOGIC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_LOGIC
inherit
	EQA_TEST_SET
	redefine
		on_prepare,
		on_clean
	end

feature {NONE} -- Preparationa and clean

	game: HX_L_LOGIC
	gui: HX_G_DUMMYMANAGER

	on_prepare
		do
			create gui.make
			create game.initialize (gui)
		end

	on_clean
		do

		end


feature -- Test routines

	test_hx_l_logic_initialize1
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			assert ("Game is not running", NOT game.is_running)
		end

	test_hx_l_logic_initialize2
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
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
			name := "Mero"
			assert ("Mero is a valid name", game.is_valid_player_name(name))
		end

	test_hx_l_logic_start_single_player
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			game.start_single_player("mero",5,"game")
			assert ("Game is runing",game.is_running)
		end

	test_hx_l_logic_start_multiplayer_one
			-- New test routine
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		do
			game.start_multiplayer_one("mero","roli","game")
			assert ("Game is runing",game.is_running)
		end

	test_hx_l_logic_highscore
			-- Testing preferences
		note
			testing: "covers/{HX_L_LOGIC}"
			testing: "user/HX"
		local
			l_highscore: HX_L_IHIGHSCORE
		do
			l_highscore := game.highscore
			l_highscore.set_high_score (10)
			assert("Highscore is equal 10", l_highscore.high_score = 10)
		end
end
