note
	description: "Summary description for {BS_NET_COMMAND}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_COMMAND

inherit {NONE}
	BS_NET_COMMAND_LIST
	export {none} all
	end

	BS_CONSTANTS
	export {none} all
	end


create
	make

feature -- Public

	command: INTEGER assign set_command

	player_id: INTEGER assign set_player_id

	color_id: INTEGER assign set_color_id

	move: BS_MOVE assign set_move

	tile: BS_TILE assign set_tile

	player_list: ARRAY [TUPLE [INTEGER, STRING, INTEGER]] assign set_player_list -- ID, name, type

	score_list: ARRAY [TUPLE [INTEGER, STRING, INTEGER]] assign set_score_list -- ID, name, score

	validation_enabled: BOOLEAN assign set_validation_enabled -- The class invariant is only check if this is true

	message: STRING assign set_message

	make (pmt_command: INTEGER)
		require
			valid_command_type: valid_commands.has (pmt_command)
		do
			command := pmt_command
		ensure
			command_assigned: command = pmt_command
		end

feature {NONE} -- Setters

	set_command (pmt: INTEGER)
		do
			command := pmt
		end

	set_player_id (pmt: INTEGER)
		do
			player_id := pmt
		end

	set_color_id (pmt: INTEGER)
		do
			color_id := pmt
		end

	set_message (pmt: STRING)
		do
			message := pmt
		end

	set_move (pmt: BS_MOVE)
		do
			move := pmt
		end

	set_tile (pmt: BS_TILE)
		do
			tile := pmt
		end

	set_player_list (pmt: ARRAY [TUPLE [INTEGER, STRING, INTEGER]])
		do
			player_list := pmt
		end

	set_score_list (pmt: ARRAY [TUPLE [INTEGER, STRING, INTEGER]])
		do
			score_list := pmt
		end

	set_validation_enabled (pmt: BOOLEAN)
		do
			validation_enabled := pmt
		end

feature {NONE} -- Private

	is_valid_command (pmt_command: INTEGER): BOOLEAN
		do
			result := true
			result := result and valid_commands.has (pmt_command)
			inspect pmt_command
			when command_getmove then
					-- No parameters required
			when command_updateplayerlist then
				result := result and (player_list /= void)
			when command_startgame then
					-- No parameters required
			when command_playermakesmove then
				result := result and (is_valid_player_range (player_id) and is_valid_color (color_id) and move /= void)
			when command_removetilefromplayer then
				result := result and (is_valid_player_range (player_id) and is_valid_color (color_id) and tile /= void)
			when command_badmove then
				result := result and (is_valid_player_range (player_id) and is_valid_color (color_id))
			when command_updatescores then
				result := result and (score_list /= void)
			when command_printlogmessage then
				result := result and (message /= void)
			when command_setturn then
				result := result and (is_valid_player_range (player_id) and is_valid_color (color_id))
			when command_announcevictory then
				result := result and (is_valid_player_range (player_id) and score_list /= void)
			when command_closing then
					-- No parameters required
			end
		end

invariant
	valid_command: not validation_enabled or else is_valid_command (command)

end
