note
	description: "Summary description for {BS_NET_COMMANDLIST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_NET_COMMAND_LIST

feature -- Public

	command_getmove: INTEGER = 1 -- []

	command_updateplayerlist: INTEGER = 2 -- [player_list]

	command_startgame: INTEGER = 3 -- []

	command_playermakesmove: INTEGER = 4 -- [player, color, move]

	command_removetilefromplayer: INTEGER = 5 -- [player, color, tile]

	command_badmove: INTEGER = 6 -- [player, color]

	command_updatescores: INTEGER = 7 -- [scores]

	command_printlogmessage: INTEGER = 8 -- [message]

	command_setturn: INTEGER = 9 -- [player, color]

	command_announcevictory: INTEGER = 10 -- [player]

	command_closing: INTEGER = 11 -- []

		-- Command, player, color, message, tile, move, string

	valid_commands (): ARRAY [INTEGER]
		local
			i: INTEGER
		once
			create result.make_filled (0, 1, 11)
			from
				i := 1
			until
				i > 11
			loop
				result.at (i) := i
				i := i + 1
			end
		end

end
