note
	description: "Summary description for {BS_TEST_SET_PLAYER}."
	author: "Mathias Bottero"
	date: "$Date$"
	revision: "$Revision$"

class
	BS_TEST_SET_PLAYER

inherit
	EQA_TEST_SET

feature -- Test routines
	BS_TEST_SET_PLAYER_MAKE_0
		note
			testing: "user/BS"
		local
			player: BS_PLAYER
			id_player: INTEGER
		do
			id_player:= 1
			create player.make(id_player, 1, 0)
			assert("The player has been created successfully.",player.get_number = id_player)
		end

	BS_TEST_SET_PLAYER_MAKE_1
		note
			testing: "user/BS"
		local
			player : BS_PLAYER
			rescued: BOOLEAN
		do
			if (not rescued) then
				create player.make (0, 1, 0)
			end
			assert ("Make doesn't create an invalid number of player.", rescued)
			rescue
				if (not rescued) then
					rescued := True
					retry
				end
		end

end
