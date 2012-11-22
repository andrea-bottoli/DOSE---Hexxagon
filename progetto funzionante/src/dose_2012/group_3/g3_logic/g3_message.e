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
		do

		end

	make_with_parameters (receiver: G3_PLAYER_ID; sender : G3_PLAYER_ID; type_ : INTEGER)
		require
			valid_arg: receiver /= Void and sender /= Void
			valid_id: receiver.id >= 1 and receiver.id <= 4 and sender.id >= 1 and sender.id <= 4
		do

		end

feature

	set_sender_id (id : G3_PLAYER_ID)
		require
			valid_arg: id /= Void
		do

		ensure
			sender_id /= Void
		end

	set_receiver_id (id : G3_PLAYER_ID)
		require
			valid_arg: id /= Void
		do

		ensure
			receiver_id /= Void
		end

	set_model(model_ : G3_MODEL)
		require
			valid_arg: model_ /= Void
		do

		ensure
			model /= Void
		end

	set_optional(optional_ : ANY)
		require
			valid_arg: optional_ /= Void
		do

		ensure
			optional /= Void
		end

	set_type(type_ : INTEGER)
		do
		end

feature

	sender_id : G3_PLAYER_ID

	receiver_id : G3_PLAYER_ID

	type : INTEGER

	model : G3_MODEL

	optional : ANY

end
