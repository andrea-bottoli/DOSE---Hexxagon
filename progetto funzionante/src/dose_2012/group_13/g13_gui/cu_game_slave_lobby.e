note
	description: "Summary description for {CU_SLAVE_LOBBY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_GAME_SLAVE_LOBBY

inherit
	CU_WINDOWS

feature
	make
		-- Generates the window to the slave
		do
		end

feature	--Implementation/ Constants

	switch_char_button: EV_BUTTON
            -- "Switch character" button
	leave_game_button: EV_BUTTON
			-- "Leave Game" button

end
