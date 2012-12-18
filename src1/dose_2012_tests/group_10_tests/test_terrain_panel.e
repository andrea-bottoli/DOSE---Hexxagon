note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_TERRAIN_PANEL

inherit
	EQA_TEST_SET
feature -- Test routines

	test_terrain_panel_update_tile
			-- New test routine
		note
			testing:  "covers/{G10_GUI_TERRAIN_PANEL}.update_tile"
		local
			a_terrain_panel:G10_GUI_TERRAIN_PANEL
			a_adding_tile:G10_GUI_TILE
			x,y,i:INTEGER
		do
			from
				i:=0
			until
				i<8
			loop
					x := 1+i
					y := 1+i
					a_terrain_panel.insert_tile_to_terrain (x, y, a_adding_tile)
					assert ("for coordinates ("+x.to_hex_string()+","+y.to_hex_string()+") update_panel_test out is:",
					a_terrain_panel.get_terrain().at (x).is_equal (a_adding_tile) and a_terrain_panel.get_terrain().at (y).is_equal (a_adding_tile))

			end
		end

	-- commented out because terrain does not inherit ev_fixed any more
	--test for TERRAIN_PANEL::update_background_color method
--	test_terrain_panel_update_background_color
--	note
--		testing:  "covers/{G10_GUI_TERRAIN_PANEL}.update_background_color"
--	local
--		a_terrain_panel:G10_GUI_TERRAIN_PANEL
--		a_pixmap:EV_PIXMAP
--	do
--		a_terrain_panel.update_background(a_pixmap)
--		assert ("test_terrain_panel_update_background_color result is ",a_pixmap /= void)
--	end

	-- commented out because terrain does not inherit ev_fixed any more
--	--test for TERRAIN_PANEL::get_background_color method
--	test_terrain_panel_get_background_color
--	note
--		testing:  "covers/{G10_GUI_TERRAIN_PANEL}.get_background_color"
--	local
--		a_terrain_panel:G10_GUI_TERRAIN_PANEL
--	do
--		assert ("test_terrain_panel_get_background_color results is ",a_terrain_panel.get_background_color /= void)
--	end

	--test for TERRAIN_PANEL::get_terrain method
	test_terrain_panel_get_terrain
	note
		testing:  "covers/{G10_GUI_TERRAIN_PANEL}.get_terrain"
	local
		a_terrain_panel:G10_GUI_TERRAIN_PANEL
	do
		--TODO method needs full condition
		assert ("test_terrain_panel_get_terrain result is ",a_terrain_panel.get_terrain()/=void)
	end

	--test for TERRAIN_PANEL constructor
	test_terrain_panel_make_terrain
	note
		testing:  "covers/{G10_GUI_TERRAIN_PANEL}.make"
	local
		a_terrain_panel:G10_GUI_TERRAIN_PANEL
		a_game : G10_GUI_GAME_MAIN
	do
		--create a_terrain_panel
		!!a_terrain_panel.make(a_game)
		assert ("test_terrain_panel_make_terrain result is ",a_terrain_panel/=void)
	end


end


