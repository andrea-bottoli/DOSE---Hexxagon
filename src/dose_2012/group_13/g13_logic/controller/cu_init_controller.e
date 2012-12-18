note
	description: "This class is responsible for initializing the game parts. Logic, GUI and NET"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_INIT_CONTROLLER

create
	make

feature -- Access
	logic: CU_LOGIC
	--we miss here attributes for net and gui
--	gui: CU_MAIN_LOBBY
	gui: CU_INTERFACE
feature --constructor
	make(mainUI:MAIN_WINDOW)
		require
			ok_window: mainUI /= void
		do
--			create gui.make_window (mainUI, Current)
--			gui.show
			create gui
			gui.initialize (Current, mainUI)

		ensure
			--gui is initialized. Logic and net should be initialized after we receive from GUI the type of game
		end

feature -- Actions
	start (a_mode: STRING)
		-- depending on the mode game, it enables the corresponding logic component
	require
		mode_not_void: a_mode/=void
		mode_not_empty: not a_mode.is_equal ("")
		mode_master_or_slave: ((a_mode.is_equal ("master")) or (a_mode.is_equal ("slave")))
	do
		if a_mode.is_equal("master") then
			logic:=create {CU_MASTER_LOGIC}.make
		else
			logic:=create {CU_SLAVE_LOGIC}.make
		end
	ensure
		valid_logic: logic /= void
	end

end
