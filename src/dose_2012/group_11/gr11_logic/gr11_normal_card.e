note
	description: "Represent class for normal card game"
	author: "Milano4"
	date: "25/11/2012"
	revision: "0.1"

class
	GR11_NORMAL_CARD
create
	make,
	make_int

feature{NONE}--inizialization

	make(card_string:STRING)
	--receive string of the card and update attributes
	local

		file_split:LIST [STRING]
		card:STRING
		c:CHARACTER
	do

		file_split:=card_string.split (' ')
		movement_fighter := (((file_split[1]).split('='))[2]).to_integer
		rotation_fighter := (((file_split[2]).split('='))[2]).to_integer
		fire_fighter := (((file_split[3]).split('='))[2]).to_integer
		movement_capital_ship := (((file_split[4]).split('='))[2]).to_integer
		rotation_capital_ship := (((file_split[5]).split('='))[2]).to_integer
		fire_capital_ship := (((file_split[6]).split('='))[2]).to_integer

	ensure
		--movement_fighter>0  and rotation_fighter>0 and fire_fighter=5 and
		--movement_capital_ship>0 and rotation_capital_ship>0 and fire_capital_ship=2
	end

	make_int(MF,RF,FF,MRCS,FCS:INTEGER)
	do
		movement_fighter:=MF
		rotation_fighter:=RF
		fire_fighter:=FF
		movement_capital_ship:=MRCS
		rotation_capital_ship:=MRCS
		fire_capital_ship:=FCS
	end

feature{NONE} --status access

movement_fighter:INTEGER
rotation_fighter:INTEGER
fire_fighter:INTEGER
movement_capital_ship:INTEGER
rotation_capital_ship:INTEGER
fire_capital_ship:INTEGER

feature --query


is_equal_card(card:GR11_NORMAL_CARD):BOOLEAN
do
	if card.get_fire_capital_ship=fire_capital_ship then

	end
end

get_movement_fighter:INTEGER
do
	Result:=movement_fighter
end

get_rotation_fighter:INTEGER
do
	Result:=rotation_fighter
end

get_fire_fighter:INTEGER
do
	Result:=fire_fighter
end

get_movement_capital_ship:INTEGER
do
	Result:=movement_capital_ship
end

get_rotation_capital_ship:INTEGER
do
	Result:=rotation_capital_ship
end

get_fire_capital_ship:INTEGER
do
	Result:=fire_capital_ship
end

end
