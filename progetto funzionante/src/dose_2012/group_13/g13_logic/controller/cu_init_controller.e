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

feature --constructor
	make
		do
		ensure
			--gui and net are initialized. Logic should be initialized after we receive from GUI the type of the logic
		end

feature -- Actions
	start (a_mode: STRING)
		-- depending on the mode game, it enables the corresponding logic component
	require
		mode_not_void: a_mode/=void
		mode_not_empty: not a_mode.is_equal ("")
		mode_master_or_slave: ((a_mode.is_equal ("master")) or (a_mode.is_equal ("slave")))
	do
	ensure
	end

end
