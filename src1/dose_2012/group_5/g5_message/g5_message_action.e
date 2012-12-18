note
	description: "[
					Summary description for G5_MESSAGE_ACTION, which manages all the actions 
					related to play, discard, select and buy cards.
					]"
	author: "Luca Falsina"
	date: "14.11.2012"
	revision: "1.3"

class
	G5_MESSAGE_ACTION

inherit
	G5_MESSAGE

create
	make

feature -- Status Report

	involved_cards: ARRAY [STRING]
			-- This array may be empty or it may be contain a set of card IDs that will be used
			-- to perform changes or complex actions on the specified cards.

	min_amount: INTEGER
			-- This number represents the minimum number of cards that the player must choose
			-- in order to accomplish a previous begun action.

	max_amount: INTEGER
			-- This number represents the maximum number of cards that the player can choose
			-- in order to accomplish a previous begun action.

	moat_activation: BOOLEAN
			-- This attribute will be set on true if the previous played card is an Attack Card
			-- and so a Moat can be used to prevent its action. Otherwise it will be false.


feature {ANY} -- Initialization

	make(a_source: STRING; some_targets: ARRAY [STRING]; an_action: STRING; some_cards: ARRAY [STRING];
			min_value: INTEGER; max_value: INTEGER; moat_question: BOOLEAN)
			-- This feature sets all the attributes equals to the ones received as arguments.
		require

			not_void_array_has_not_valid_items:
				some_cards /= void implies
				some_cards.for_all (agent (card: STRING): BOOLEAN do Result :=
				(card /= void and (card.starts_with ("K") xor card.starts_with ("T") xor card.starts_with ("V")
				xor card.starts_with ("M") xor card.starts_with ("C"))) end)

			positive_integer:
				min_value >= 0 and
				max_value > 0

			max_greater_than_min:
				max_value >= min_value

			-- A player could eventually choose all the cards that he receives in the array
			-- "some_cards". It is impossible to choose a greater number of cards.
			choices_on_cards_less_then_obtained_cards:
				max_value <= some_cards.count

			accepted_action_for_action_message:
				an_action.is_equal ("reveal") xor an_action.is_equal ("put_in_hand") xor
				an_action.is_equal ("put_on_top_discard")  xor an_action.is_equal ("cards_in_trash") xor
				an_action.is_equal ("played") xor an_action.is_equal ("select_from_supply") xor
				an_action.is_equal ("keep_or_not_card") xor an_action.is_equal ("select_from_hand") xor
				an_action.is_equal ("resolved_card") xor an_action.is_equal ("play") xor
				an_action.is_equal ("selected_from_supply") xor an_action.is_equal ("selected_from_hand") xor
				an_action.is_equal ("answer_of_keeping") xor an_action.is_equal ("reveal_or_not_moat")

		do

			source := a_source
			targets := some_targets
			action := an_action
			involved_cards := some_cards
			min_amount := min_value
			max_amount := max_value
			moat_activation := moat_question

		ensure

			all_targets_are_kept:
				targets.count = some_targets.count and
				some_targets /= void implies
				some_targets.for_all (agent (player_name: STRING): BOOLEAN do Result := (targets.has(player_name)) end)

			all_cards_are_in_involved_cards:
				some_cards.count = involved_cards.count and
				some_cards /= void implies
				some_cards.for_all (agent (card: STRING): BOOLEAN do Result := (involved_cards.has(card)) end)

			attributes_equal_to_arguments:
				source = a_source
				action = an_action
				min_amount = min_value
				max_amount = max_value
				moat_activation = moat_question

		end


end
