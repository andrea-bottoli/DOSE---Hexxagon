note
	description: "Summary description for {G3_TABLE}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_TABLE

create
	make

feature{NONE}

	make
			-- Makes a new game table.
		do
			hand_over := False
			create  stack_of_play.make
			create tichu.make
			create grand_tichu.make
			dog := Void
			last_killer := Void
		end

feature{G3_MODEL, G3_TEST_LOGIC_TABLE}



	clear_stack
			-- Clears the stack of plays.
		do
			stack_of_play.wipe_out
		ensure
			stack_of_play.is_empty
		end

	add_move(play: G3_COMBINATION)
			-- Adds a new play to the stack of plays.
		require
			valid_arg: play /= Void
			valid_move: play.is_valid = True
		do
			stack_of_play.put (play)
			last_killer := turn
		end

	count_points : INTEGER
			-- Conts the points of the stack of plays.
		local
			stack : LINKED_STACK [G3_COMBINATION]
			combination : G3_COMBINATION
			sum : INTEGER
		do
			from
				stack.copy(stack_of_play)
				sum := 0
			until
				stack.is_empty
			loop
				combination := stack.item
				from
					combination.cards.start
				until
					combination.cards.off
				loop
					sum := sum + combination.cards.item.point
					combination.cards.forth
				end
				stack.remove
			end
			Result := sum
		end

	set_turn (turn_ : G3_PLAYER_ID)
		require
			valid_arg: turn_ /= Void
		do
			turn := turn_
		ensure
			set_ok : turn.is_equal (turn_)
		end

	set_dog(player_id : G3_PLAYER_ID)
		do
			dog := player_id
		end

	set_tichu(player_id : G3_PLAYER_ID)
		do
			tichu.put(player_id)
		end

	set_grand_tichu(player_id : G3_PLAYER_ID)
		do
			grand_tichu.put(player_id)
		end

feature
	hand_over: BOOLEAN
		-- Is the hand over?

	turn : G3_PLAYER_ID

	last_killer: G3_PLAYER_ID
		-- The last player that plays a combination of cards.
		-- He killed the previous combination that was on the top of the stack.

	stack_of_play : LINKED_STACK [G3_COMBINATION]
		-- Stack of moves in the current hand.

	tichu : LINKED_STACK[G3_PLAYER_ID]

	grand_tichu : LINKED_STACK[G3_PLAYER_ID]

	dog : G3_PLAYER_ID
end
