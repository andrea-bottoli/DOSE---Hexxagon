note
	description: "Summary description for {BS_MOVE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_MOVE

inherit
	ANY
	redefine
		is_equal
	end

create
	make, make_with_action

feature

	make(a_tile: BS_TILE; a_position: BS_POSITION )
	require
		move_not_void: a_tile /= void and a_position /= void
	do
		tile := a_tile.twin()
		position := a_position.twin()

--		Paolo: please review what I did with the twin() call above. Is this ok?
--		create tile.make (a_tile.get_state, a_tile.get_color)
--		create position.make (a_position.x, a_position.y)

		action := action_move
	end

	make_with_action(a_action: INTEGER; a_tile: BS_TILE; a_position: BS_POSITION )
	require
		valid_action: a_action = action_move or a_action = action_pass or a_action = action_surrender
		move_not_void: (a_action = action_move) implies (a_tile /= void and a_position /= void)
	do
		action := a_action
		if action = action_move then
			tile := a_tile.twin()
			position := a_position.twin()
--			Paolo: Same as above
--			create tile.make (a_tile.get_state, a_tile.get_color)
--			create position.make (a_position.x, a_position.y)
		end
	end

	get_action: INTEGER
	do
		Result := action
	end

	get_position: BS_POSITION
	do
		Result := position
	end

	get_tile: BS_TILE
	do
		Result := tile
	end

	is_equal (other: like Current): BOOLEAN
	do
		if other.get_tile.is_equal (tile) and other.get_position.is_equal( position ) then
			Result := true
		else
			Result := false
		end
	end

	clone_deep: BS_MOVE
	local
		new_move: BS_MOVE
		a_tile: BS_TILE
		a_position: BS_POSITION
	do
		create a_tile.make ( a_tile.get_original_state, tile.get_color)
		a_position := position.twin
		create new_move.make (a_tile, a_position)
		Result := new_move
	end

	action_move: INTEGER
	once
		result := 1
	end

	action_pass: INTEGER
	once
		result := 2
	end

	action_surrender: INTEGER
	once
		result := 3
	end

feature {NONE}

	action: INTEGER
	tile: BS_TILE
	position: BS_POSITION

invariant
	action = action_move or action = action_pass or action = action_surrender

end
