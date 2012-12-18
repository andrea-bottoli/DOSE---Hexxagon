note
	description: "It stands for the generic observer of the model"
	author: "Grup11"
	date: "12/11/2012"
	revision: "1.0"

deferred class
	GR11_OBSERVER

feature --operation

	send_update_msg(msg:GR11_MSG)
	--permits the model(LOGIC) to update the view (NET + GUI)
	--msg:contains the update
	require
		the_update_message_is_not_empy:msg /= Void
	deferred
	end

end
