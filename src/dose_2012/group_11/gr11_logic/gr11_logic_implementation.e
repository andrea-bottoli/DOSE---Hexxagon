note
	description: "Summary description for {GR11_LOGIC_IMPLEMENTATION}."
	author: "Milano4"
	date: "11/12/2012"
	revision: "1.0"

 class
	GR11_LOGIC_IMPLEMENTATION

inherit
	GR11_LOGIC


create
	make

feature{NONE}
list_of_players:ARRAYED_LIST[STRING_8]

--model:GR11_MODEL

--observer_model:GR11_OBSERVER

feature{NONE}
	make
	do
		create list_of_players.make(4)
		--create model
	end

feature

	can_add_player:BOOLEAN
	--can add player if the game is not running and players in game are <4
	do
		if (list_of_players.count < 4 and not(game_running))then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	add_player(user_id:GR11_MSG)
	do
		--if (list_of_players.is_empty) then
		--start_time
		--end

		--list_of_players.put_front(user_id.get_content)
	end

	list_of_player:LIST[STRING_8]
	do
		Result:=list_of_players
	end

	game_running:BOOLEAN
	do

	end

	register_observer(observer:GR11_OBSERVER)
	do
		--observer_model:=observer
	end

	get_controller_of_player(user_id:GR11_MSG_TO_LOGIC):GR11_CONTROLLER
	do
		--controller:=get_controller(user_id.get_content)
		--Result:=controller
	end
end
