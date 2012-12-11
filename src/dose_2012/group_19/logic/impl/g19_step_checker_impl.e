class
	G19_STEP_CHECKER_IMPL

inherit
	G19_STEP_CHECKER

create
	make

feature

	make
		do

		end

	is_step_valid(map: G19_READONLY_MAP; player: G19_PLAYER_INFO; step: G19_STEP): BOOLEAN
		do
			result := true
		end


end
