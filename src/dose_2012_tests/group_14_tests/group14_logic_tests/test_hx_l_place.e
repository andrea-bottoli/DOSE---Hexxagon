note
	description: "Summary description for {TEXT_HX_L_PLACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEXT_HX_L_PLACE

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

create
	default_create

feature {NONE}

	gui: HX_G_UIMANAGER
	logic: HX_L_LOGIC
	board: HX_L_BOARD
	resource_manager: HX_L_RESOURCE_MANAGER

	on_prepare
		do
			create gui.make
			create logic.initialize (gui)
			create resource_manager
			create board.make ("mero", "roli", TRUE, FALSE,
								resource_manager.template_by_name ("testing"), logic)
		end

	on_clean
		do
		end

feature

	test_hx_l_place_exists
		do
			assert ("Place 1,1 exists", board.place (1, 1).exists)
		end

	test_hx_l_place_is_empty
		do
			assert ("Place 1,1 is not empty", not board.place (1, 1).is_empty)
		end

	test_hx_l_place_player
		do
			assert ("Player at place 1,1 is not void", board.place (1, 1).player_id /= 0)
		end

end -- class TEXT_HX_L_PLACE
