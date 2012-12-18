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
	reaction:STRING="reaction"
	attack:STRING="attack"
	victory:STRING="victory"
	type_curse:STRING="curse"
	treasure:STRING="treasure"
	kingdom:STRING="kingdom"

	-- phases turn
	phase_action:STRING="Action"
	phase_buy:STRING="Buy"
	phase_clean_up:STRING="Clean-up"

	-- source SERVER
	server:STRING="SERVER"

	-- Values Cost Kingdom cards
	adventurer_cost:INTEGER=6
	bureaucrat_cost:INTEGER=4
	cellar_cost:INTEGER=2
	chancellor_cost:INTEGER=3
	chapel_cost:INTEGER=2
	council_room_cost:INTEGER=5
	feast_cost:INTEGER=4
	festival_cost:INTEGER=5
	garden_cost:INTEGER=4
	laboratory_cost:INTEGER=5
	library_cost:INTEGER=5
	market_cost:INTEGER=5
	militia_cost:INTEGER=4
	mine_cost:INTEGER=5
	moat_cost:INTEGER=2
	moneylender_cost:INTEGER=4
	remodel_cost:INTEGER=4
	smithy_cost:INTEGER=4
	spy_cost:INTEGER=4
	thief_cost:INTEGER=4
	throne_room_cost:INTEGER=4
	village_cost:INTEGER=3
	witch_cost:INTEGER=5
	woodcutter_cost:INTEGER=3
	workshop_cost:INTEGER=3

	-- Values Cost Treasure cards
	copper_cost:INTEGER=0
	silver_cost:INTEGER=3
	gold_cost:INTEGER=6

	-- Values Cost Victory cards
	estate_cost:INTEGER=2
	duchy_cost:INTEGER=5
	province_cost:INTEGER=8

	-- Values Cost Victory cards
	curse_cost:INTEGER=0



	-- Type of Kingdom cards
	adventurer_type:STRING="kingdom action"
	bureaucrat_type:STRING= "kingdom action attack"
	cellar_type:STRING="kingdom action"
	chancellor_type:STRING="kingdom action"
	chapel_type:STRING="kingdom action"
	council_room_type:STRING="kingdom action"
	feast_type:STRING="kingdom action"
	festival_type:STRING="kingdom action"
	laboratory_type:STRING="kingdom action"
	library_type:STRING="kingdom action"
	market_type:STRING="kingdom action"
	militia_type:STRING="kingdom action attack"
	mine_type:STRING="kingdom action"
	moat_type:STRING="kingdom action reaction"
	moneylender_type:STRING="kingdom action"
	remodel_type:STRING="kingdom action"
	smithy_type:STRING="kingdom action"
	spy_type:STRING="kingdom action attack"
	thief_type:STRING="kingdom action attack"
	throne_room_type:STRING="kingdom action"
	village_type:STRING="kingdom action"
	witch_type:STRING="kingdom action attack"
	woodcutter_type:STRING="kingdom action"
	workshop_type:STRING="kingdom action"
	-- Type of Treasure cards
	copper_type:STRING="treasure"
	silver_type:STRING="treasure"
	gold_type:STRING="treasure"
	-- Type of Victory cards
	garden_type:STRING="kingdom victory"
	estate_type:STRING="victory"
	duchy_type:STRING="victory"
	province_type:STRING="victory"
	-- Values Cost curse
	curse_type:STRING="curse"
end
