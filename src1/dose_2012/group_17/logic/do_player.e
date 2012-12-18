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
		create hand.make (5)
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
			count_gold(hand)
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
			arg_is_integer : a_num_actions >= 0
		do
			num_actions := a_num_actions
		ensure
			num_actions_set : num_actions = a_num_actions
		end

	set_num_buys (a_num_buys : INTEGER)
		require
			arg_is_integer : a_num_buys >= 0
		do
			num_buys := a_num_buys
		ensure
			num_buys_set : num_buys = a_num_buys
		end

	set_num_gold (a_num_gold : INTEGER)
		require
			arg_is_integer : a_num_gold >= 0
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

		count_gold(p_hand : ARRAYED_LIST[DO_CARD])
		do
			across p_hand
			as i
			loop
				if i.item.gettype.is_equal("Coin") then
					if attached {DO_COIN_CARD} i.item as card then
						num_gold := num_gold + card.getgolds
					end
				end
			end
		end

		play_card(p_card : DO_CARD)
		local
			i : INTEGER
			remove : INTEGER
			y : BOOLEAN
		do
			y := TRUE
			if (num_actions >= 1) and (p_card.gettype.is_equal("Kingdom")) then
				p_card.doaction(p_card.getname)
				if attached {DO_KINGDOM_CARD} p_card as card then
					from i := 1
					until i = hand.count + 1
					loop
--						print("%N" + "MALAKA " + hand.at(i).getname + "%N")
--						io.putint (i)
--						print("%N")
						if hand.at(i).getname.is_equal(p_card.getname) and y = TRUE then
--							--print(p_card.getname+"%N")
--							discard_pile.add_top_card (hand.at (i))
--							hand.go_i_th (i-1)
--							--print ("%N"+hand.at(i).getname+"%N")
--							hand.remove_right
--							hand.go_i_th (i)
							remove := i
							y:= FALSE
						end
						i:=i+1
					end
					if y = FALSE then
						discard_pile.add_top_card (hand.at (remove))
						hand.go_i_th (remove-1)
						hand.remove_right
					end
					hand.go_i_th (1)

					num_gold := num_gold + card.getplus_gold
					num_actions := num_actions + card.getactions - 1
					num_buys := num_buys + card.getbuys
					from i := card.getdiscard until i = 0
					loop
						-- hand trash card(s)
						-- mporei na rwtaei ton player an thelei na kanei trash me mia if kai na kanoume to i := 0 an dn thelei na petaksei alli
						i := i - 1
					end
					from i := card.getpluscards until i = 0
					loop
						if draw_pile.is_empty then
							draw_pile.refill_draw (discard_pile)
							if draw_pile.is_empty and i >0 then
						--		print ("a")
								i :=1
							else
							--	print("TROMPA")
							--  na milate pio omorfa alliws 8a sas diagrapsw apo to DOSE
							--  me pollh agaph
							--  amoustakos programmatisths
								hand.force (draw_pile.remove_top_card)
							end
						else
							hand.force (draw_pile.remove_top_card)
						end
					--	print ("kati")
						i := i - 1
					end

				end
				--add p_card to discard
			end
		end

		buy_card(b_card : DO_CARD)
		do
			count_gold (hand)
			if (num_gold >= b_card.getcost) and (num_buys >= 1) then
				num_gold := num_gold - b_card.getcost
				num_buys := num_buys - 1
				--add b_card to discard
				discard_pile.add_top_card (b_card)
				discard_pile.emfanise
			else
				print("POULO")
			end
		end


end
