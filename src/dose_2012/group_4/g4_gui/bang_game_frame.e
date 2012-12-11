note
	description: "Summary description for {BANG_GAME_FRAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BANG_GAME_FRAME

inherit
	EV_FIXED

	BANG_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	default_create

feature {NONE}	-- Initialization

feature {NONE}	-- Attributes
	-- adding game logic for now, need classes compiled to add tests with wizard :p
	card_pile : G4_CARD_PILES
	character_pile : G4_CHARACTER_PILE
	discard_pile : G4_DISCARD_PILE
	draw_pile : G4_DRAW_PILE
	role_pile : G4_ROLE_PILE

	--action_cards : G4_ACTION_CARDS <Change from Crete12 we will explain via skype>
	action_card_bang : G4_ACTION_CARDS_BANG
	action_card_beer : G4_ACTION_CARDS_BEER
	action_card_catbalou : G4_ACTION_CARDS_CATBALOU
	action_card_duell : G4_ACTION_CARDS_DUELL
	action_card_gatling : G4_ACTION_CARDS_GATLING
	action_card_generalstore : G4_ACTION_CARDS_GENERALSTORE
	action_card_indians : G4_ACTION_CARDS_INDIANS
	action_card_miss : G4_ACTION_CARDS_MISS
	action_card_panic : G4_ACTION_CARDS_PANIC
	action_card_saloon : G4_ACTION_CARDS_SALOON
	action_card_stagecoach : G4_ACTION_CARDS_STAGECOACH
	action_card_welsfargo : G4_ACTION_CARDS_WELSFARGO

	item_cards : G4_ITEM_CARDS
	item_cards_barrel : G4_ITEM_CARDS_BARREL
	item_cards_dynamite : G4_ITEM_CARDS_DYNAMITE
	item_cards_jail : G4_ITEM_CARDS_JAIL
	item_cards_mustang : G4_ITEM_CARDS_MUSTANG
	item_cards_scope : G4_ITEM_CARDS_SCOPE

	weapon_cards : G4_WEAPON_CARDS
	weapon_cards_carbine : G4_WEAPON_CARDS_CARBINE
	weapon_cards_remington : G4_WEAPON_CARDS_REMINGTON
	weapon_cards_shofield : G4_WEAPON_CARDS_SCHOFIELD
	weapon_cards_volcanic : G4_WEAPON_CARDS_VOLCANIC
	weapon_cards_winchester : G4_WEAPON_CARDS_WINCHESTER

	roles_bandir : G4_ROLES_BANDIT
	roles_deputy : G4_ROLES_DEPUTY
	roles_fugitive : G4_ROLES_FUGITIVE
	roles_sheriff : G4_ROLES_SHERIFF

	item_boards : G4_ITEM_BOARD
	player : G4_PLAYER
	player_turn : G4_PLAYER_TURN

end
