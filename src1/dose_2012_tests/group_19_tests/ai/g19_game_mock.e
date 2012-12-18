class 
	G19_GAME_MOCK

inherit 
	GAME

create 
	make

feature{NONE}

	current_map: G19_MAP
	current_avaible_actions_count: TABLE[INTEGER, STRING]

feature

	make(map: G19_MAP; avaible_actions_count: TABLE[INTEGER, STRING])
		do
			current_map := map
			current_avaible_actions_count := avaible_actions_count
		end
		
	start() 
		do
			
		end

	get_avaible_actions_count(): TABLE[INTEGER, STRING]
		do
			result := current_avaible_actions_count
		end

	get_players(): TWO_WAY_SORTED_SET[G19_PLAYER_INFO]
		local 
			set: TWO_WAY_SORTED_SET[G19_PLAYER_INFO]
			pi1: G19_PLAYER_INFO_MOCK
			pi2: G19_PLAYER_INFO_MOCK
			pi3: G19_PLAYER_INFO_MOCK
			pi4: G19_PLAYER_INFO_MOCK
		do
			create pi1.make("1", 1)
			create pi2.make("2", 2)
			create pi3.make("3", 3)
			create pi4.make("4", 4)

			create set.make(16)

			set.put(pi1)
			set.put(pi2)
			set.put(pi3)
			set.put(pi4)

			result := table
		end

	get_map(): G19_MAP
		do
			result := current_map
		end

end