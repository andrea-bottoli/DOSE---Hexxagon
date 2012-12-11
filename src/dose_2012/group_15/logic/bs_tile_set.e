note
	description: "Summary description for {BS_TILES_CONSTANTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	BS_TILE_SET

feature

	add_tile_set(a_color: INTEGER)
	local
		new_state: ARRAY2[INTEGER]
	do
		if tiles = Void then
			create tiles.make
		end

		--1
		create new_state.make_filled (1, 1, 1)
		add_tile(  new_state, a_color )

		--2
		create new_state.make_filled (1, 1, 2)
		add_tile(  new_state, a_color  )

		--3
		create new_state.make_filled (1, 2, 2)
		new_state.item (2, 1) := 0
		add_tile(  new_state, a_color )

		--4
		create new_state.make_filled (1, 1, 3)
		add_tile(  new_state, a_color )

		--5
		create new_state.make_filled (1, 2, 2)
		add_tile(  new_state, a_color )

		--6
		create new_state.make_filled (1, 2, 3)
		new_state.item (1, 1) := 0
		new_state.item (1, 3) := 0
		add_tile(  new_state, a_color )

		--7
		create new_state.make_filled (1, 1, 4)
		add_tile(  new_state, a_color )

		--8
		create new_state.make_filled (1, 2, 3)
		new_state.item (1, 1) := 0
		new_state.item (1, 2) := 0
		add_tile(  new_state, a_color )

		--9
		create new_state.make_filled (1, 2, 3)
		new_state.item (1, 1) := 0
		new_state.item (2, 3) := 0
		add_tile(  new_state, a_color )

		--10
		create new_state.make_filled (1, 2, 4)
		new_state.item (1, 2) := 0
		new_state.item (1, 3) := 0
		new_state.item (1, 4) := 0
		add_tile(  new_state, a_color )

		--11
		create new_state.make_filled (1, 3, 3)
		new_state.item (1, 1) := 0
		new_state.item (1, 3) := 0
		new_state.item (2, 1) := 0
		new_state.item (2, 3) := 0
		add_tile(  new_state, a_color )

		--12
		create new_state.make_filled (1, 3, 3)
		new_state.item (1, 2) := 0
		new_state.item (1, 3) := 0
		new_state.item (2, 2) := 0
		new_state.item (2, 3) := 0
		add_tile(  new_state, a_color )

		--13
		create new_state.make_filled (1, 2, 4)
		new_state.item (1, 1) := 0
		new_state.item (2, 3) := 0
		new_state.item (2, 4) := 0
		add_tile(  new_state, a_color )

		--14
		create new_state.make_filled (1, 3, 3)
		new_state.item (1, 1) := 0
		new_state.item (1, 2) := 0
		new_state.item (3, 2) := 0
		new_state.item (3, 3) := 0
		add_tile(  new_state, a_color )

		--15
		create new_state.make_filled (1, 5, 1)
		add_tile(  new_state, a_color )

		--16
		create new_state.make_filled (1, 3, 2)
		new_state.item (1, 2) := 0
		add_tile(  new_state, a_color )

		--17
		create new_state.make_filled (1, 3, 3)
		new_state.item (1, 1) := 0
		new_state.item (2, 3) := 0
		new_state.item (3, 2) := 0
		new_state.item (3, 3) := 0
		add_tile(  new_state, a_color )

		--18		
		create new_state.make_filled (1, 3, 2)
		new_state.item (2, 2) := 0
		add_tile(  new_state, a_color )

		--19
		create new_state.make_filled (1, 3, 3)
		new_state.item (1, 1) := 0
		new_state.item (3, 1) := 0
		new_state.item (2, 3) := 0
		new_state.item (3, 3) := 0
		add_tile(  new_state, a_color )

		--20
		create new_state.make_filled (1, 3, 3)
		new_state.item (1, 1) := 0
		new_state.item (3, 1) := 0
		new_state.item (1, 3) := 0
		new_state.item (3, 3) := 0
		add_tile(  new_state, a_color )

		--21
		create new_state.make_filled (1, 2, 4)
		new_state.item (1, 1) := 0
		new_state.item (1, 3) := 0
		new_state.item (1, 4) := 0
		add_tile(  new_state, a_color )

	end

feature {NONE}
	add_tile(state:ARRAY2[INTEGER]; color:INTEGER )
	do
		tiles.extend( create {BS_TILE}.make(state, color))
	end

feature {BS_PLAYER}
	tiles: LINKED_LIST[BS_TILE]

end
