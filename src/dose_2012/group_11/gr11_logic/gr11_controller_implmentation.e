note
	description: "Controller that receives a message and handle the model accordingly"
	author: "Milano4"
	date: "5/11/2012"
	revision: "1.0"

class
	GR11_CONTROLLER_IMPLEMENTATION

inherit
	GR11_CONTROLLER

create
	make

feature --creation
	make(player_id: GR11_USER_ID; model_to_play_on: GR11_MODEL)
	do
		player := player_id
		model := model_to_play_on
		player_is_active := TRUE
	end

feature --components
	model: GR11_MODEL
	player: GR11_USER_ID

feature --operation

	recv_message(m :GR11_MSG)
		--take a message and call model's methods accordingly
		--m: input message
		local
			msg_to_logic: GR11_MSG_TO_LOGIC
		do
			create msg_to_logic.make(m)
			msg_to_logic.action.call( [player, model] )
		end

	leave_game
		--communicates that the player associated to this controller wants to leave the game
		do
			player_is_active := FALSE;
		end

invariant

 	if_player_active_name_is_not_empty:player_is_active implies player /= Void

end
