note
	description: "Summary description for {TEST_HX_L_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_HX_L_PLAYER

inherit
	EQA_TEST_SET

create
	default_create

feature -- Test routines

	game: HX_L_LOGIC

	gui: HX_G_DUMMYMANAGER

	board: HX_L_BOARD
			-- New test routine

	player: HX_L_PLAYER

	resource_manager: HX_L_RESOURCE_MANAGER

	test_hx_l_player_make
		do
			create resource_manager
			create board.make ("mero", "roli", TRUE, FALSE,
								resource_manager.template_by_name ("testing"), game)
			create player.make (board, 1, "mero", true)
			assert ("Player was created", player.id = 1)
		end

	test_hx_l_player_id
		do
			create gui.make
			create game.initialize (gui)
			game.start_single_player ("Test", 1, "notemplate")
			assert ("Player 1 id equals 1", game.player (1).id = 1)
		end

	test_hx_l_player_is_active
		do
			create gui.make
			create game.initialize (gui)
			game.start_single_player ("Test", 1, "notemplate")
			assert ("Active player is active", game.board.active_player.is_active)
		end

end -- class TEST_HX_L_PLAYER

