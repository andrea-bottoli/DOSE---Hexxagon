note
	description: "Summary description for {G5_RECEIVER_COMMAND_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G5_RECEIVER_COMMAND_CARD

create
	make

feature {ANY} -- Intialization
	make(game:G5_TABLE)
	require
		game/=void
	do

	end
feature -- Atributes

	game_current: G5_TABLE
	card_current: G5_CARD

feature -- Implementations
	-- Each of these feature implements the behavior of each card,
	-- indicating the type (action, attack, reaction) and the name of the card.

	action_adventurer()
	require
		date_of_card: card_current/= void and card_current.type= {G5_MACRO_CARDS}.action and
						card_current.id= {G5_MACRO_CARDS}.adventurer
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	attack_bureaucrat()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.attack) and
						card_current.id= {G5_MACRO_CARDS}.bureaucrat
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action

	do

	end

	action_bureaucrat()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.bureaucrat
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_cellar()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.cellar
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_chancellor()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.chancellor
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_chapel()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.chapel
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_council_room()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.council_room
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_feast()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.feast
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_festival()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.festival
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_laboratory()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.laboratory
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_library()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.library
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_market()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.market
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_militia()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.militia
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	attack_militia()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.attack) and
						card_current.id= {G5_MACRO_CARDS}.militia
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_mine()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.mine
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_moat()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.moat
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	reaction_moat()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.reaction) and
						card_current.id= {G5_MACRO_CARDS}.moat
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_moneylender()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.moneylender
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_remodel()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.remodel
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_smithy()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.smithy
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_spy()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.spy
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	attack_spy()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.attack) and
						card_current.id= {G5_MACRO_CARDS}.spy
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	attack_thief()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.attack) and
						card_current.id= {G5_MACRO_CARDS}.thief
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_throne_room()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.throne_room
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_village()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.village
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_witch()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.witch
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	attack_witch()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.attack) and
						card_current.id= {G5_MACRO_CARDS}.witch
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_woodcutter()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.woodcutter
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	action_workshop()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.action) and
						card_current.id= {G5_MACRO_CARDS}.workshop
		state_of_game: game_current.phase_current={G5_MACRO_CARDS}.phase_action
	do

	end

	curse_action()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.type_curse) and
						card_current.id= {G5_MACRO_CARDS}.curse
	do

	end

	add_point_victory()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.victory) and
						(card_current.id= {G5_MACRO_CARDS}.estate or card_current.id= {G5_MACRO_CARDS}.duchy or card_current.id= {G5_MACRO_CARDS}.province)
	do

	end

	get_value_treasure()
	require
		date_of_card: card_current/= void and card_current.type.has_substring( {G5_MACRO_CARDS}.treasure) and
						(card_current.id= {G5_MACRO_CARDS}.copper or card_current.id= {G5_MACRO_CARDS}.silver or card_current.id= {G5_MACRO_CARDS}.gold)
	do

	end

feature --

	set_game_current (set_game: G5_TABLE)
	require
		game_not_empty: set_game /= void
	do

	ensure
		game_current=set_game
	end
	set_card_current(set_card: G5_CARD)
	require
		card_not_null: set_card /= void
	do

	ensure
		card_current=set_card
	end

invariant
	game_current/= void

end -- End class g5_receiver_command_card
