class
	G19_MAP_IMPL

inherit
	G19_READONLY_MAP_IMPL
		rename
			make as super_make
		redefine
		--	get_avaible_cells
		--	get_cell_at
		end
create
	make

feature{NONE}

	current_transaction_mode: BOOLEAN
	current_non_commited_actions: LINKED_SET[TUPLE[x: INTEGER; y: INTEGER; action_type: STRING]]

feature

	make(name1, name2, name3, name4: STRING; tc_m: G19_TERRAIN_CARD_MANAGER)
		do
			super_make(name1, name2, name3, name4, tc_m)

			current_transaction_mode := false
			create current_non_commited_actions.make()
		end

	build(player: G19_PlAYER_INFO; position: TUPLE[x: INTEGER; y: INTEGER]; action_type: STRING)
		do

		end

	move(player: G19_PLAYER_INFO; dropped: TUPLE[x: INTEGER; y: INTEGER]; created: TUPLE[x: INTEGER; y: INTEGER]; action_type: STRING)
		do

		end

	start_transaction()
		do
			current_transaction_mode := true
		end

	commit(): INTEGER
		do
			current_transaction_mode := false
		end

	rollback()
		do
			current_transaction_mode := false
		end

end
