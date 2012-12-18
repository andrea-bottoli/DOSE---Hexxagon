note
	description:"Data message used only to transfer a complete object throw the net"
	extra_attributes:"data: ANY"
	author: "Angel Kyriako"
	date: "9/12/2012"
	revision: "2.0"

class
	G10_CRSN_DATA_MESSAGE
inherit
	G10_CRSN_MESSAGE

create	dflt_make_data_msg, make_data_msg
--------------------------------------
feature {NONE}-- attributes

	data: ANY
--------------------------------------
feature {ANY}-- constructors

	dflt_make_data_msg
	do
		dflt_make_msg
		data := void
	end

	make_data_msg(an_id: STRING a_sender, a_receiver: G10_NET_INFO some_data: ANY)

	do
		make_msg(an_id, a_sender, a_receiver)
		data := some_data
	end
--------------------------------------
feature {ANY}-- mutators

	set_data(some_data: ANY)
	do
		data := some_data
	end
--------------------------------------
feature {ANY}-- accessors

	get_data: ANY
	do
		Result := data

	ensure
	 return : Result = data
	end
--------------------------------------
end
