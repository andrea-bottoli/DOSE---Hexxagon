note
	description: ""
	author: "Milano4"
	date: "1/12/2012"
	revision: "1.0"

class
	GR11_PLAYER

create
	make

feature {NONE}--status access	

	name:GR11_USER_ID
	--name of the player

	race:STRING
	--race of the player

	score:INTEGER
	--score for the player

	deck: GR11_DECK
	--one deck for each player

	special_card:GR11_SPECIAL_CARD
	--special card available to the player

	list_of_capital_ship:ARRAYED_LIST[GR11_CAPITAL_SHIP]
	--contains 2 capital ship

	hand_player:LINKED_LIST[GR11_NORMAL_CARD]
	--represent cards that player can play in specific turn

	list_of_squadrons:ARRAYED_LIST[GR11_SQUADRON]
	--list 3 squadrons

feature {NONE} -- Inizialization

	make(name_player:GR11_USER_ID; race_player:STRING)
			-- initializes the player
		local
			i:INTEGER
		do

			name:=name_player
			race:=race_player
			create deck.make_deck_player (race)
			create list_of_squadrons.make(3)
			create hand_player.make
			create list_of_capital_ship.make (2)
			from i:=1
			until i>2
			loop
				list_of_capital_ship.put_front (create {GR11_CAPITAL_SHIP}.make (name.id)) 
				i:=i+1
			end
			from i:=1
			until i>3
			loop
				list_of_squadrons.put_front(create {GR11_SQUADRON}.make(name.id))
				i:=i+1
			end
			set_special_card
		end

feature{NONE} --randomize
	randomize:INTEGER
	local
		random:RANDOM
		time:TIME
	do
		create random.make
		create time.make_now
		random.set_seed (time.compact_time)
		Result:=random.item \\3 + 1

	ensure
		Result < 4 and Result >0
	end
feature --modifiers

	draw_card_movement
	--draw card movement and put in hand player
	--deck reduced
	local
		card:GR11_NORMAL_CARD
	do
		--control if deck is empty return nothing
		if not(deck.is_empty) then
			card:=deck.get_card
			hand_player.put_front(card)
		end
	ensure
		--deck.size = old deck.size -1
	end


	set_score(point:INTEGER)
	--set a score player
	--point : point to add
	require
		point>0
	do
		score:=score+point
	ensure
		score=old score + point
	end

feature{NONE}--setting

	set_special_card
	local
		number_random :INTEGER

	do
		number_random:=randomize
		if race.is_equal ("VALKYRIE") then
			if number_random=1 then special_card:=create {GR11_SPECIAL_CARD_VALKYRIE_1}.make end
			if number_random=2 then special_card:=create {GR11_SPECIAL_CARD_VALKYRIE_2}.make end
			if number_random=3 then special_card:=create {GR11_SPECIAL_CARD_VALKYRIE_3}.make end
		end
		if race.is_equal ("DRECKACH") then
			if number_random=1 then special_card:=create {GR11_SPECIAL_CARD_DRECKACH_1}.make end
			if number_random=2 then special_card:=create {GR11_SPECIAL_CARD_DRECKACH_2}.make end
			if number_random=3 then special_card:=create {GR11_SPECIAL_CARD_DRECKACH_3}.make end
		end
		if race.is_equal ("EARTHERS") then
			if number_random=1 then special_card:=create {GR11_SPECIAL_CARD_EARTHERS_1}.make end
			if number_random=2 then special_card:=create {GR11_SPECIAL_CARD_EARTHERS_2}.make end
			if number_random=3 then special_card:=create {GR11_SPECIAL_CARD_EARTHERS_3}.make end
		end
		if race.is_equal ("VONYAN") then
			if number_random=1 then special_card:=create {GR11_SPECIAL_CARD_VONYAN_1}.make end
			if number_random=2 then special_card:=create {GR11_SPECIAL_CARD_VONYAN_2}.make end
			if number_random=3 then special_card:=create {GR11_SPECIAL_CARD_VONYAN_3}.make end
		end
	ensure
	end

feature --query
	get_score:INTEGER
	--return score of the player
	do
		Result := score
	ensure
		score=old score
	end

	get_name:GR11_USER_ID
	do
		Result:=name
	end

	get_race:STRING
	do
		Result:=race
	end

	get_special_card:GR11_SPECIAL_CARD
	--return special card of the player	
	do
		Result:=special_card
	end

	get_squadrons:ARRAYED_LIST[GR11_SQUADRON]
	do
		Result:=list_of_squadrons
	end

	get_hand_player:LINKED_LIST[GR11_NORMAL_CARD]
	--draw card and return cards that player can play
	do
		draw_card_movement
		Result:=hand_player
	end

	can_play_card(card_copy:GR11_NORMAL_CARD):BOOLEAN
	local
		i:INTEGER
	do
		--itero hand_player
		from i:=1
		until i<hand_player.count
		loop
			hand_player.move (i)
			if hand_player.i_th (i).is_equal(card_copy) then
				hand_player.remove
				Result:=TRUE
			end
			i:=i+1
		end
		Result:=FALSE
	end
end
