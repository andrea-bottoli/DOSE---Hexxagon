note
	description: "Summary description for {G5_MACRO_CARDS}."
	author: "Team: Rio Cuarto 4"
	date: "$17/11/2012$"
	revision: "$0.1$"

class
	G5_MACRO_CARDS

feature -- Access

	-- Kingdom cards
	adventurer:STRING="K1"
	bureaucrat:STRING= "K2"
	cellar:STRING="K3"
	chancellor:STRING="K4"
	chapel:STRING="K5"
	council_room:STRING="K6"
	feast:STRING="K7"
	festival:STRING="K8"
	garden:STRING="K9"
	laboratory:STRING="K10"
	library:STRING="K11"
	market:STRING="K12"
	militia:STRING="K13"
	mine:STRING="K14"
	moat:STRING="K15"
	moneylender:STRING="K16"
	remodel:STRING="K17"
	smithy:STRING="K18"
	spy:STRING="K19"
	thief:STRING="K20"
	throne_room:STRING="K21"
	village:STRING="K22"
	witch:STRING="K23"
	woodcutter:STRING="K24"
	workshop:STRING="K25"

	-- Treasure cards
	copper:STRING="T1"
	silver:STRING="T2"
	gold:STRING="T3"

	-- Victory cards
	estate:STRING="V1"
	duchy:STRING="V2"
	province:STRING="V3"

	-- curse cards
	curse: STRING="C1"

	-- Type card
	action:STRING="action"
	reaction:STRING="reacction"
	attack:STRING="attack"
	victory:STRING="victory"
	type_curse:STRING="curse"
	treasure:STRING="treasure"
	kingdom:STRING="kingdom"

	-- phases turn
	phase_action:STRING="Action"
	phase_buy:STRING="Buy"
	phase_clean_up:STRING="Clean-up"

end
