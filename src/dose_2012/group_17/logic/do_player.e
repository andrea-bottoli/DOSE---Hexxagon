note
	description: "Summary description for {DO_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DO_PLAYER
create
	make
feature {NONE}

	name : STRING
	active : BOOLEAN
	state : STRING
	num_actions : INTEGER
	num_buys : INTEGER
	num_gold : INTEGER
	draw_pile : DO_DRAW_PILE
	discard_pile : DO_DISCARD_PILE
	hand : ARRAYED_LIST[DO_CARD]
	points : INTEGER
	make
	do

	end

feature {ANY}

	-- GETTERS --

	get_name () : STRING
		do
			Result := name
		ensure
			name_get : Result = name
		end

	get_active () : BOOLEAN
		do
			Result := active
		ensure
			name_active : Result = active
		end

	get_state () : STRING
		do
			Result := state
		ensure
			name_state : Result = state
		end

	get_num_actions () : INTEGER
		do
			Result := num_actions
		ensure
			name_num_actions : Result = num_actions
		end

	get_num_buys () : INTEGER
		do
			Result := num_buys
		ensure
			name_num_buys : Result = num_buys
		end

	get_num_gold () : INTEGER
		do
			Result := num_gold
		ensure
			name_num_gold : Result = num_gold
		end

	get_draw_pile () : DO_DRAW_PILE
		do
			Result := draw_pile
		ensure
			name_draw_pile : Result = draw_pile
		end

	get_discard_pile () : DO_DISCARD_PILE
		do
			Result := discard_pile
		ensure
			name_discard_pile : Result = discard_pile
		end

	get_hand () : ARRAYED_LIST[DO_CARD]
		do
			Result := hand
		ensure
			name_hand : Result = hand
		end

		-- SETTERS --

	set_name (a_name : STRING)
		require
			arg_not_void : a_name /= void
		do
			name := a_name
		ensure
			name_set : name = a_name
		end

	set_active (a_active : BOOLEAN)
		require
			arg_is_boolean : a_active = true or a_active = false
		do
			active := a_active
		ensure
			active_set : active = a_active
		end

	set_state (a_state : STRING)
		require
			arg_is_string : a_state /= void
		do
			state := a_state
		ensure
			state_set : state = a_state
		end

	set_num_actions (a_num_actions : INTEGER)
		require
			arg_is_integer : a_num_actions < 0
		do
			num_actions := a_num_actions
		ensure
			num_actions_set : num_actions = a_num_actions
		end

	set_num_buys (a_num_buys : INTEGER)
		require
			arg_is_integer : a_num_buys < 0
		do
			num_buys := a_num_buys
		ensure
			num_buys_set : num_buys = a_num_buys
		end

	set_num_gold (a_num_gold : INTEGER)
		require
			arg_is_integer : a_num_gold < 0
		do
			num_gold := a_num_gold
		ensure
			num_gold_set : num_gold = a_num_gold
		end

	set_draw_pile (a_draw_pile : DO_DRAW_PILE)
		require
			arg_is_DO_DRAW_PILE : a_draw_pile /= void
		do
			draw_pile := a_draw_pile
		ensure
			draw_pile_set : draw_pile = a_draw_pile
		end

	set_discard_pile (a_discard_pile : DO_DISCARD_PILE)
		require
			arg_is_DO_DISCARD_PILE : a_discard_pile /= void
		do
			discard_pile := a_discard_pile
		ensure
			discard_pile_set : discard_pile = a_discard_pile
		end
	set_hand (a_hand : ARRAYED_LIST[DO_CARD])
		require
			arg_not_void : a_hand /= void
		do
			hand := a_hand
		ensure
			hand_set : hand = a_hand
		end

	-- METHODS --
		count_points () : INTEGER
		local
			type : STRING
			point_sum : INTEGER
			i : INTEGER
		do
			from i := 0 until draw_pile.is_empty() = TRUE
			loop
				discard_pile.add_top_card(draw_pile.remove_top_card())
			end
			from i := 0	until i = 1 --discard_pile.is_empty() = TRUE
			loop
				type := discard_pile.get_top_card().gettype()
				if type.is_equal("Victory") = TRUE then
					if attached {DO_VICTORY_CARD} discard_pile.get_top_card() as card then
							point_sum := point_sum + card.getvictorypoints()
						end
				end
				discard_pile.remove_top_card()
			end
			Result := point_sum
		ensure
			draw_pile : draw_pile.Is_Empty() = TRUE
			point_sum : Result >= -30
		end

end
