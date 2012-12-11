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

	name:STRING
	--name of the player

	race:STRING
	--race of the player

	score:INTEGER
	--score for the player

	deck: GR11_DECK
	--one deck for each player

	special_card:GR11_SPECIAL_CARD
	--special card available to the player

	can_draw_three_card:BOOLEAN
	--for special card drechack that draw 3 card for turn

feature {NONE} -- Inizialization

	make(name_player:STRING; race_player:STRING)
			-- initializes the player
		local
			number_random:INTEGER
			--special_card_valkyrie_1:GR11_SPECIAL_CARD_VALKYRIE_1
			--special_card_dreckach_3:GR11_SPECIAL_CARD_DRECKACH_3
		do
			can_draw_three_card:=FALSE
			create race
			create name
			name:=name_player
			race:=race_player
			create deck.make(race)


			-- number_random:=new_random \\ 3 + 1
			--if race="VALKYRIE" then
				--if number_random=1 then
					--special_card:= create special_card_valkyrie_1

			--if race="DRECKACH" then
				--if number_random=3 then
					--special_card:= create special_card_dreckach_3

		end

feature --modifiers

	new_random:INTEGER
	-- Random integer
	local
		random_sequence: RANDOM
	do
	    random_sequence.forth
	    Result := random_sequence.item
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

	update_special_card()
	--method update for special card Drechack insert 3 card in Map
	do
		can_draw_three_card:=TRUE

	end

feature --query
	get_score:INTEGER
	--return score of the player
	do
		Result := score
	ensure
		score=old score
	end

	get_name:STRING
	do
		Result:=name
	end

	get_race:STRING
	do
		Result:=race
	end

	get_special_draw:BOOLEAN
	--return true if is active card special draw Drechack
	do
		Result:=can_draw_three_card
	end

	get_card_movement:GR11_NORMAL_CARD
	--return card movement
	do
		Result:=deck.get_card
	end

	get_special_card:GR11_SPECIAL_CARD
	--return special card of the player
	do
		Result:=special_card
	end


end
