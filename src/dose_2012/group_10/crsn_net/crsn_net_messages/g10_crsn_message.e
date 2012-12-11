note
	description: "Main message contains sender, receiver and id thata are needed by every message"
	author: "Angel Kyriako"
	date: "9/12/2012"
	revision: "2.0"

class
	G10_CRSN_MESSAGE

create dflt_make_msg, make_msg
--------------------------------------
feature {NONE}-- attributes

	id: STRING
	sender: G10_NET_PLAYER_INFO
	receiver: G10_NET_PLAYER_INFO
--------------------------------------
feature {ANY}-- constructors

	dflt_make_msg
	do
		id := void
		sender := void
		receiver := void
	end

	make_msg(an_id: STRING a_sender, a_receiver: G10_NET_PLAYER_INFO)
	require-- might miss the require here if we need for some reason to create the object with void attributes
		id_not_null: an_id /= void
		sender_not_null: a_sender /= void
		receiver_not_null: a_receiver /= void
	do
		id := an_id
		sender := a_sender
		receiver := a_receiver
	end
--------------------------------------
feature {ANY}-- mutators

	set_id(an_id: STRING)
	require
		arg_not_void: an_id /= void
	do
		id := an_id
	end

	set_sender(a_sender: G10_NET_PLAYER_INFO)
	require
		arg_not_void: a_sender /= void
	do
		sender := a_sender;
	end

	set_receiver(a_receiver: G10_NET_PLAYER_INFO)
	require
		arg_not_void: a_receiver /= void
	do
		receiver := a_receiver;
	end
--------------------------------------
feature {ANY}-- accessors

	get_id: STRING
	do
		Result := id;
	end

	get_sender: G10_NET_PLAYER_INFO
	do
		Result := sender;
	end

	get_receiver: G10_NET_PLAYER_INFO
	do
		Result := receiver
	end
--------------------------------------	
end
