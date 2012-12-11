note
	description: "This class serves just as a container for all the constants defined in the game"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CONSTANTS
inherit
	ANY
		redefine
			default_create
		end

create
	default_create

feature --constants
	game_states: CU_ENUM_GAME_STATES
	rooms: CU_ENUM_ROOMS
	suspects: CU_ENUM_SUSPECTS
	weapons: CU_ENUM_WEAPONS

feature {CU_GAME} --constructor
	default_create
		do
			create game_states
			create rooms
			create suspects
			create weapons
		end
end
