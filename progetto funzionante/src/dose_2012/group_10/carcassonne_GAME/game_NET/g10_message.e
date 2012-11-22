note
	description: "Summary description for {G10_MESSAGE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G10_MESSAGE

create
	dflt_make, make

feature {NONE} --attributes
	message_action 	: STRING
	message_data 	: ANY
	terrain_height	: INTEGER
	terrain_width	: INTEGER

	tile_box		: INTEGER


feature {NONE}
	dflt_make
	do

	end

	make (a_msg : STRING data_msg : ANY terrain_i, terrain_j, part_of_tile : INTEGER )
	do

	end

feature{ANY}

	get_message_action : STRING
	do

	end

	get_message_data : ANY
	do

	end

	get_terrain_height : INTEGER
	do

	end

	get_terrain_width : INTEGER
	do
	end

	get_tile_box : INTEGER
	do

	end

feature

	set_message_action(msg : STRING)
	require
		msg_empty : msg.is_empty
	do

	ensure
		msg_copy : message_action.same_string (msg)
	end

	set_message_data
	do

	end

	set_terrain_height(hgt : INTEGER)
	do

	end

	set_terrain_width
	do

	end

	set_tile_box
	do

	end

end
