
class
	G10_CRSN_SPECIAL_DATA_MESSAGE
inherit
	G10_CRSN_DATA_MESSAGE

create	dflt_make_special_data_msg, make_special_data_msg
--------------------------------------
feature {NONE}-- attributes
-- (if we need more we will not create another class we will add more integers here)
	first_integer : INTEGER
	second_integer : INTEGER
--------------------------------------
feature {ANY}-- constructors

	dflt_make_special_data_msg
	do
		dflt_make_data_msg
		first_integer := -10	-- value to be considered as void for those integers, can be changed if needed later
		second_integer := -10
	end

	make_special_data_msg(an_id: STRING a_sender, a_receiver: G10_NET_INFO some_data: ANY a_first_integer, a_second_integer: INTEGER)
	require-- might miss the require here if we need for some reason to create the object with void attributes
		first_integer_not_negative: first_integer >= 0
		second_integer_not_negative: second_integer >= 0
	do
		make_data_msg(an_id, a_sender, a_receiver, some_data)
		first_integer := a_first_integer
		second_integer := a_second_integer
	end
--------------------------------------
feature {ANY}-- mutators

	set_first_integer(an_integer: INTEGER)
	require-- might miss the require here if we need for some reason to pass a negative arg
		arg_not_negative: an_integer >= 0
	do
		first_integer := an_integer

	ensure
		first : first_integer = an_integer
	end

	set_second_integer(an_integer: INTEGER)
	require-- might miss the require here if we need for some reason to pass a negative arg
		arg_not_negative: an_integer >= 0
	do
		second_integer := an_integer
	ensure
		second : second_integer = an_integer
	end
--------------------------------------
feature {ANY}-- accessors

	get_first_integer: INTEGER
	do
		Result := first_integer
	ensure
		return : Result = first_integer
	end

	get_second_integer: INTEGER
	do
		Result := second_integer
	ensure
		return : Result = second_integer
	end
--------------------------------------
end
