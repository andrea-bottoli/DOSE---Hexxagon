note
	description: "An object that represents the tiles rack of the user player."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	IG_TILES_VIEW

inherit
	EV_MODEL_GROUP

	IG_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make_with_logic

feature {NONE} -- Initialization

	make_with_logic (a_logic: IG_LOGIC)
		require
			logic_not_void: a_logic /= Void
		local
			l_tile_view: IG_TILE_VIEW
		do
			default_create
			logic := a_logic

				-- Add tiles
			across logic.user_player.tiles as l_cursor  loop
				create l_tile_view.make_with_tile (l_cursor.item)
				extend (l_tile_view)
				l_tile_view.set_tile_number (l_cursor.cursor_index)
			end
			redraw_tiles
		end

feature -- Access

	selected_tile: IG_TILE_VIEW
			-- Search in the tiles view the currently selected tile. Result might be Void.
		local
			l_found: BOOLEAN
		do
			from start
			until after or l_found
			loop
				check attached {IG_TILE_VIEW} item_for_iteration as l_tile_view then
					if l_tile_view.is_selected then
						Result := l_tile_view
						l_found := True
					end
				end
				forth
			end
		end

feature -- Status Update

	update
			-- Retrieve the tile from the logic component
			-- and draw them on the tiles view. Previous tiles,
			-- if any, are discarded.
		do
			add_tiles
			redraw_tiles
		end

feature {NONE} -- Implementation

	logic: IG_LOGIC

	add_tiles
			-- Add tiles to the model group.
		local
--			l_tile_view: IG_TILE_VIEW
		do
			-- Clear any existing tile
			--prune_all (Current)

			across Current as l_cursor loop
				check attached {IG_TILE_VIEW} l_cursor.item as l_tile_view then
					if logic.user_player.tiles.valid_index (l_cursor.cursor_index) then
						l_tile_view.set_tile (logic.user_player.tiles[l_cursor.cursor_index])
					else
						l_tile_view.set_tile (default_empty_tile)
					end

					l_tile_view.set_tile_number (l_cursor.cursor_index)
				end
			end
		ensure
			six_tile_views: count = 6
		end

	redraw_tiles
			-- Redraw the entire tiles view.
		do
			across Current as l_cursor loop
				check attached {IG_TILE_VIEW} l_cursor.item as l_tile_view then
					l_tile_view.reset_position
				end
			end
		end

	default_empty_tile: IG_TILE
		local
			l_hex1, l_hex2: IG_HEX
		do
			create l_hex1.make ("")
			create l_hex2.make ("")
			create Result.make_with_hexes(l_hex1, l_hex2)
		end


end
