note
	description: "Interface of logic sub-component"
	author: "Milano4"
	date: "5/11/2012"
	revision: "1.0"

deferred class
	GR11_LOGIC

feature --status report	

	can_add_player:BOOLEAN
	--asks if it is possible to add a new player to the game

	deferred

	 ensure
		Result implies list_of_player.count < 4
		list_of_player.count < 4 implies Result

	end

	list_of_player:LIST[STRING_8]
	--return the list of registered players' names
    deferred

	  ensure
	  	Result /= void

	end

	game_running : BOOLEAN
	--asks if the game is started
    deferred

	  ensure
		Result implies list_of_player.count < 4 and then list_of_player.count > 3

	end

feature --operation

	register_observer(observer:GR11_OBSERVER)
		--register an extern observer(the net subcomponent)
		--observer: the object that wants to observe the model
	 require observer /= void;
	deferred

	end

	add_player(user_id: GR11_MSG_TO_LOGIC)
		--if it is possible, it adds a new player to the game
		--user_id:identifier of the new player

	 require
	 	check_if_can_add_player : can_add_player
		check_if_msg_is_not_empty : user_id /= void
		check_if_msg_is_a_request : user_id.is_request
		user_id_is_not_a_player : not list_of_player.has(user_id.get_content);

	deferred

	 ensure
		list_of_player.count = old list_of_player.count + 1
		list_of_player.has(user_id.get_content);

	end

feature --query

	get_controller_of_player(user_id:GR11_MSG_TO_LOGIC):GR11_CONTROLLER
    --it returns the controller for a specific player
	--user_id: the player
	--Return: the controller for the player specified by user_id

	 require
		user_id_not_empty : user_id /= void
		user_id_valid : user_id.is_request and then list_of_player.has(user_id.get_content)
	deferred

	 ensure
	 	result_is_not_void : Result /= void
        user_id_not_cancelled : list_of_player.has(user_id.get_content);
    end


invariant
	if_game_running_cannot_add_player : game_running implies not can_add_player
	if_can_add_player_game_is_not_running : can_add_player implies not game_running
	cannot_play_with_less_than_three_players : list_of_player.count < 3 implies not game_running
	cannot_play_with_less_than_three_players : not game_running implies list_of_player.count < 3
	have_a_valid_number_of_player : list_of_player.count >= 0 and then list_of_player.count < 5

end
