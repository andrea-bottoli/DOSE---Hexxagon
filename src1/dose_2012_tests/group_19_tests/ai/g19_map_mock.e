class 
	G19_MAP_MOCK

inherit
	G19_MAP
	
feature{NONE}

	current_cells: SET[TUPLE[x: INTEGER; y: INTEGER]]
	current_ok: BOOLEAN

feature 

	make(cells: SET[TUPLE[x: INTEGER; y: INTEGER]])
		do
			current_cells := cells
			current_ok := true
		end

	get_cell_at(x, y: INTEGER): TUPLE[type: INTEGER; owner: G19_PLAYER_INFO]
		do
			result := [1, void]
		end 
		
	get_avaible_cells(player: G19_PLAYER_INFO; action_type: STRING): SET[TUPLE[x: INTEGER; y: INTEGER]]
		do
			result := current_cells 
		end
		
	get_size(): TUPLE[width, height: INTEGER]
		do
			result := [20, 20]
		end
		
	build(position: TUPLE[x: INTEGER; y: INTEGER]; action_type: STRING)
		do
			current_cells.prune([x, y])
		end
	
	move(dropped: TUPLE[x: INTEGER, y: INTEGER]; created: TUPLE[x: INTEGER, y: INTEGER]; action_type: STRING)
		do
			current_ok := false
		end
	
	is_ok(): BOOLEAN
		do
			result := current_ok 
		end

end