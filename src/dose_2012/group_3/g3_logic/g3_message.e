note
	description: "Summary description for {G3_MESSAGE}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$7 Nov. 2012$"
	revision: "$0.1$"

class
	G3_MESSAGE

create
	make, make_with_parameters

feature{NONE}

	make
			-- construct new message of connection kind with idem ids sender and receiver
		local
			new_player_id : G3_PLAYER_ID
		do
			create new_player_id.make
			sender_id := new_player_id
			receiver_id := new_player_id
			type := 0
		end

	make_with_parameters (receiver: G3_PLAYER_ID; sender : G3_PLAYER_ID)
			-- construct new message of connection kind with specified receiver and senders
		require
			valid_arg: receiver /= Void and sender /= Void
			valid_id: receiver.id >= -1 and receiver.id <= 4 and sender.id >= 0 and sender.id <= 4
		do
			set_receiver_id(receiver)
			set_sender_id(sender)
			type := 0
		end

feature{G3_CONTROLLER,EQA_TEST_SET}

	set_sender_id (id : G3_PLAYER_ID)
		require
			valid_arg: id /= Void
		do
			sender_id := id
		ensure
			sender_id /= Void
		end

	set_receiver_id (id : G3_PLAYER_ID)
		require
			valid_arg: id /= Void
		do
			receiver_id := id
		ensure
			receiver_id /= Void
		end

	set_type(type_ : INTEGER)
		require
			-- missing contract here
		do
			type := type_
		end

	set_model(model_ : G3_MODEL)
		require
			valid_arg: model_ /= Void
		do
			model := model_
		ensure
			model /= Void
		end

	set_optional(optional_ : ANY)
		require
			valid_arg: optional_ /= Void
		do
			optional := optional_
		ensure
			optional /= Void
		end

	set_as_connection_msg
		do
			type := 0
		ensure
			is_connection_msg
		end

	set_as_update_msg
		do
			type := 1
		ensure
			is_update_msg
		end

	set_as_invoke_msg
		do
			type := 2
		ensure
			is_invoke_msg
		end

	set_as_notify_msg
		do
			type := 3
		ensure
			is_invoke_msg
		end

	is_connection_msg : BOOLEAN
		do
			Result := (type = 0)
		end

	is_update_msg : BOOLEAN
		do
			Result := (type = 1)
		end

	is_invoke_msg : BOOLEAN
		do
			Result := (type = 2)
		end

	is_notify_msg : BOOLEAN
		do
			Result := (type = 3)
		end


feature{G3_CONTROLLER,G3_INETWORK,EQA_TEST_SET}

	sender_id : G3_PLAYER_ID

	receiver_id : G3_PLAYER_ID

feature{G3_CONTROLLER}

		-- 0 connection message
		-- 1 update message
		-- 2 invoque message
		-- 3 notify message
	type : INTEGER

	model : G3_MODEL

	optional : ANY

end
