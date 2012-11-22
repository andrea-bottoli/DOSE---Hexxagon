note
	description: "Summary description for {BS_TILE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_TILE

create
	make

feature

	make(initial_state: ARRAY2[INTEGER]; a_color: INTEGER)
	require
		valid_color: a_color > 0 and a_color <= 4
	do
		tile_state := initial_state
		color := a_color
	end

	get_state: ARRAY2 [INTEGER]
	do
		Result := tile_state
	end

	rotate_right
	local
		tile_copy : ARRAY2[INTEGER]
		row, column: INTEGER
	do
		--create a array2 with height as width, and width as height sizes.
		tile_copy := create {ARRAY2 [INTEGER]}.make_filled (0, tile_state.width, tile_state.height)

		from
			row := 1
		until
			row > tile_state.height
		loop
			from
				column := 1
			until
				column > tile_state.width
			loop
				tile_copy.item (column, tile_copy.width - row + 1) := tile_state.item (row, column)
				column := column + 1
			end
			row := row + 1
		end

		tile_state := tile_copy
	end

	rotate_left
	local
		tile_copy : ARRAY2[INTEGER]
		row, column: INTEGER
	do
		--create a array2 with height as width, and width as height sizes.
		tile_copy := create {ARRAY2 [INTEGER]}.make_filled (0, tile_state.width, tile_state.height)

		from
			row := 1
		until
			row > tile_state.height
		loop
			from
				column := 1
			until
				column > tile_state.width
			loop
				tile_copy.item (tile_copy.height - column + 1, row) := tile_state.item (row, column)
				column := column + 1
			end
			row := row + 1
		end

		tile_state := tile_copy
	end

	flip_horizontally
	local
		tile_copy : ARRAY2[INTEGER]
		row, column: INTEGER
	do
		--create a array2 with height as width, and width as height sizes.
		tile_copy := create {ARRAY2 [INTEGER]}.make_filled (0, tile_state.height, tile_state.width)

		from
			row := 1
		until
			row > tile_state.height
		loop
			from
				column := 1
			until
				column > tile_state.width
			loop
				tile_copy.item (row, tile_copy.width - column + 1) := tile_state.item (row, column)
				column := column + 1
			end
			row := row + 1
		end

		tile_state := tile_copy
	end

	flip_vertically
	local
		tile_copy : ARRAY2[INTEGER]
		row, column: INTEGER
	do
		--create a array2 with height as width, and width as height sizes.
		tile_copy := create {ARRAY2 [INTEGER]}.make_filled (0, tile_state.height, tile_state.width)

		from
			row := 1
		until
			row > tile_state.height
		loop
			from
				column := 1
			until
				column > tile_state.width
			loop
				tile_copy.item (tile_copy.height - row + 1, column) := tile_state.item (row, column)
				column := column + 1
			end
			row := row + 1
		end

		tile_state := tile_copy
	end

	get_color: INTEGER
	do
		Result := color
	end

feature {NONE}
	tile_state: ARRAY2[INTEGER]
	color: INTEGER

end
