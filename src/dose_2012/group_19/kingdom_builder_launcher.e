note
	description: "KINGDOM BUILDER launcher class."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	KINGDOM_BUILDER_LAUNCHER

inherit
	LAUNCHER

feature -- Implemenation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			gb: G19_GAME_BUILDER_IMPL
			player: G19_CONSOLE_PLAYER
			i, j: INTEGER
		do
			create gb.make()

			from
				i := 1
			until
				i > 4
			loop
				create player.make()

				j := gb.add_player(player)

				i := i + 1
			end

			gb.build().start();
		end

end
